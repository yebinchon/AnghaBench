; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_optimize_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_optimize_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.clk_mgr* }
%struct.clk_mgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.clk_mgr*, %struct.dc_state*, i32)* }
%struct.dc_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_optimize_bandwidth(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca %struct.clk_mgr*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  %6 = load %struct.dc*, %struct.dc** %3, align 8
  %7 = getelementptr inbounds %struct.dc, %struct.dc* %6, i32 0, i32 0
  %8 = load %struct.clk_mgr*, %struct.clk_mgr** %7, align 8
  store %struct.clk_mgr* %8, %struct.clk_mgr** %5, align 8
  %9 = load %struct.dc*, %struct.dc** %3, align 8
  %10 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %11 = call i32 @dce110_set_displaymarks(%struct.dc* %9, %struct.dc_state* %10)
  %12 = load %struct.clk_mgr*, %struct.clk_mgr** %5, align 8
  %13 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.clk_mgr*, %struct.dc_state*, i32)*, i32 (%struct.clk_mgr*, %struct.dc_state*, i32)** %15, align 8
  %17 = load %struct.clk_mgr*, %struct.clk_mgr** %5, align 8
  %18 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %19 = call i32 %16(%struct.clk_mgr* %17, %struct.dc_state* %18, i32 1)
  ret void
}

declare dso_local i32 @dce110_set_displaymarks(%struct.dc*, %struct.dc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
