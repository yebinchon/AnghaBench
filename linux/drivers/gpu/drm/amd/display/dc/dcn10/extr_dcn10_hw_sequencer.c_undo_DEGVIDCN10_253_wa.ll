; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_undo_DEGVIDCN10_253_wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_undo_DEGVIDCN10_253_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_6__, %struct.TYPE_7__*, %struct.dce_hwseq* }
%struct.TYPE_6__ = type { i32 (%struct.dce_hwseq*, i32, i32)* }
%struct.TYPE_7__ = type { %struct.hubp** }
%struct.hubp = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.hubp*, i32)* }
%struct.dce_hwseq = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@DC_IP_REQUEST_CNTL = common dso_local global i32 0, align 4
@IP_REQUEST_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*)* @undo_DEGVIDCN10_253_wa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @undo_DEGVIDCN10_253_wa(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  %3 = alloca %struct.dce_hwseq*, align 8
  %4 = alloca %struct.hubp*, align 8
  store %struct.dc* %0, %struct.dc** %2, align 8
  %5 = load %struct.dc*, %struct.dc** %2, align 8
  %6 = getelementptr inbounds %struct.dc, %struct.dc* %5, i32 0, i32 2
  %7 = load %struct.dce_hwseq*, %struct.dce_hwseq** %6, align 8
  store %struct.dce_hwseq* %7, %struct.dce_hwseq** %3, align 8
  %8 = load %struct.dc*, %struct.dc** %2, align 8
  %9 = getelementptr inbounds %struct.dc, %struct.dc* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.hubp**, %struct.hubp*** %11, align 8
  %13 = getelementptr inbounds %struct.hubp*, %struct.hubp** %12, i64 0
  %14 = load %struct.hubp*, %struct.hubp** %13, align 8
  store %struct.hubp* %14, %struct.hubp** %4, align 8
  %15 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %16 = getelementptr inbounds %struct.dce_hwseq, %struct.dce_hwseq* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %44

21:                                               ; preds = %1
  %22 = load %struct.hubp*, %struct.hubp** %4, align 8
  %23 = getelementptr inbounds %struct.hubp, %struct.hubp* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32)** %25, align 8
  %27 = load %struct.hubp*, %struct.hubp** %4, align 8
  %28 = call i32 %26(%struct.hubp* %27, i32 1)
  %29 = load i32, i32* @DC_IP_REQUEST_CNTL, align 4
  %30 = load i32, i32* @IP_REQUEST_EN, align 4
  %31 = call i32 @REG_SET(i32 %29, i32 0, i32 %30, i32 1)
  %32 = load %struct.dc*, %struct.dc** %2, align 8
  %33 = getelementptr inbounds %struct.dc, %struct.dc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32 (%struct.dce_hwseq*, i32, i32)*, i32 (%struct.dce_hwseq*, i32, i32)** %34, align 8
  %36 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %37 = call i32 %35(%struct.dce_hwseq* %36, i32 0, i32 0)
  %38 = load i32, i32* @DC_IP_REQUEST_CNTL, align 4
  %39 = load i32, i32* @IP_REQUEST_EN, align 4
  %40 = call i32 @REG_SET(i32 %38, i32 0, i32 %39, i32 0)
  %41 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %42 = getelementptr inbounds %struct.dce_hwseq, %struct.dce_hwseq* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
