`
(function(){var t,r,e,n,o,a,c,h,i,u,s,f,l,d,p,A,g={}.hasOwnProperty,C=function(t,r){function e(){this.constructor=t}for(var n in r)g.call(r,n)&&(t[n]=r[n]);return e.prototype=r.prototype,t.prototype=new e,t.__super__=r.prototype,t};for(h=String.fromCharCode,t="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",e=/[^a-z\d\+\=\/]/gi,r={},d=t.split(""),i=f=0,l=d.length;l>f;i=++f)o=d[i],r[o]=i;n=function(t){function r(t){t?this.message='"'+t+'" is an invalid Base64 character':this.message="Invalid bytes sequence"}return C(r,t),r.prototype.name="InvalidSequence",r}(Error),c=null!=(p=this.btoa)?p:this.btoa=function(r){var e,a,c,h,u,s,f,l,d,p,A,g;for(d="",i=0;i<r.length;){if(e=r.charCodeAt(i++),a=r.charCodeAt(i++),c=r.charCodeAt(i++),l=Math.max(e,a,c)>255)throw new n(l);for(h=e>>2,u=(3&e)<<4|a>>4,s=(15&a)<<2|c>>6,f=63&c,isNaN(a)?s=f=64:isNaN(c)&&(f=64),g=[h,u,s,f],p=0,A=g.length;A>p;p++)o=g[p],d+=t.charAt(o)}return d},a=null!=(A=this.atob)?A:this.atob=function(t){var e,o,a,c,u,s,f,l,d;if(d="",i=0,l=t.length,l%4)throw new n;for(;l>i;)c=r[t.charAt(i++)],u=r[t.charAt(i++)],s=r[t.charAt(i++)],f=r[t.charAt(i++)],e=c<<2|u>>4,o=(15&u)<<4|s>>2,a=(3&s)<<6|f,d+=h(e),64!==s&&(d+=h(o)),64!==f&&(d+=h(a));return d},s=function(t){var r,e,n,o;for(t=t.replace(/\r\n/g,"\n"),e="",i=n=0,o=t.length-1;o>=0?o>=n:n>=o;i=o>=0?++n:--n)r=t.charCodeAt(i),128>r?e+=h(r):r>127&&2048>r?(e+=h(r>>6|192),e+=h(63&r|128)):(e+=h(r>>12|224),e+=h(r>>6&63|128),e+=h(63&r|128));return e},u=function(t){var r,e,n,o,a;for(a="",i=r=e=n=0;i<t.length;)r=t.charCodeAt(i),128>r?(a+=h(r),i++):r>191&&224>r?(n=t.charCodeAt(i+1),a+=h((31&r)<<6|63&n),i+=2):(n=t.charCodeAt(i+1),o=t.charCodeAt(i+2),a+=h((15&r)<<12|(63&n)<<6|63&o),i+=3);return a},this.Base64={encode64:function(t){return c(s(t))},decode64:function(t){return u(a(t.replace(e,"")))}}}).call(this);
`
shuffle = (a) ->
    i = a.length
    while --i > 0
        j = ~~(Math.random() * (i + 1))
        t = a[j]
        a[j] = a[i]
        a[i] = t
    a

