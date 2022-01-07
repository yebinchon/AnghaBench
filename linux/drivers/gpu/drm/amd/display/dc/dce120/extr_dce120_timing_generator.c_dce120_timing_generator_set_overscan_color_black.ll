; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_set_overscan_color_black.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_set_overscan_color_black.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.tg_color = type { i32, i32, i32 }
%struct.dce110_timing_generator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CRTC0_CRTC_OVERSCAN_COLOR = common dso_local global i32 0, align 4
@CRTC_OVERSCAN_COLOR_BLUE = common dso_local global i32 0, align 4
@CRTC_OVERSCAN_COLOR_GREEN = common dso_local global i32 0, align 4
@CRTC_OVERSCAN_COLOR_RED = common dso_local global i32 0, align 4
@mmCRTC0_CRTC_OVERSCAN_COLOR = common dso_local global i32 0, align 4
@mmCRTC0_CRTC_BLACK_COLOR = common dso_local global i32 0, align 4
@mmCRTC0_CRTC_BLANK_DATA_COLOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce120_timing_generator_set_overscan_color_black(%struct.timing_generator* %0, %struct.tg_color* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.tg_color*, align 8
  %5 = alloca %struct.dce110_timing_generator*, align 8
  %6 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.tg_color* %1, %struct.tg_color** %4, align 8
  %7 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %8 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %7)
  store %struct.dce110_timing_generator* %8, %struct.dce110_timing_generator** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @CRTC0_CRTC_OVERSCAN_COLOR, align 4
  %10 = load i32, i32* @CRTC_OVERSCAN_COLOR_BLUE, align 4
  %11 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %12 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CRTC_OVERSCAN_COLOR_GREEN, align 4
  %15 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %16 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CRTC_OVERSCAN_COLOR_RED, align 4
  %19 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %20 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CRTC_REG_SET_3(i32 %9, i32 %10, i32 %13, i32 %14, i32 %17, i32 %18, i32 %21)
  %23 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %24 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @mmCRTC0_CRTC_OVERSCAN_COLOR, align 4
  %27 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %28 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dm_read_reg_soc15(i32 %25, i32 %26, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %33 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @mmCRTC0_CRTC_BLACK_COLOR, align 4
  %36 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %37 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dm_write_reg_soc15(i32 %34, i32 %35, i32 %39, i32 %40)
  %42 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %43 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @mmCRTC0_CRTC_BLANK_DATA_COLOR, align 4
  %46 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %47 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dm_write_reg_soc15(i32 %44, i32 %45, i32 %49, i32 %50)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @CRTC_REG_SET_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dm_read_reg_soc15(i32, i32, i32) #1

declare dso_local i32 @dm_write_reg_soc15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
