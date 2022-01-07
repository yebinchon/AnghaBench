; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_tei.c_TEIInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_tei.c_TEIInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }

@debug = common dso_local global i32* null, align 8
@TEI_STATE_COUNT = common dso_local global i8* null, align 8
@teifsmu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TEI_EVENT_COUNT = common dso_local global i8* null, align 8
@strTeiEvent = common dso_local global i8* null, align 8
@strTeiState = common dso_local global i8* null, align 8
@TeiFnListUser = common dso_local global i32 0, align 4
@teifsmn = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TeiFnListNet = common dso_local global i32 0, align 4
@DEACT_STATE_COUNT = common dso_local global i8* null, align 8
@deactfsm = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@DEACT_EVENT_COUNT = common dso_local global i8* null, align 8
@strDeactEvent = common dso_local global i8* null, align 8
@strDeactState = common dso_local global i8* null, align 8
@DeactFnList = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TEIInit(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  store i32* %5, i32** @debug, align 8
  %6 = load i8*, i8** @TEI_STATE_COUNT, align 8
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teifsmu, i32 0, i32 3), align 8
  %7 = load i8*, i8** @TEI_EVENT_COUNT, align 8
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teifsmu, i32 0, i32 2), align 8
  %8 = load i8*, i8** @strTeiEvent, align 8
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teifsmu, i32 0, i32 1), align 8
  %9 = load i8*, i8** @strTeiState, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teifsmu, i32 0, i32 0), align 8
  %10 = load i32, i32* @TeiFnListUser, align 4
  %11 = load i32, i32* @TeiFnListUser, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = call i32 @mISDN_FsmNew(%struct.TYPE_6__* @teifsmu, i32 %10, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %46

17:                                               ; preds = %1
  %18 = load i8*, i8** @TEI_STATE_COUNT, align 8
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teifsmn, i32 0, i32 3), align 8
  %19 = load i8*, i8** @TEI_EVENT_COUNT, align 8
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teifsmn, i32 0, i32 2), align 8
  %20 = load i8*, i8** @strTeiEvent, align 8
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teifsmn, i32 0, i32 1), align 8
  %21 = load i8*, i8** @strTeiState, align 8
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @teifsmn, i32 0, i32 0), align 8
  %22 = load i32, i32* @TeiFnListNet, align 4
  %23 = load i32, i32* @TeiFnListNet, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @mISDN_FsmNew(%struct.TYPE_6__* @teifsmn, i32 %22, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %44

29:                                               ; preds = %17
  %30 = load i8*, i8** @DEACT_STATE_COUNT, align 8
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @deactfsm, i32 0, i32 3), align 8
  %31 = load i8*, i8** @DEACT_EVENT_COUNT, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @deactfsm, i32 0, i32 2), align 8
  %32 = load i8*, i8** @strDeactEvent, align 8
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @deactfsm, i32 0, i32 1), align 8
  %33 = load i8*, i8** @strDeactState, align 8
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @deactfsm, i32 0, i32 0), align 8
  %34 = load i32, i32* @DeactFnList, align 4
  %35 = load i32, i32* @DeactFnList, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i32 @mISDN_FsmNew(%struct.TYPE_6__* @deactfsm, i32 %34, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %42

41:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %48

42:                                               ; preds = %40
  %43 = call i32 @mISDN_FsmFree(%struct.TYPE_6__* @teifsmn)
  br label %44

44:                                               ; preds = %42, %28
  %45 = call i32 @mISDN_FsmFree(%struct.TYPE_6__* @teifsmu)
  br label %46

46:                                               ; preds = %44, %16
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @mISDN_FsmNew(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mISDN_FsmFree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
