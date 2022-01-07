; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_program_clock_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_program_clock_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32, i64*)* }
%struct.bp_pixel_clock_parameters = type { i32, i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64 }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@PIXEL_CLOCK_MISC_REF_DIV_SRC = common dso_local global i32 0, align 4
@PIXEL_CLOCK_V6_MISC_DPREFCLK_BYPASS = common dso_local global i32 0, align 4
@SetPixelClock = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_pixel_clock_parameters*)* @program_clock_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @program_clock_v6(%struct.bios_parser* %0, %struct.bp_pixel_clock_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bios_parser*, align 8
  %5 = alloca %struct.bp_pixel_clock_parameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i64, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %4, align 8
  store %struct.bp_pixel_clock_parameters* %1, %struct.bp_pixel_clock_parameters** %5, align 8
  %9 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %9, i32* %6, align 4
  %10 = call i32 @memset(%struct.TYPE_10__* %7, i32 0, i32 16)
  %11 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %12 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32 (i32, i64*)*, i32 (i32, i64*)** %14, align 8
  %16 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %17 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %15(i32 %18, i64* %8)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = call i32 (...) @BREAK_TO_DEBUGGER()
  %23 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %23, i32* %3, align 4
  br label %79

24:                                               ; preds = %2
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %29 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %30, 100
  %32 = call i32 @cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %36 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %24
  %41 = load i32, i32* @PIXEL_CLOCK_MISC_REF_DIV_SRC, align 4
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %24
  %47 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %48 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* @PIXEL_CLOCK_V6_MISC_DPREFCLK_BYPASS, align 4
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %46
  %59 = load i32, i32* @SetPixelClock, align 4
  %60 = bitcast %struct.TYPE_10__* %7 to { i64, i64 }*
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %59, i64 %62, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = mul nsw i32 %71, 10
  %73 = sext i32 %72 to i64
  %74 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %75 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %67, %58
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %21
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, i64, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
