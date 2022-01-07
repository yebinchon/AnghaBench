; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_hw_sequencer.c_dce100_prepare_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_hw_sequencer.c_dce100_prepare_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, %struct.dc_state*, i32)* }
%struct.dc_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce100_prepare_bandwidth(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_state*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  %5 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %6 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %5, i32 0, i32 0
  %7 = load %struct.dc*, %struct.dc** %3, align 8
  %8 = getelementptr inbounds %struct.dc, %struct.dc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dce110_set_safe_displaymarks(i32* %6, i32 %9)
  %11 = load %struct.dc*, %struct.dc** %3, align 8
  %12 = getelementptr inbounds %struct.dc, %struct.dc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_4__*, %struct.dc_state*, i32)*, i32 (%struct.TYPE_4__*, %struct.dc_state*, i32)** %16, align 8
  %18 = load %struct.dc*, %struct.dc** %3, align 8
  %19 = getelementptr inbounds %struct.dc, %struct.dc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %22 = call i32 %17(%struct.TYPE_4__* %20, %struct.dc_state* %21, i32 0)
  ret void
}

declare dso_local i32 @dce110_set_safe_displaymarks(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
