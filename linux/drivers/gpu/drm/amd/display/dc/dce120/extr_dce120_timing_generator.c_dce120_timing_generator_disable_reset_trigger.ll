; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_disable_reset_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_disable_reset_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dce110_timing_generator = type { i32 }

@CRTC0_CRTC_FORCE_COUNT_NOW_CNTL = common dso_local global i32 0, align 4
@CRTC_FORCE_COUNT_NOW_MODE = common dso_local global i32 0, align 4
@CRTC_FORCE_COUNT_NOW_CLEAR = common dso_local global i32 0, align 4
@CRTC0_CRTC_TRIGB_CNTL = common dso_local global i32 0, align 4
@CRTC_TRIGB_SOURCE_SELECT = common dso_local global i32 0, align 4
@TRIGGER_SOURCE_SELECT_LOGIC_ZERO = common dso_local global i32 0, align 4
@CRTC_TRIGB_POLARITY_SELECT = common dso_local global i32 0, align 4
@TRIGGER_POLARITY_SELECT_LOGIC_ZERO = common dso_local global i32 0, align 4
@CRTC_TRIGB_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce120_timing_generator_disable_reset_trigger(%struct.timing_generator* %0) #0 {
  %2 = alloca %struct.timing_generator*, align 8
  %3 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %2, align 8
  %4 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %5 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %4)
  store %struct.dce110_timing_generator* %5, %struct.dce110_timing_generator** %3, align 8
  %6 = load i32, i32* @CRTC0_CRTC_FORCE_COUNT_NOW_CNTL, align 4
  %7 = load i32, i32* @CRTC_FORCE_COUNT_NOW_MODE, align 4
  %8 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CLEAR, align 4
  %9 = call i32 @CRTC_REG_UPDATE_2(i32 %6, i32 %7, i32 0, i32 %8, i32 1)
  %10 = load i32, i32* @CRTC0_CRTC_TRIGB_CNTL, align 4
  %11 = load i32, i32* @CRTC_TRIGB_SOURCE_SELECT, align 4
  %12 = load i32, i32* @TRIGGER_SOURCE_SELECT_LOGIC_ZERO, align 4
  %13 = load i32, i32* @CRTC_TRIGB_POLARITY_SELECT, align 4
  %14 = load i32, i32* @TRIGGER_POLARITY_SELECT_LOGIC_ZERO, align 4
  %15 = load i32, i32* @CRTC_TRIGB_CLEAR, align 4
  %16 = call i32 @CRTC_REG_UPDATE_3(i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 1)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @CRTC_REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CRTC_REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