data = shuffle [
	{"type":"A1", "question":"상대방이 내 말에 고분고분 따를 때 기분이 좋다", "score":1},
	{"type":"A1", "question":"상대방을 압도하고 억압할 때 쾌감을 느낀다", "score":2},
	{"type":"A1", "question":"상대방의 약점을 잡아서 괴롭히고 노리개로 삼고 싶다", "score":3},
	{"type":"B1", "question":"나는 수동적인 성향이며 상대방이 하자는 대로 하는 것이 좋다", "score":1},
	{"type":"B1", "question":"상대방의 말에 복종할 때 기분이 좋다", "score":2},
	{"type":"B1", "question":"스스로는 도저히 할 수 없을 것 같은 일도, 상대방이 명령한다면 힘겹지만 해볼 것이다", "score":3},
	{"type":"A2", "question":"상대방의 엉덩이 등 신체 일부를 손바닥으로 가볍게 때리는 게 기분 좋다", "score":1},
	{"type":"A2", "question":"상대방의 몸에 나로 인해 상처가 난 걸 보면 흥분 된다", "score":2},
	{"type":"A2", "question":"상대방을 기구 등으로 때리며 상대방이 울며 고통스러워 하는 모습에 흥분된다", "score":3},
	{"type":"B2", "question":"상대방이 내 엉덩이를 손바닥으로 살짝 때려주면 기분이 좋다", "score":1},
	{"type":"B2", "question":"상대방에게 종아리, 발바닥 등을 회초리로 맞으면 아프지만 흥분된다", "score":2},
	{"type":"B2", "question":"상대방이 나에게 견디지 못할 정도로 심한 육체적인 고통을 준다면, 괴롭지만 흥분될 것이다", "score":3},
	{"type":"C1", "question":"상대방이 소변 혹은 대변을 보는 모습을 보면 기분이 좋다", "score":1},
	{"type":"C1", "question":"섹스 도중 상대방이 내 바로 앞에서 소변 혹은 대변을 보면 흥분이 된다", "score":2},
	{"type":"C1", "question":"상대방의 소변 혹은 대변을 만지거나 먹고 싶다", "score":3},
	{"type":"B3", "question":"나는 질투를 하는 편이지만, 한편으로는 그런 상황에 묘한 끌림이 있다", "score":1},
	{"type":"B3", "question":"내 연인 혹은 배우자가 다른 사람과 섹스를 하는 상상을 하면 흥분된다", "score":2},
	{"type":"B3", "question":"내 연인 혹은 배우자가 다른 사람과 섹스를 하게 하고 나는 그걸 관전하고 싶다", "score":3},
	{"type":"A3", "question":"내가 섹스를 하려는 상대가 사실은 다른 연인이 있거나 결혼을 한 상태여도 상관없다", "score":1},
	{"type":"A3", "question":"내가 지금 섹스를 하려는 상대가 사실은 다른 연인이 있거나 결혼을 한 상태면 더 흥분될 것 같다", "score":2},
	{"type":"A3", "question":"내가 지금 섹스를 하려는 상대의 원래 연인 혹은 배우자가 관전을 하면 흥분될 것 같다", "score":3},
	{"type":"B4", "question":"밀폐된 공간(ex> 엘레베이터)에 나를 제외하고 전부 이성들로 가득차 있으면 흥분된다", "score":1},
	{"type":"B4", "question":"3명 혹은 그 이상의 다수에게 범해지는 상상을 하면 흥분된다", "score":2},
	{"type":"B4", "question":"3명 혹은 그 이상의 다수에게 완전히 제압 당한 채 강제로 범해지고 싶다", "score":3},
	{"type":"A4", "question":"나와 동성이었다가 성전환을 한, 혹은 호르몬제를 투여중인 사람을 보면 흥분이 된다", "score":1},
	{"type":"A4", "question":"나와 동성이었다가 성전환을 한, 혹은 호르몬제를 투여중인 사람의 사진이나 영상을 찾아봤거나 찾아보고 싶다", "score":2},
	{"type":"A4", "question":"나와 동성이었다가 성전환을 한, 혹은 호르몬제를 투여중인 사람과 섹스를 해보고 싶다", "score":3},
	{"type":"B5", "question":"내가 다른 성이 된다면 어떨까 생각을 해본 적이 있다", "score":1},
	{"type":"B5", "question":"내가 성전환을 하는 상상을 하면 흥분된다", "score":2},
	{"type":"B5", "question":"내가 성전환을 한 후에 섹스를 하는 상상을 하면 흥분되고 좋다", "score":3},
	{"type":"A5", "question":"나와 동성인 사람이 이성의 옷을 입으면 야할 것 같다", "score":1},
	{"type":"A5", "question":"나와 동성인 사람이 이성의 옷을 입은 사진이나 영상을 찾아봤거나 찾아보고 싶다", "score":2},
	{"type":"A5", "question":"나와 동성인 사람에게 이성의 옷을 입히고서 섹스를 하고 싶다", "score":3},
	{"type":"B6", "question":"이성의 옷을 입는 것을 상상해본 적이 있다", "score":1},
	{"type":"B6", "question":"이성의 옷을 입어 봤거나 입어보고 싶고, 그런 생각을 하면 흥분된다", "score":2},
	{"type":"B6", "question":"이성의 옷을 입은 채 섹스를 하고 싶다", "score":3},
	{"type":"C2", "question":"초등학교, 혹은 그 이하의 어린 아이들를 보면 야한 생각이 든다", "score":1},
	{"type":"C2", "question":"법이 허용한다면 초등학교, 혹은 그 이하의 어린 아이에 관한 야한 사진이나 영상을 보고 싶다", "score":2},
	{"type":"C2", "question":"법이 허용한다면 초등학교, 혹은 그 이하의 어린 아이와 섹스를 하고 싶다", "score":3},
	{"type":"C3", "question":"중,고등학교 아이들을 보면 야한 생각이 든다", "score":1},
	{"type":"C3", "question":"법이 허용한다면 중,고등학교 아이들에 관한 야한 사진이나 영상을 보고 싶다", "score":2},
	{"type":"C3", "question":"법이 허용한다면 중,고등학교 아이와 섹스를 하고 싶다", "score":3},
	{"type":"A6", "question":"지하철이나 버스 등 붐비는 곳에서 다른 이의 몸을 만지고 싶다는 생각을 해본 적 있다", "score":1},
	{"type":"A6", "question":"지하철이나 버스 등 붐비는 곳에서 다른 이의 몸을 만지는 것과 관련된 영상을 본 적 있고 좋아한다", "score":2},
	{"type":"A6", "question":"법이 허용한다면 지하철이나 버스 등 붐비는 곳에서 다른 이의 몸을 만지거나 내 성기를 문질러 보고 싶다", "score":3},
	{"type":"B7", "question":"지하철이나 버스 등 붐비는 곳에서 누가 내 몸을 힐끔 거리면 기분이 좋다", "score":1},
	{"type":"B7", "question":"지하철이나 버스 등 붐비는 곳에서 누가 내 몸을 만지는 상상을 해본 적 있다", "score":2},
	{"type":"B7", "question":"지하철이나 버스 등 붐비는 곳에서 누가 내 몸을 만지거나 성기를 내 몸에 문질러 줬으면 하는 마음을 자주 갖는다", "score":3},
	{"type":"C5", "question":"인터넷 등에서 동성인 사람의 야한 사진을 보고 흥분된 적이 있다", "score":1},
	{"type":"C5", "question":"동성인 사람과 섹스를 하는 상상을 해본 적이 있고, 그 상상으로 흥분했었다", "score":2},
	{"type":"C5", "question":"경우에 따라 동성인 사람과 섹스를 할 의향이 있다", "score":3},
	{"type":"C6", "question":"성기와 직접적인 관련이 없는 신체 일부 혹은 옷, 스타킹 등에 관심이 있고 그런 것들에 흥분된다", "score":1},
	{"type":"C6", "question":"성기와 직접적인 관련이 없는 신체 일부 혹은 옷, 스타킹 등에 관한 영상이나 사진을 찾아보는 편이다", "score":2},
	{"type":"C6", "question":"남이 입던 속옷, 스타킹, 옷 등을 수집하고 있거나 그러고 싶다", "score":3},
	{"type":"A7", "question":"전화로 낯선 이에게 야한 말을 건네면 흥분될 것 같다", "score":1},
	{"type":"A7", "question":"전화로 낯선 이에게 야한 말을 하면서 흥분하는 경험을 몇번 해봤다", "score":2},
	{"type":"A7", "question":"전화로 낯선 이와 성적인 게 아닌 일상적인 대화를 나눠도 흥분될 것 같다", "score":3},
	{"type":"B8", "question":"목소리에 약하다", "score":1},
	{"type":"B8", "question":"낯선이의 목소리로 야한 이야기를 들으면 흥분될 것 같다", "score":2},
	{"type":"B8", "question":"전화로 낯선 이에게 야한 이야기를 들으면서 자위를 해봤거나 그런 상상을 하며 자위를 해봤다", "score":3},
	{"type":"C7", "question":"내 일상적인 사진을 SNS 에 올렸을 때 남들이 좋아요를 눌러주는 것에 집착하는 편이다", "score":1},
	{"type":"C7", "question":"내 몸 사진을 인터넷 상에 올려본 적 있거나, 올렸을 때 어떤 반응이 있을지 궁금하거나, 해 본 적 있다", "score":2},
	{"type":"C7", "question":"속옷을 입지 않은 상태로 길거리를 돌아다니며 흥분을 느껴봤거나, 해보고 싶다", "score":3},
	{"type":"C8", "question":"나는 옆집에서 들리는 선명한 섹스의 소리만으로도 충분히 자위할 수 있다", "score":1},
	{"type":"C8", "question":"다른 이들의 섹스를 바로 옆에서 혹은 약간 숨어서 관전하고 싶다는 생각을 해봤다", "score":2},
	{"type":"C8", "question":"법이 허용한다면 모텔에 몰래 카메라를 설치하고 그걸 감상하고 싶다", "score":3},
	{"type":"C9", "question":"지적인 사람이 섹시하게 느껴진다", "score":1},
	{"type":"C9", "question":"섹스를 하는데 상대방이 무식한 이야기를 하면 섹스를 그만두고 싶어진다", "score":2},
	{"type":"C9", "question":"상대방과 대화를 하는데, 지적으로 느껴지는 말을 들으면 섹스하고 싶어 진다", "score":3},
	{"type":"C10", "question":"공공장소에서 애무를 해본 적 있다", "score":1},
	{"type":"C10", "question":"공공장소 중 밀폐된 공간(ex> 화장실, 강의실 등)에서 섹스를 해본 적 있다", "score":2},
	{"type":"C10", "question":"공공장소 중 개방된 공간(ex> 공원, 산 등)에서 섹스를 해본 적 있다", "score":3},
	{"type":"C11", "question":"섹스를 할 때 나와 같은 성을 가진 사람이 한 명이 더 끼면 괜찮을 것 같다", "score":1},
	{"type":"C11", "question":"섹스를 할 때 나와 같은 성을 가진 사람 한 명과 상대방을 같이 애무하는 상상을 해봤다", "score":2},
	{"type":"C11", "question":"섹스를 할 때 나와 같은 성을 가진 사람 한 명을 껴서 셋이 해봤거나, 그렇게 하는 상상으로 자위를 해봤다", "score":3},
	{"type":"C12", "question":"섹스를 할 때 이성이 두 명이 있으면 괜찮을 것 같다", "score":1},
	{"type":"C12", "question":"섹스를 할 때 두 명의 이성이 나를 애무해주는 상상을 해봤다", "score":2},
	{"type":"C12", "question":"섹스를 할 때 두 명의 이성과 함께 셋이 해봤거나, 그렇게 하는 상상으로 자위를 해봤다", "score":3}
	{"type": "B9", "question": "애널에 무언가를 삽입하고 자위를 해봤거나, 혹은 그런 상상을 해 봤다", "score": 1},
	{"type": "B9", "question": "성관계 중 상대방의 성기, 혹은 상대방에 의해 무언가가 내 애널에 삽입된 적이 있다", "score": 2},
	{"type": "B9", "question": "애널에 무언가를 삽입한 채로 외출을 해본 적 있다", "score": 3}
]


