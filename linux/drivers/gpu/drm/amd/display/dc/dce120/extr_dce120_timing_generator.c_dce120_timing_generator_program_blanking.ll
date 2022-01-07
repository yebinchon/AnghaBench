; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_program_blanking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_program_blanking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dc_crtc_timing = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.dce110_timing_generator = type { i32 }

@CRTC0_CRTC_H_TOTAL = common dso_local global i32 0, align 4
@CRTC_H_TOTAL = common dso_local global i32 0, align 4
@CRTC0_CRTC_V_TOTAL = common dso_local global i32 0, align 4
@CRTC_V_TOTAL = common dso_local global i32 0, align 4
@CRTC0_CRTC_V_TOTAL_MAX = common dso_local global i32 0, align 4
@CRTC_V_TOTAL_MAX = common dso_local global i32 0, align 4
@CRTC0_CRTC_V_TOTAL_MIN = common dso_local global i32 0, align 4
@CRTC_V_TOTAL_MIN = common dso_local global i32 0, align 4
@CRTC0_CRTC_H_BLANK_START_END = common dso_local global i32 0, align 4
@CRTC_H_BLANK_END = common dso_local global i32 0, align 4
@CRTC_H_BLANK_START = common dso_local global i32 0, align 4
@CRTC0_CRTC_V_BLANK_START_END = common dso_local global i32 0, align 4
@CRTC_V_BLANK_END = common dso_local global i32 0, align 4
@CRTC_V_BLANK_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce120_timing_generator_program_blanking(%struct.timing_generator* %0, %struct.dc_crtc_timing* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.dc_crtc_timing*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %13 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %16 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  store i64 %18, i64* %7, align 8
  %19 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %20 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add nsw i64 %21, %22
  store i64 %23, i64* %8, align 8
  %24 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %25 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %28 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  store i64 %30, i64* %9, align 8
  %31 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %32 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add nsw i64 %33, %34
  store i64 %35, i64* %10, align 8
  %36 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %37 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %36)
  store %struct.dce110_timing_generator* %37, %struct.dce110_timing_generator** %11, align 8
  %38 = load i32, i32* @CRTC0_CRTC_H_TOTAL, align 4
  %39 = load i32, i32* @CRTC_H_TOTAL, align 4
  %40 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %41 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 1
  %44 = call i32 @CRTC_REG_UPDATE(i32 %38, i32 %39, i64 %43)
  %45 = load i32, i32* @CRTC0_CRTC_V_TOTAL, align 4
  %46 = load i32, i32* @CRTC_V_TOTAL, align 4
  %47 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %48 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, 1
  %51 = call i32 @CRTC_REG_UPDATE(i32 %45, i32 %46, i64 %50)
  %52 = load i32, i32* @CRTC0_CRTC_V_TOTAL_MAX, align 4
  %53 = load i32, i32* @CRTC_V_TOTAL_MAX, align 4
  %54 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %55 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, 1
  %58 = call i32 @CRTC_REG_UPDATE(i32 %52, i32 %53, i64 %57)
  %59 = load i32, i32* @CRTC0_CRTC_V_TOTAL_MIN, align 4
  %60 = load i32, i32* @CRTC_V_TOTAL_MIN, align 4
  %61 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %62 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, 1
  %65 = call i32 @CRTC_REG_UPDATE(i32 %59, i32 %60, i64 %64)
  %66 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %67 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %66, i32 0, i32 7
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %71 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = sub nsw i64 %68, %73
  store i64 %74, i64* %5, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %77 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %81 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %85 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  store i64 %87, i64* %6, align 8
  %88 = load i32, i32* @CRTC0_CRTC_H_BLANK_START_END, align 4
  %89 = load i32, i32* @CRTC_H_BLANK_END, align 4
  %90 = load i64, i64* %5, align 8
  %91 = load i32, i32* @CRTC_H_BLANK_START, align 4
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @CRTC_REG_UPDATE_2(i32 %88, i32 %89, i64 %90, i32 %91, i64 %92)
  %94 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %95 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %99 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = sub nsw i64 %96, %101
  store i64 %102, i64* %5, align 8
  %103 = load i64, i64* %5, align 8
  %104 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %105 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %103, %106
  %108 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %109 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %113 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  store i64 %115, i64* %6, align 8
  %116 = load i32, i32* @CRTC0_CRTC_V_BLANK_START_END, align 4
  %117 = load i32, i32* @CRTC_V_BLANK_END, align 4
  %118 = load i64, i64* %5, align 8
  %119 = load i32, i32* @CRTC_V_BLANK_START, align 4
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @CRTC_REG_UPDATE_2(i32 %116, i32 %117, i64 %118, i32 %119, i64 %120)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @CRTC_REG_UPDATE(i32, i32, i64) #1

declare dso_local i32 @CRTC_REG_UPDATE_2(i32, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
