; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_setup_global_swap_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_setup_global_swap_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i64, i32 }
%struct.dcp_gsl_params = type { i64 }
%struct.dce110_timing_generator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmCRTC0_CRTC_V_TOTAL = common dso_local global i32 0, align 4
@CRTC0_CRTC_V_TOTAL = common dso_local global i32 0, align 4
@CRTC_V_TOTAL = common dso_local global i32 0, align 4
@mmCRTC0_CRTC_GSL_WINDOW = common dso_local global i32 0, align 4
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
@FLIP_READY_BACK_LOOKUP = common dso_local global i64 0, align 8
@CRTC_GSL_FORCE_DELAY = common dso_local global i32 0, align 4
@VFLIP_READY_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce120_timing_generator_setup_global_swap_lock(%struct.timing_generator* %0, %struct.dcp_gsl_params* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.dcp_gsl_params*, align 8
  %5 = alloca %struct.dce110_timing_generator*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.dcp_gsl_params* %1, %struct.dcp_gsl_params** %4, align 8
  %8 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %9 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %8)
  store %struct.dce110_timing_generator* %9, %struct.dce110_timing_generator** %5, align 8
  %10 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %11 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @mmCRTC0_CRTC_V_TOTAL, align 4
  %14 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %15 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @dm_read_reg_soc15(i32 %12, i32 %13, i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @CRTC0_CRTC_V_TOTAL, align 4
  %21 = load i32, i32* @CRTC_V_TOTAL, align 4
  %22 = call i64 @get_reg_field_value(i64 %19, i32 %20, i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %24 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @mmCRTC0_CRTC_GSL_WINDOW, align 4
  %27 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %28 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dm_write_reg_soc15(i32 %25, i32 %26, i32 %30, i32 0)
  %32 = load i32, i32* @DCP0_DCP_GSL_CONTROL, align 4
  %33 = load i32, i32* @DCP0_DCP_GSL_CONTROL__DCP_GSL0_EN, align 4
  %34 = call i32 @FD(i32 %33)
  %35 = load i32, i32* @DCP0_DCP_GSL_CONTROL__DCP_GSL_MASTER_EN, align 4
  %36 = call i32 @FD(i32 %35)
  %37 = load %struct.dcp_gsl_params*, %struct.dcp_gsl_params** %4, align 8
  %38 = getelementptr inbounds %struct.dcp_gsl_params, %struct.dcp_gsl_params* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %41 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* @DCP0_DCP_GSL_CONTROL__DCP_GSL_HSYNC_FLIP_FORCE_DELAY, align 4
  %46 = call i32 @FD(i32 %45)
  %47 = load i32, i32* @HFLIP_READY_DELAY, align 4
  %48 = load i32, i32* @DCP0_DCP_GSL_CONTROL__DCP_GSL_HSYNC_FLIP_CHECK_DELAY, align 4
  %49 = call i32 @FD(i32 %48)
  %50 = load i32, i32* @HFLIP_CHECK_DELAY, align 4
  %51 = load i32, i32* @DCP0_DCP_GSL_CONTROL__DCP_GSL_SYNC_SOURCE, align 4
  %52 = call i32 @FD(i32 %51)
  %53 = load i32, i32* @DCP0_DCP_GSL_CONTROL__DCP_GSL_DELAY_SURFACE_UPDATE_PENDING, align 4
  %54 = call i32 @FD(i32 %53)
  %55 = call i32 @CRTC_REG_UPDATE_N(i32 %32, i32 6, i32 %34, i32 1, i32 %36, i32 %44, i32 %46, i32 %47, i32 %49, i32 %50, i32 %52, i32 0, i32 %54, i32 1)
  %56 = load i32, i32* @CRTC0_CRTC_GSL_CONTROL, align 4
  %57 = load i32, i32* @CRTC_GSL_CHECK_LINE_NUM, align 4
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @FLIP_READY_BACK_LOOKUP, align 8
  %60 = sub nsw i64 %58, %59
  %61 = load i32, i32* @CRTC_GSL_FORCE_DELAY, align 4
  %62 = load i32, i32* @VFLIP_READY_DELAY, align 4
  %63 = call i32 @CRTC_REG_SET_2(i32 %56, i32 %57, i64 %60, i32 %61, i32 %62)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i64 @dm_read_reg_soc15(i32, i32, i32) #1

declare dso_local i64 @get_reg_field_value(i64, i32, i32) #1

declare dso_local i32 @dm_write_reg_soc15(i32, i32, i32, i32) #1

declare dso_local i32 @CRTC_REG_UPDATE_N(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FD(i32) #1

declare dso_local i32 @CRTC_REG_SET_2(i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
