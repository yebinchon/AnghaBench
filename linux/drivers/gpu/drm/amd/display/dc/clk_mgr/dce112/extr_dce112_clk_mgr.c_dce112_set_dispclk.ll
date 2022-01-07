; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce112/extr_dce112_clk_mgr.c_dce112_set_dispclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce112/extr_dce112_clk_mgr.c_dce112_set_dispclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr_internal = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.dc*, %struct.dc_bios* }
%struct.dc = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.dmcu* }
%struct.dmcu = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.dmcu*, i32)*, i64 (%struct.dmcu*)* }
%struct.dc_bios = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.dc_bios*, %struct.bp_set_dce_clock_parameters*)* }
%struct.bp_set_dce_clock_parameters = type { i32, i32, i32 }

@CLOCK_SOURCE_ID_DFS = common dso_local global i32 0, align 4
@DCECLOCK_TYPE_DISPLAY_CLOCK = common dso_local global i32 0, align 4
@DM_PP_CLOCKS_STATE_NOMINAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce112_set_dispclk(%struct.clk_mgr_internal* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_mgr_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bp_set_dce_clock_parameters, align 4
  %6 = alloca %struct.dc_bios*, align 8
  %7 = alloca %struct.dc*, align 8
  %8 = alloca %struct.dmcu*, align 8
  %9 = alloca i32, align 4
  store %struct.clk_mgr_internal* %0, %struct.clk_mgr_internal** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %3, align 8
  %11 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.dc_bios*, %struct.dc_bios** %14, align 8
  store %struct.dc_bios* %15, %struct.dc_bios** %6, align 8
  %16 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %3, align 8
  %17 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.dc*, %struct.dc** %20, align 8
  store %struct.dc* %21, %struct.dc** %7, align 8
  %22 = load %struct.dc*, %struct.dc** %7, align 8
  %23 = getelementptr inbounds %struct.dc, %struct.dc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.dmcu*, %struct.dmcu** %25, align 8
  store %struct.dmcu* %26, %struct.dmcu** %8, align 8
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %9, align 4
  %28 = call i32 @memset(%struct.bp_set_dce_clock_parameters* %5, i32 0, i32 12)
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %3, align 8
  %34 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %35, 62
  %37 = call i32 @max(i32 %32, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %31, %2
  %39 = load i32, i32* %4, align 4
  %40 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %5, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @CLOCK_SOURCE_ID_DFS, align 4
  %42 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %5, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @DCECLOCK_TYPE_DISPLAY_CLOCK, align 4
  %44 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %5, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %46 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32 (%struct.dc_bios*, %struct.bp_set_dce_clock_parameters*)*, i32 (%struct.dc_bios*, %struct.bp_set_dce_clock_parameters*)** %48, align 8
  %50 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %51 = call i32 %49(%struct.dc_bios* %50, %struct.bp_set_dce_clock_parameters* %5)
  %52 = getelementptr inbounds %struct.bp_set_dce_clock_parameters, %struct.bp_set_dce_clock_parameters* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %38
  %57 = load i32, i32* @DM_PP_CLOCKS_STATE_NOMINAL, align 4
  %58 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %3, align 8
  %59 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %38
  %61 = load %struct.dc*, %struct.dc** %7, align 8
  %62 = getelementptr inbounds %struct.dc, %struct.dc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @IS_FPGA_MAXIMUS_DC(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %99, label %68

68:                                               ; preds = %60
  %69 = load %struct.dmcu*, %struct.dmcu** %8, align 8
  %70 = icmp ne %struct.dmcu* %69, null
  br i1 %70, label %71, label %98

71:                                               ; preds = %68
  %72 = load %struct.dmcu*, %struct.dmcu** %8, align 8
  %73 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %72, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i64 (%struct.dmcu*)*, i64 (%struct.dmcu*)** %75, align 8
  %77 = load %struct.dmcu*, %struct.dmcu** %8, align 8
  %78 = call i64 %76(%struct.dmcu* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %71
  %81 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %3, align 8
  %82 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load %struct.dmcu*, %struct.dmcu** %8, align 8
  %88 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32 (%struct.dmcu*, i32)*, i32 (%struct.dmcu*, i32)** %90, align 8
  %92 = load %struct.dmcu*, %struct.dmcu** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sdiv i32 %93, 1000
  %95 = sdiv i32 %94, 7
  %96 = call i32 %91(%struct.dmcu* %92, i32 %95)
  br label %97

97:                                               ; preds = %86, %80
  br label %98

98:                                               ; preds = %97, %71, %68
  br label %99

99:                                               ; preds = %98, %60
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %3, align 8
  %102 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local i32 @memset(%struct.bp_set_dce_clock_parameters*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @IS_FPGA_MAXIMUS_DC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
