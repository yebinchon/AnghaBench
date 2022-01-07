; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_program_clock_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table.c_program_clock_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32, i64*)* }
%struct.bp_pixel_clock_parameters = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8*, i32, i8* }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@ATOM_CRTC_INVALID = common dso_local global i64 0, align 8
@PIXEL_CLOCK_MISC_REF_DIV_SRC = common dso_local global i32 0, align 4
@SetPixelClock = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.bp_pixel_clock_parameters*)* @program_clock_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @program_clock_v5(%struct.bios_parser* %0, %struct.bp_pixel_clock_parameters* %1) #0 {
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
  %10 = call i32 @memset(%struct.TYPE_10__* %7, i32 0, i32 32)
  %11 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %12 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32 (i32, i64*)*, i32 (i32, i64*)** %14, align 8
  %16 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %17 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %15(i32 %18, i64* %8)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = call i32 (...) @BREAK_TO_DEBUGGER()
  %23 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %23, i32* %3, align 4
  br label %59

24:                                               ; preds = %2
  %25 = load i64, i64* %8, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %30 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sdiv i32 %31, 100
  %33 = call i32 @cpu_to_le16(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* @ATOM_CRTC_INVALID, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.bp_pixel_clock_parameters*, %struct.bp_pixel_clock_parameters** %5, align 8
  %41 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %24
  %46 = load i32, i32* @PIXEL_CLOCK_MISC_REF_DIV_SRC, align 4
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %24
  %52 = load i32, i32* @SetPixelClock, align 4
  %53 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %52, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %7)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %21
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
