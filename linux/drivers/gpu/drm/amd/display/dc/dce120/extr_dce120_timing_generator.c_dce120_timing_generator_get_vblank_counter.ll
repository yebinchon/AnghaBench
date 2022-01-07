; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_get_vblank_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_get_vblank_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dce110_timing_generator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmCRTC0_CRTC_STATUS_FRAME_COUNT = common dso_local global i32 0, align 4
@CRTC0_CRTC_STATUS_FRAME_COUNT = common dso_local global i32 0, align 4
@CRTC_FRAME_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce120_timing_generator_get_vblank_counter(%struct.timing_generator* %0) #0 {
  %2 = alloca %struct.timing_generator*, align 8
  %3 = alloca %struct.dce110_timing_generator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %2, align 8
  %6 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %7 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %6)
  store %struct.dce110_timing_generator* %7, %struct.dce110_timing_generator** %3, align 8
  %8 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %9 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @mmCRTC0_CRTC_STATUS_FRAME_COUNT, align 4
  %12 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %3, align 8
  %13 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dm_read_reg_soc15(i32 %10, i32 %11, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @CRTC0_CRTC_STATUS_FRAME_COUNT, align 4
  %19 = load i32, i32* @CRTC_FRAME_COUNT, align 4
  %20 = call i32 @get_reg_field_value(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @dm_read_reg_soc15(i32, i32, i32) #1

declare dso_local i32 @get_reg_field_value(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
