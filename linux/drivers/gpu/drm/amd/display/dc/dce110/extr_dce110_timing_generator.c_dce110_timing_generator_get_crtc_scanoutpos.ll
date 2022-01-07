; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_get_crtc_scanoutpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_get_crtc_scanoutpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dce110_timing_generator = type { i32 }
%struct.crtc_position = type { i32, i32 }

@mmCRTC_V_BLANK_START_END = common dso_local global i32 0, align 4
@CRTC_V_BLANK_START_END = common dso_local global i32 0, align 4
@CRTC_V_BLANK_START = common dso_local global i32 0, align 4
@CRTC_V_BLANK_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_timing_generator_get_crtc_scanoutpos(%struct.timing_generator* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.timing_generator*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dce110_timing_generator*, align 8
  %12 = alloca %struct.crtc_position, align 4
  %13 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %15 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %14)
  store %struct.dce110_timing_generator* %15, %struct.dce110_timing_generator** %11, align 8
  %16 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %17 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @mmCRTC_V_BLANK_START_END, align 4
  %20 = call i32 @CRTC_REG(i32 %19)
  %21 = call i32 @dm_read_reg(i32 %18, i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @CRTC_V_BLANK_START_END, align 4
  %24 = load i32, i32* @CRTC_V_BLANK_START, align 4
  %25 = call i32 @get_reg_field_value(i32 %22, i32 %23, i32 %24)
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @CRTC_V_BLANK_START_END, align 4
  %29 = load i32, i32* @CRTC_V_BLANK_END, align 4
  %30 = call i32 @get_reg_field_value(i32 %27, i32 %28, i32 %29)
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %33 = call i32 @dce110_timing_generator_get_position(%struct.timing_generator* %32, %struct.crtc_position* %12)
  %34 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %12, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %12, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @CRTC_REG(i32) #1

declare dso_local i32 @get_reg_field_value(i32, i32, i32) #1

declare dso_local i32 @dce110_timing_generator_get_position(%struct.timing_generator*, %struct.crtc_position*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
