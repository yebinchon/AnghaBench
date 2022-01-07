; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce112/extr_dce112_clk_mgr.c_dce112_set_dprefclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce112/extr_dce112_clk_mgr.c_dce112_set_dprefclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr_internal = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__, %struct.dc_bios* }
%struct.TYPE_6__ = type { i32 }
%struct.dc_bios = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.dc_bios*, %struct.bp_set_dce_clock_parameters*)* }
%struct.bp_set_dce_clock_parameters = type { i32, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@CLOCK_SOURCE_ID_DFS = common dso_local global i64 0, align 8
@DCECLOCK_TYPE_DPREFCLK = common dso_local global i32 0, align 4
@CLOCK_SOURCE_COMBO_DISPLAY_PLL0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce112_set_dprefclk(%struct.clk_mgr_internal* %0) #0 {
  %2 = alloca %struct.clk_mgr_internal*, align 8
  %3 = alloca %struct.bp_set_dce_clock_parameters, align 8
  %4 = alloca %struct.dc_bios*, align 8
  store %struct.clk_mgr_internal* %0, %struct.clk_mgr_internal** %2, align 8
  %5 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %6 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load %struct.dc_bios*, %struct.dc_bios** %9, align 8
  store %struct.dc_bios* %10, %struct.dc_bios** %4, align 8
  %11 = call i32 @memset(%struct.bp_set_dce_clock_parameters* %3, i32 0, i32 24)
  %12 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %3, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load i64, i64* @CLOCK_SOURCE_ID_DFS, align 8
  %14 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %3, i32 0, i32 1
  store i64 %13, i64* %14, align 8
  %15 = load i32, i32* @DCECLOCK_TYPE_DPREFCLK, align 4
  %16 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %3, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %18 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ASICREV_IS_VEGA20_P(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %3, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CLOCK_SOURCE_COMBO_DISPLAY_PLL0, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %3, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %37

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %3, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %26
  %38 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %39 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32 (%struct.dc_bios*, %struct.bp_set_dce_clock_parameters*)*, i32 (%struct.dc_bios*, %struct.bp_set_dce_clock_parameters*)** %41, align 8
  %43 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %44 = call i32 %42(%struct.dc_bios* %43, %struct.bp_set_dce_clock_parameters* %3)
  %45 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  ret i32 %46
}

declare dso_local i32 @memset(%struct.bp_set_dce_clock_parameters*, i32, i32) #1

declare dso_local i32 @ASICREV_IS_VEGA20_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
