; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce112/extr_dce112_clk_mgr.c_dce112_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce112/extr_dce112_clk_mgr.c_dce112_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.dc*, %struct.dc_bios* }
%struct.TYPE_9__ = type { i32 }
%struct.dc = type { %struct.TYPE_13__*, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_8__ = type { %struct.dmcu* }
%struct.dmcu = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.dmcu*, i32)*, i64 (%struct.dmcu*)* }
%struct.dc_bios = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.dc_bios*, %struct.bp_set_dce_clock_parameters*)* }
%struct.bp_set_dce_clock_parameters = type { i32, i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.clk_mgr_internal = type { i32, i32, i32 }

@CLOCK_SOURCE_ID_DFS = common dso_local global i64 0, align 8
@DCECLOCK_TYPE_DISPLAY_CLOCK = common dso_local global i32 0, align 4
@DM_PP_CLOCKS_STATE_NOMINAL = common dso_local global i32 0, align 4
@DCECLOCK_TYPE_DPREFCLK = common dso_local global i32 0, align 4
@CLOCK_SOURCE_COMBO_DISPLAY_PLL0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce112_set_clock(%struct.clk_mgr* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_mgr_internal*, align 8
  %6 = alloca %struct.bp_set_dce_clock_parameters, align 8
  %7 = alloca %struct.dc_bios*, align 8
  %8 = alloca %struct.dc*, align 8
  %9 = alloca %struct.dmcu*, align 8
  %10 = alloca i32, align 4
  store %struct.clk_mgr* %0, %struct.clk_mgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.clk_mgr*, %struct.clk_mgr** %3, align 8
  %12 = call %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr* %11)
  store %struct.clk_mgr_internal* %12, %struct.clk_mgr_internal** %5, align 8
  %13 = load %struct.clk_mgr*, %struct.clk_mgr** %3, align 8
  %14 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.dc_bios*, %struct.dc_bios** %16, align 8
  store %struct.dc_bios* %17, %struct.dc_bios** %7, align 8
  %18 = load %struct.clk_mgr*, %struct.clk_mgr** %3, align 8
  %19 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load %struct.dc*, %struct.dc** %21, align 8
  store %struct.dc* %22, %struct.dc** %8, align 8
  %23 = load %struct.dc*, %struct.dc** %8, align 8
  %24 = getelementptr inbounds %struct.dc, %struct.dc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.dmcu*, %struct.dmcu** %26, align 8
  store %struct.dmcu* %27, %struct.dmcu** %9, align 8
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %10, align 4
  %29 = call i32 @memset(%struct.bp_set_dce_clock_parameters* %6, i32 0, i32 24)
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %35 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 62
  %38 = call i32 @max(i32 %33, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %32, %2
  %40 = load i32, i32* %4, align 4
  %41 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %6, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load i64, i64* @CLOCK_SOURCE_ID_DFS, align 8
  %43 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %6, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* @DCECLOCK_TYPE_DISPLAY_CLOCK, align 4
  %45 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %6, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = load %struct.dc_bios*, %struct.dc_bios** %7, align 8
  %47 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32 (%struct.dc_bios*, %struct.bp_set_dce_clock_parameters*)*, i32 (%struct.dc_bios*, %struct.bp_set_dce_clock_parameters*)** %49, align 8
  %51 = load %struct.dc_bios*, %struct.dc_bios** %7, align 8
  %52 = call i32 %50(%struct.dc_bios* %51, %struct.bp_set_dce_clock_parameters* %6)
  %53 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %39
  %58 = load i32, i32* @DM_PP_CLOCKS_STATE_NOMINAL, align 4
  %59 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %60 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %39
  %62 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %6, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load i32, i32* @DCECLOCK_TYPE_DPREFCLK, align 4
  %64 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %6, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  %65 = load %struct.clk_mgr*, %struct.clk_mgr** %3, align 8
  %66 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ASICREV_IS_VEGA20_P(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %61
  %74 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %6, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CLOCK_SOURCE_COMBO_DISPLAY_PLL0, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %6, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %84

81:                                               ; preds = %61
  %82 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %6, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %73
  %85 = load %struct.dc_bios*, %struct.dc_bios** %7, align 8
  %86 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32 (%struct.dc_bios*, %struct.bp_set_dce_clock_parameters*)*, i32 (%struct.dc_bios*, %struct.bp_set_dce_clock_parameters*)** %88, align 8
  %90 = load %struct.dc_bios*, %struct.dc_bios** %7, align 8
  %91 = call i32 %89(%struct.dc_bios* %90, %struct.bp_set_dce_clock_parameters* %6)
  %92 = load %struct.dc*, %struct.dc** %8, align 8
  %93 = getelementptr inbounds %struct.dc, %struct.dc* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @IS_FPGA_MAXIMUS_DC(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %130, label %99

99:                                               ; preds = %84
  %100 = load %struct.dmcu*, %struct.dmcu** %9, align 8
  %101 = icmp ne %struct.dmcu* %100, null
  br i1 %101, label %102, label %129

102:                                              ; preds = %99
  %103 = load %struct.dmcu*, %struct.dmcu** %9, align 8
  %104 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %103, i32 0, i32 0
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i64 (%struct.dmcu*)*, i64 (%struct.dmcu*)** %106, align 8
  %108 = load %struct.dmcu*, %struct.dmcu** %9, align 8
  %109 = call i64 %107(%struct.dmcu* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %102
  %112 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %113 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load %struct.dmcu*, %struct.dmcu** %9, align 8
  %119 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %118, i32 0, i32 0
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32 (%struct.dmcu*, i32)*, i32 (%struct.dmcu*, i32)** %121, align 8
  %123 = load %struct.dmcu*, %struct.dmcu** %9, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sdiv i32 %124, 1000
  %126 = sdiv i32 %125, 7
  %127 = call i32 %122(%struct.dmcu* %123, i32 %126)
  br label %128

128:                                              ; preds = %117, %111
  br label %129

129:                                              ; preds = %128, %102, %99
  br label %130

130:                                              ; preds = %129, %84
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %133 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %10, align 4
  ret i32 %134
}

declare dso_local %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr*) #1

declare dso_local i32 @memset(%struct.bp_set_dce_clock_parameters*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ASICREV_IS_VEGA20_P(i32) #1

declare dso_local i32 @IS_FPGA_MAXIMUS_DC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
