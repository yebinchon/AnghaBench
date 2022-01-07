; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_set_overscan_color_black.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_set_overscan_color_black.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.tg_color = type { i32, i32, i32 }
%struct.dce110_timing_generator = type { i32 }

@CRTC_OVERSCAN_COLOR = common dso_local global i32 0, align 4
@CRTC_OVERSCAN_COLOR_BLUE = common dso_local global i32 0, align 4
@CRTC_OVERSCAN_COLOR_RED = common dso_local global i32 0, align 4
@CRTC_OVERSCAN_COLOR_GREEN = common dso_local global i32 0, align 4
@mmCRTC_OVERSCAN_COLOR = common dso_local global i32 0, align 4
@mmCRTC_BLACK_COLOR = common dso_local global i32 0, align 4
@mmCRTC_BLANK_DATA_COLOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_timing_generator_set_overscan_color_black(%struct.timing_generator* %0, %struct.tg_color* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.tg_color*, align 8
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.tg_color* %1, %struct.tg_color** %4, align 8
  %9 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %10 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %9, i32 0, i32 0
  %11 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  store %struct.dc_context* %11, %struct.dc_context** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %13 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %12)
  store %struct.dce110_timing_generator* %13, %struct.dce110_timing_generator** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %16 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CRTC_OVERSCAN_COLOR, align 4
  %19 = load i32, i32* @CRTC_OVERSCAN_COLOR_BLUE, align 4
  %20 = call i32 @set_reg_field_value(i32 %14, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %23 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CRTC_OVERSCAN_COLOR, align 4
  %26 = load i32, i32* @CRTC_OVERSCAN_COLOR_RED, align 4
  %27 = call i32 @set_reg_field_value(i32 %21, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %30 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CRTC_OVERSCAN_COLOR, align 4
  %33 = load i32, i32* @CRTC_OVERSCAN_COLOR_GREEN, align 4
  %34 = call i32 @set_reg_field_value(i32 %28, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @mmCRTC_OVERSCAN_COLOR, align 4
  %36 = call i32 @CRTC_REG(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @dm_write_reg(%struct.dc_context* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @mmCRTC_BLACK_COLOR, align 4
  %42 = call i32 @CRTC_REG(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dm_write_reg(%struct.dc_context* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @mmCRTC_BLANK_DATA_COLOR, align 4
  %48 = call i32 @CRTC_REG(i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @dm_write_reg(%struct.dc_context* %49, i32 %50, i32 %51)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @CRTC_REG(i32) #1

declare dso_local i32 @dm_write_reg(%struct.dc_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