types = {
  "B2": "M",
  "A2": "S",
  "B4": "갱뱅 (3명 혹은 그 이상의 단체에게 당함)",
  "C10": "공공 장소에서의 성행위에 흥분을 느낌 (도서관, 공원, 공중 화장실 등)",
  "B7": "공공장소에서 마찰을 당하며 흥분을 느낌",
  "A6": "공공장소에서 마찰을 하며 흥분을 느낌",
  "B3": "네토라레",
  "A3": "네토리",
  "C7": "노출을 하며 흥분을 느낌",
  "A1": "돔",
  "C5": "동성에게 흥분을 느낌",
  "C1": "배설물에 흥분을 느낌",
  "B1": "섭 (수치)",
  "B5": "성전환하는 상상을 하며 흥분을 느낌",
  "A4": "성전환한 사람에게 흥분을 느낌",
  "C8": "성행위를 몰래 지켜보며 흥분을 느낌",
  "C2": "어린 아이에 흥분을 느낌",
  "B6": "이성의 옷을 입거나 입는 상상을 하며 흥분을 느낌",
  "A5": "이성의 옷을 입은 사람에게 흥분을 느낌",
  "B8": "전화를 통해 외설적인 말을 들으며 흥분을 느낌",
  "A7": "전화를 통해 외설적인 말을 하며 흥분을 느낌",
  "C3": "중,고등학생에 흥분을 느낌",
  "C9": "지적인 사람에게 흥분을 느낌",
  "C6": "페티시",
  "C11": "쓰리섬(나 + 동성 + 이성)",
  "C12": "쓰리섬(나 + 이성 두 명)",
  "B9": "내 애널에 삽입"
}

