<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<title>Dots</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<%
 	String userID = null;
 	if(session.getAttribute("userID") != null) {
 		userID = (String) session.getAttribute("userID");
 	}
 	%>
<div class="wrapper row1">
  <header id="header" class="hoc clear">
    <section> 
      <!-- ################################################################################################ -->
      <div>
        <h1 id="logo"><a href="main.jsp">Dots</a></h1>
      </div>
      <!-- ################################################################################################ -->
    </section>
    <nav id="mainav"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
        <li class="active"><a href="index.jsp">Home</a></li>
        <li><a class="drop" href="#">작심 일주일 포도알</a>
          <ul>
            <li><a href="pages/gallery.html">익는 중</a></li>
            <li><a href="pages/full-width.html">포도 밭</a></li>
          </ul>
        </li>
        <li><a class="drop" href="#">데일리 루틴</a>
          <ul>
            <li><a class="drop" href="#">타임테이블</a>
              <ul>
                <li><a href="#">월</a></li>
                <li><a href="#">화</a></li>
                <li><a href="#">수</a></li>
                <li><a href="#">목</a></li>
                <li><a href="#">금</a></li>
                <li><a href="#">토</a></li>
                <li><a href="#">일</a></li>
              </ul>
            </li>
          </ul>
        </li>
        <li><a href="#">네잎클로버</a></li>
        <li><a class="drop" href="#">버킷리스트</a>
       		 <ul>
                <li><a href="#">인생</a></li>
                <li><a href="#">년별</a></li>
                <li><a href="#">월별</a></li>
        	 </ul>
        </li>
        <li><a class="drop" href="#">오늘의 기록</a>
       		 <ul>
                <li><a href="#">눈을 뜨면</a></li>
                <li><a href="#">잠들기 전</a></li>
                <li><a href="#">눈물의 항아리</a></li>
        	 </ul>
        </li>
      </ul>
      <!-- ################################################################################################ -->
    </nav>
  </header>
</div>
 
<!-- ################################################################################################ -->
<div class="bgded" >
  <div id="pageintro" class="hoc clear"> 
 <!-- ################################################################################################ -->
 
    <article>
    <div class="container">
	<div class="col-lg-4"></div>
	<div class="col-lg-4">
	<div class="jumbotron" style="padding-top:20px;">
	<form method="post" action="loginAction.jsp">
	<h3 style = "text-align:center;">Login</h3>
	<div class= "form-group">
	<input type = "text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
	</div>
	<div class= "form-group">
	<input type = "password" class="form-control" placeholder="비밀번호" name="userPW" maxlength="20">
	</div>
	<input type = "submit" class="btn btn-primary form-control" value="로그인">
	</form>
	</div>
      
      <footer>
    <%
	if(userID == null){
	%>
    
      <%
	}else{
	%>
	<ul class="nav navbar-nav navbar-right">
	<li class="dropdown">
	<a href = "#" >회원관리<span></span></a>
	<li><a href="logoutAction.jsp">로그아웃</a></li>
	</ul></li></ul>
	<%
		}
	%>	
      </footer>
    </article>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="https://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
<script src ="https://code.jquery.com/jquery-3.1.1min/js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>