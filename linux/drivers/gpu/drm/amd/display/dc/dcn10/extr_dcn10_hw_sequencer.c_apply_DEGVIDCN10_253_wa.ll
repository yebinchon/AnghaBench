; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_apply_DEGVIDCN10_253_wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_apply_DEGVIDCN10_253_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_7__, %struct.dce_hwseq* }
%struct.TYPE_10__ = type { i32 (%struct.dce_hwseq*, i32, i32)* }
%struct.TYPE_9__ = type { i32, %struct.hubp** }
%struct.hubp = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 (%struct.hubp*, i32)* }
%struct.TYPE_7__ = type { i64 }
%struct.dce_hwseq = type { %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@DC_IP_REQUEST_CNTL = common dso_local global i32 0, align 4
@IP_REQUEST_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*)* @apply_DEGVIDCN10_253_wa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_DEGVIDCN10_253_wa(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  %3 = alloca %struct.dce_hwseq*, align 8
  %4 = alloca %struct.hubp*, align 8
  %5 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %2, align 8
  %6 = load %struct.dc*, %struct.dc** %2, align 8
  %7 = getelementptr inbounds %struct.dc, %struct.dc* %6, i32 0, i32 3
  %8 = load %struct.dce_hwseq*, %struct.dce_hwseq** %7, align 8
  store %struct.dce_hwseq* %8, %struct.dce_hwseq** %3, align 8
  %9 = load %struct.dc*, %struct.dc** %2, align 8
  %10 = getelementptr inbounds %struct.dc, %struct.dc* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.hubp**, %struct.hubp*** %12, align 8
  %14 = getelementptr inbounds %struct.hubp*, %struct.hubp** %13, i64 0
  %15 = load %struct.hubp*, %struct.hubp** %14, align 8
  store %struct.hubp* %15, %struct.hubp** %4, align 8
  %16 = load %struct.dc*, %struct.dc** %2, align 8
  %17 = getelementptr inbounds %struct.dc, %struct.dc* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %79

22:                                               ; preds = %1
  %23 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %24 = getelementptr inbounds %struct.dce_hwseq, %struct.dce_hwseq* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %79

29:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.dc*, %struct.dc** %2, align 8
  %33 = getelementptr inbounds %struct.dc, %struct.dc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %30
  %39 = load %struct.dc*, %struct.dc** %2, align 8
  %40 = getelementptr inbounds %struct.dc, %struct.dc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.hubp**, %struct.hubp*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.hubp*, %struct.hubp** %43, i64 %45
  %47 = load %struct.hubp*, %struct.hubp** %46, align 8
  %48 = getelementptr inbounds %struct.hubp, %struct.hubp* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %38
  br label %79

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %30

56:                                               ; preds = %30
  %57 = load i32, i32* @DC_IP_REQUEST_CNTL, align 4
  %58 = load i32, i32* @IP_REQUEST_EN, align 4
  %59 = call i32 @REG_SET(i32 %57, i32 0, i32 %58, i32 1)
  %60 = load %struct.dc*, %struct.dc** %2, align 8
  %61 = getelementptr inbounds %struct.dc, %struct.dc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32 (%struct.dce_hwseq*, i32, i32)*, i32 (%struct.dce_hwseq*, i32, i32)** %62, align 8
  %64 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %65 = call i32 %63(%struct.dce_hwseq* %64, i32 0, i32 1)
  %66 = load i32, i32* @DC_IP_REQUEST_CNTL, align 4
  %67 = load i32, i32* @IP_REQUEST_EN, align 4
  %68 = call i32 @REG_SET(i32 %66, i32 0, i32 %67, i32 0)
  %69 = load %struct.hubp*, %struct.hubp** %4, align 8
  %70 = getelementptr inbounds %struct.hubp, %struct.hubp* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32)** %72, align 8
  %74 = load %struct.hubp*, %struct.hubp** %4, align 8
  %75 = call i32 %73(%struct.hubp* %74, i32 0)
  %76 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %77 = getelementptr inbounds %struct.dce_hwseq, %struct.dce_hwseq* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %56, %51, %28, %21
  ret void
}

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
