; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_optc.c_optc2_set_odm_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_optc.c_optc2_set_odm_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dc_crtc_timing = type { i32 }
%struct.optc = type { i32 }

@OPTC_DATA_SOURCE_SELECT = common dso_local global i32 0, align 4
@OPTC_NUM_OF_INPUT_SEGMENT = common dso_local global i32 0, align 4
@OPTC_SEG0_SRC_SEL = common dso_local global i32 0, align 4
@OPTC_SEG1_SRC_SEL = common dso_local global i32 0, align 4
@OTG_H_TIMING_CNTL = common dso_local global i32 0, align 4
@OTG_H_TIMING_DIV_BY2 = common dso_local global i32 0, align 4
@OPTC_MEMORY_CONFIG = common dso_local global i32 0, align 4
@OPTC_MEM_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc2_set_odm_bypass(%struct.timing_generator* %0, %struct.dc_crtc_timing* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.dc_crtc_timing*, align 8
  %5 = alloca %struct.optc*, align 8
  %6 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %4, align 8
  %7 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %8 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %7)
  store %struct.optc* %8, %struct.optc** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @OPTC_DATA_SOURCE_SELECT, align 4
  %10 = load i32, i32* @OPTC_NUM_OF_INPUT_SEGMENT, align 4
  %11 = load i32, i32* @OPTC_SEG0_SRC_SEL, align 4
  %12 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %13 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @OPTC_SEG1_SRC_SEL, align 4
  %16 = call i32 @REG_SET_3(i32 %9, i32 0, i32 %10, i32 0, i32 %11, i32 %14, i32 %15, i32 15)
  %17 = load i32, i32* @OTG_H_TIMING_CNTL, align 4
  %18 = call i32 @REG_WRITE(i32 %17, i32 0)
  %19 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %20 = call i32 @optc1_is_two_pixels_per_containter(%struct.dc_crtc_timing* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @OTG_H_TIMING_CNTL, align 4
  %22 = load i32, i32* @OTG_H_TIMING_DIV_BY2, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @REG_UPDATE(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @OPTC_MEMORY_CONFIG, align 4
  %26 = load i32, i32* @OPTC_MEM_SEL, align 4
  %27 = call i32 @REG_SET(i32 %25, i32 0, i32 %26, i32 0)
  %28 = load %struct.optc*, %struct.optc** %5, align 8
  %29 = getelementptr inbounds %struct.optc, %struct.optc* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @REG_SET_3(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @optc1_is_two_pixels_per_containter(%struct.dc_crtc_timing*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