currentIndex = -> $("#question_container").attr("data-current-index") - 0

showQuestion = ->
	number = "[" + (currentIndex() + 1) + " / " + data.length + "] "
	$(".question").text number + data[currentIndex()].question

parseResult = ->
	result = getParams()["result"]
	ver = getParams()["ver"]
	if !ver
		return JSON.parse(result)
	else if ver is "2"
		return JSON.parse(Base64.decode64(decodeURIComponent(result)))
	else if ver is "3"
		str = Base64.decode64(decodeURIComponent(result))
		h = {}
		for a in str.split("!")
			score = a.slice(0, 1) - 0
			type = a.slice(1)
			h[type] = score
		return h
	else if ver is "4"
		str = Base64.decode64(decodeURIComponent(result))
		h = {}
		window.gender = str.split("~")[0]
		str = str.split("~")[1]
		for a in str.split("!")
			score = a.slice(0, 1) - 0
			type = a.slice(1)
			h[type] = score
		return h

resultToParams = (ver, result, arr) ->
	if !ver
		return encodeURIComponent(JSON.stringify(result))
	else if ver is "2"
		return encodeURIComponent(Base64.encode64(JSON.stringify(result)))
	else if ver is "3"
		str = (a.score + a.type for a in arr).join("!")
		return encodeURIComponent(Base64.encode64(str))
	else if ver is "4"
		str = (a.score + a.type for a in arr).join("!")
		str = window.gender + "~" + str
		return encodeURIComponent(Base64.encode64(str))

