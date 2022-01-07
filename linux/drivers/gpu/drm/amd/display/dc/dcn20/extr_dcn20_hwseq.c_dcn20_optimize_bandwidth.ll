; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_optimize_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_optimize_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_16__*, %struct.TYPE_11__* }
%struct.TYPE_16__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_16__*, %struct.dc_state*, i32)* }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.hubbub* }
%struct.TYPE_9__ = type { i32 }
%struct.hubbub = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.hubbub*, i32*, i32, i32)* }
%struct.dc_state = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_optimize_bandwidth(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca %struct.hubbub*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  %6 = load %struct.dc*, %struct.dc** %3, align 8
  %7 = getelementptr inbounds %struct.dc, %struct.dc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load %struct.hubbub*, %struct.hubbub** %9, align 8
  store %struct.hubbub* %10, %struct.hubbub** %5, align 8
  %11 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %12 = getelementptr inbounds %struct.hubbub, %struct.hubbub* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32 (%struct.hubbub*, i32*, i32, i32)*, i32 (%struct.hubbub*, i32*, i32, i32)** %14, align 8
  %16 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %17 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %18 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.dc*, %struct.dc** %3, align 8
  %23 = getelementptr inbounds %struct.dc, %struct.dc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 %27, 1000
  %29 = call i32 %15(%struct.hubbub* %16, i32* %21, i32 %28, i32 1)
  %30 = load %struct.dc*, %struct.dc** %3, align 8
  %31 = getelementptr inbounds %struct.dc, %struct.dc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_16__*, %struct.dc_state*, i32)*, i32 (%struct.TYPE_16__*, %struct.dc_state*, i32)** %35, align 8
  %37 = load %struct.dc*, %struct.dc** %3, align 8
  %38 = getelementptr inbounds %struct.dc, %struct.dc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %41 = call i32 %36(%struct.TYPE_16__* %39, %struct.dc_state* %40, i32 1)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
