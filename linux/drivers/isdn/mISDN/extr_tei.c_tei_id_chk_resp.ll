; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_tei.c_tei_id_chk_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_tei.c_tei_id_chk_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.teimgr* }
%struct.teimgr = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.FsmInst.0*, i8*, i32)* }
%struct.FsmInst.0 = type opaque

@debug = common dso_local global i32* null, align 8
@DEBUG_L2_TEI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"identity check resp tei %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @tei_id_chk_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tei_id_chk_resp(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.teimgr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %11 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %10, i32 0, i32 0
  %12 = load %struct.teimgr*, %struct.teimgr** %11, align 8
  store %struct.teimgr* %12, %struct.teimgr** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** @debug, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DEBUG_L2_TEI, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %26 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.FsmInst.0*, i8*, i32)*, i32 (%struct.FsmInst.0*, i8*, i32)** %27, align 8
  %29 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %30 = bitcast %struct.FsmInst* %29 to %struct.FsmInst.0*
  %31 = load i32, i32* %9, align 4
  %32 = call i32 %28(%struct.FsmInst.0* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %24, %3
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %36 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %34, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %43 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