showResult = (data) ->
	ver = "4"
	elem = $("#result_container")
	result = {}

	if data
		for res in data
			result[res.type] = 0 unless result[res.type]
			result[res.type] += (res.score * res.answer)
	else
		result = parseResult()
	for k, v of result
		if v <= 2
			delete result[k]

	arr = []
	for k, v of result
		arr.push {type: k, score: v}
	sorted = arr.sort (a, b) -> b.score - a.score

	if window.gender is "m"
		gender = "남성"
	else
		gender = "여성"
	elem.append "<p style='font-weight: bold'>성별 : #{gender}</p>"

	for item in sorted
		elem.append "<p><span class=type_name>#{types[item.type]}</span><span class='type_score score_#{item.score}'></span></p>"

	result_params = resultToParams(ver, result, arr)

	elem.append "<p>&nbsp;</p>"
	elem.append "<p>&nbsp;</p>"
	elem.append "<p>테스트 주소 : <a href='http://testforyou.github.io/sex/index.html' target='_blank'>http://testforyou.github.io/sex/index.html</a></p>"
	elem.append "<p>테스트 결과 공유 : <a href='http://testforyou.github.io/sex/index.html?result=#{result_params}&ver=#{ver}' target='_blank'>http://testforyou.github.io/sex/index.html?result=#{result_params}&ver=#{ver}</a></p>"
	elem.show()

getParams = ->
  query = window.location.search.substring(1)
  raw_vars = query.split("&")
  params = {}
  for v in raw_vars
    [key, val] = v.split("=")
    params[key] = decodeURIComponent(val)
  params

showNext = ->
	if currentIndex() >= data.length
		showResult(data)
	else
		showQuestion()

mark = (answer) ->
	data[currentIndex()].answer = answer
	$("#question_container").attr "data-current-index", currentIndex() + 1
	showNext()

goBack = ->
	if currentIndex() > 0
		$("#question_container").attr "data-current-index", currentIndex() - 1
		showNext()

$(document).ready ->
	if getParams()["result"]
		showResult()

	$(".start-btn button").click (e) ->
		if $(e.target).hasClass("btn-male")
			window.gender = "m"
		else
			window.gender = "f"
		$("#question_container").show()
		showNext()

	$(".btn_yes").click -> mark(1)
	$(".btn_no").click -> mark(0)

	$(".btn_back").click goBack