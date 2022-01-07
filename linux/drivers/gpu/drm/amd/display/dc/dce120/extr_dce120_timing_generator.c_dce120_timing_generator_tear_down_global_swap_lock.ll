; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_tear_down_global_swap_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_tear_down_global_swap_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dce110_timing_generator = type { i32 }

@DCP0_DCP_GSL_CONTROL = common dso_local global i32 0, align 4
@DCP0_DCP_GSL_CONTROL__DCP_GSL0_EN = common dso_local global i32 0, align 4
@DCP0_DCP_GSL_CONTROL__DCP_GSL_MASTER_EN = common dso_local global i32 0, align 4
@DCP0_DCP_GSL_CONTROL__DCP_GSL_HSYNC_FLIP_FORCE_DELAY = common dso_local global i32 0, align 4
@HFLIP_READY_DELAY = common dso_local global i32 0, align 4
@DCP0_DCP_GSL_CONTROL__DCP_GSL_HSYNC_FLIP_CHECK_DELAY = common dso_local global i32 0, align 4
@HFLIP_CHECK_DELAY = common dso_local global i32 0, align 4
@DCP0_DCP_GSL_CONTROL__DCP_GSL_SYNC_SOURCE = common dso_local global i32 0, align 4
@DCP0_DCP_GSL_CONTROL__DCP_GSL_DELAY_SURFACE_UPDATE_PENDING = common dso_local global i32 0, align 4
@CRTC0_CRTC_GSL_CONTROL = common dso_local global i32 0, align 4
@CRTC_GSL_CHECK_LINE_NUM = common dso_local global i32 0, align 4
@CRTC_GSL_FORCE_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce120_timing_generator_tear_down_global_swap_lock(%struct.timing_generator* %0) #0 {
  %2 = alloca %struct.timing_generator*, align 8
  %3 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %2, align 8
  %4 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %5 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %4)
  store %struct.dce110_timing_generator* %5, %struct.dce110_timing_generator** %3, align 8
  %6 = load i32, i32* @DCP0_DCP_GSL_CONTROL, align 4
  %7 = load i32, i32* @DCP0_DCP_GSL_CONTROL__DCP_GSL0_EN, align 4
  %8 = call i32 @FD(i32 %7)
  %9 = load i32, i32* @DCP0_DCP_GSL_CONTROL__DCP_GSL_MASTER_EN, align 4
  %10 = call i32 @FD(i32 %9)
  %11 = load i32, i32* @DCP0_DCP_GSL_CONTROL__DCP_GSL_HSYNC_FLIP_FORCE_DELAY, align 4
  %12 = call i32 @FD(i32 %11)
  %13 = load i32, i32* @HFLIP_READY_DELAY, align 4
  %14 = load i32, i32* @DCP0_DCP_GSL_CONTROL__DCP_GSL_HSYNC_FLIP_CHECK_DELAY, align 4
  %15 = call i32 @FD(i32 %14)
  %16 = load i32, i32* @HFLIP_CHECK_DELAY, align 4
  %17 = load i32, i32* @DCP0_DCP_GSL_CONTROL__DCP_GSL_SYNC_SOURCE, align 4
  %18 = call i32 @FD(i32 %17)
  %19 = load i32, i32* @DCP0_DCP_GSL_CONTROL__DCP_GSL_DELAY_SURFACE_UPDATE_PENDING, align 4
  %20 = call i32 @FD(i32 %19)
  %21 = call i32 @CRTC_REG_SET_N(i32 %6, i32 6, i32 %8, i32 0, i32 %10, i32 0, i32 %12, i32 %13, i32 %15, i32 %16, i32 %18, i32 0, i32 %20, i32 0)
  %22 = load i32, i32* @CRTC0_CRTC_GSL_CONTROL, align 4
  %23 = load i32, i32* @CRTC_GSL_CHECK_LINE_NUM, align 4
  %24 = load i32, i32* @CRTC_GSL_FORCE_DELAY, align 4
  %25 = call i32 @CRTC_REG_SET_2(i32 %22, i32 %23, i32 0, i32 %24, i32 2)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @CRTC_REG_SET_N(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FD(i32) #1

declare dso_local i32 @CRTC_REG_SET_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
