; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_adjust_display_pll_v3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_adjust_display_pll_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 (i64, i32)*, i32 (i32)* }
%struct.bp_adjust_pixel_clock_parameters = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i32 }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@DISPPLL_CONFIG_SS_ENABLE = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DVI_DUAL_LINK = common dso_local global i64 0, align 8
@DISPPLL_CONFIG_DUAL_LINK = common dso_local global i32 0, align 4
@AdjustDisplayPll = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_adjust_pixel_clock_parameters*)* @adjust_display_pll_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_display_pll_v3(%struct.bios_parser* %0, %struct.bp_adjust_pixel_clock_parameters* %1) #0 {
  %3 = alloca %struct.bios_parser*, align 8
  %4 = alloca %struct.bp_adjust_pixel_clock_parameters*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bios_parser* %0, %struct.bios_parser** %3, align 8
  store %struct.bp_adjust_pixel_clock_parameters* %1, %struct.bp_adjust_pixel_clock_parameters** %4, align 8
  %10 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.bp_adjust_pixel_clock_parameters*, %struct.bp_adjust_pixel_clock_parameters** %4, align 8
  %12 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sdiv i32 %13, 10
  store i32 %14, i32* %7, align 4
  %15 = call i32 @memset(%struct.TYPE_10__* %6, i32 0, i32 40)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @cpu_to_le16(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %21 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load %struct.bp_adjust_pixel_clock_parameters*, %struct.bp_adjust_pixel_clock_parameters** %4, align 8
  %26 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dal_graphics_object_id_get_encoder_id(i32 %27)
  %29 = call i32 %24(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.bios_parser*, %struct.bios_parser** %3, align 8
  %33 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64 (i64, i32)*, i64 (i64, i32)** %35, align 8
  %37 = load %struct.bp_adjust_pixel_clock_parameters*, %struct.bp_adjust_pixel_clock_parameters** %4, align 8
  %38 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 %36(i64 %39, i32 0)
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.bp_adjust_pixel_clock_parameters*, %struct.bp_adjust_pixel_clock_parameters** %4, align 8
  %44 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %2
  %48 = load i32, i32* @DISPPLL_CONFIG_SS_ENABLE, align 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %2
  %54 = load %struct.bp_adjust_pixel_clock_parameters*, %struct.bp_adjust_pixel_clock_parameters** %4, align 8
  %55 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SIGNAL_TYPE_DVI_DUAL_LINK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @DISPPLL_CONFIG_DUAL_LINK, align 4
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i32, i32* @AdjustDisplayPll, align 4
  %67 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %66, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %6)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %103

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @le32_to_cpu(i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.bp_adjust_pixel_clock_parameters*, %struct.bp_adjust_pixel_clock_parameters** %4, align 8
  %75 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %69
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @div_u64(i32 %82, i32 %83)
  %85 = load %struct.bp_adjust_pixel_clock_parameters*, %struct.bp_adjust_pixel_clock_parameters** %4, align 8
  %86 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  br label %91

87:                                               ; preds = %69
  %88 = load %struct.bp_adjust_pixel_clock_parameters*, %struct.bp_adjust_pixel_clock_parameters** %4, align 8
  %89 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %88, i32 0, i32 5
  store i32 0, i32* %89, align 4
  %90 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %91

91:                                               ; preds = %87, %79
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.bp_adjust_pixel_clock_parameters*, %struct.bp_adjust_pixel_clock_parameters** %4, align 8
  %96 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.bp_adjust_pixel_clock_parameters*, %struct.bp_adjust_pixel_clock_parameters** %4, align 8
  %101 = getelementptr inbounds %struct.bp_adjust_pixel_clock_parameters, %struct.bp_adjust_pixel_clock_parameters* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %91, %65
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @dal_graphics_object_id_get_encoder_id(i32) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
