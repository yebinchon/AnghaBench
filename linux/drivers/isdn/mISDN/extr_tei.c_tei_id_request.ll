; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_tei.c_tei_id_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_tei.c_tei_id_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.teimgr* }
%struct.teimgr = type { i64, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i8*, i64)* }
%struct.TYPE_4__ = type { i64 }

@GROUP_TEI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"assign request for already assigned tei %d\00", align 1
@debug = common dso_local global i32* null, align 8
@DEBUG_L2_TEI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"assign request ri %d\00", align 1
@ID_REQUEST = common dso_local global i32 0, align 4
@ST_TEI_IDREQ = common dso_local global i32 0, align 4
@EV_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @tei_id_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tei_id_request(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.teimgr*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 0
  %10 = load %struct.teimgr*, %struct.teimgr** %9, align 8
  store %struct.teimgr* %10, %struct.teimgr** %7, align 8
  %11 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %12 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %11, i32 0, i32 6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GROUP_TEI, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %20 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_5__*, i8*, i64)*, i32 (%struct.TYPE_5__*, i8*, i64)** %21, align 8
  %23 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %24 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %23, i32 0, i32 5
  %25 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %26 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %25, i32 0, i32 6
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 %22(%struct.TYPE_5__* %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %73

31:                                               ; preds = %3
  %32 = call i64 (...) @random_ri()
  %33 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %34 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32*, i32** @debug, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DEBUG_L2_TEI, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %31
  %41 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %42 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_5__*, i8*, i64)*, i32 (%struct.TYPE_5__*, i8*, i64)** %43, align 8
  %45 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %46 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %45, i32 0, i32 5
  %47 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %48 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 %44(%struct.TYPE_5__* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %40, %31
  %52 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %53 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ID_REQUEST, align 4
  %56 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %57 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @GROUP_TEI, align 8
  %60 = call i32 @put_tei_msg(i32 %54, i32 %55, i64 %58, i64 %59)
  %61 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %62 = load i32, i32* @ST_TEI_IDREQ, align 4
  %63 = call i32 @mISDN_FsmChangeState(%struct.FsmInst* %61, i32 %62)
  %64 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %65 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %64, i32 0, i32 3
  %66 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %67 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @EV_TIMER, align 4
  %70 = call i32 @mISDN_FsmAddTimer(i32* %65, i32 %68, i32 %69, i32* null, i32 1)
  %71 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %72 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %71, i32 0, i32 1
  store i32 3, i32* %72, align 8
  br label %73

73:                                               ; preds = %51, %18
  ret void
}

declare dso_local i64 @random_ri(...) #1

declare dso_local i32 @put_tei_msg(i32, i32, i64, i64) #1

declare dso_local i32 @mISDN_FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @mISDN_FsmAddTimer(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
