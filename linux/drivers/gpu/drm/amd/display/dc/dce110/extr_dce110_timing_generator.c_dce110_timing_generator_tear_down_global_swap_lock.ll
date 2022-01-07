; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_tear_down_global_swap_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_tear_down_global_swap_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dce110_timing_generator = type { i32 }

@mmDCP_GSL_CONTROL = common dso_local global i32 0, align 4
@DCP_GSL_CONTROL = common dso_local global i32 0, align 4
@DCP_GSL0_EN = common dso_local global i32 0, align 4
@DCP_GSL_MASTER_EN = common dso_local global i32 0, align 4
@DCP_GSL_HSYNC_FLIP_FORCE_DELAY = common dso_local global i32 0, align 4
@DCP_GSL_HSYNC_FLIP_CHECK_DELAY = common dso_local global i32 0, align 4
@mmCRTC_V_TOTAL = common dso_local global i32 0, align 4
@DCP_GSL_SYNC_SOURCE = common dso_local global i32 0, align 4
@DCP_GSL_DELAY_SURFACE_UPDATE_PENDING = common dso_local global i32 0, align 4
@mmCRTC_GSL_CONTROL = common dso_local global i32 0, align 4
@CRTC_GSL_CONTROL = common dso_local global i32 0, align 4
@CRTC_GSL_CHECK_LINE_NUM = common dso_local global i32 0, align 4
@CRTC_GSL_FORCE_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_timing_generator_tear_down_global_swap_lock(%struct.timing_generator* %0) #0 {
  %2 = alloca %struct.timing_generator*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dce110_timing_generator*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %2, align 8
  %7 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %8 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %7)
  store %struct.dce110_timing_generator* %8, %struct.dce110_timing_generator** %4, align 8
  %9 = load i32, i32* @mmDCP_GSL_CONTROL, align 4
  %10 = call i64 @DCP_REG(i32 %9)
  store i64 %10, i64* %5, align 8
  store i64 0, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* @DCP_GSL_CONTROL, align 4
  %13 = load i32, i32* @DCP_GSL0_EN, align 4
  %14 = call i32 @set_reg_field_value(i64 %11, i32 0, i32 %12, i32 %13)
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* @DCP_GSL_CONTROL, align 4
  %17 = load i32, i32* @DCP_GSL_MASTER_EN, align 4
  %18 = call i32 @set_reg_field_value(i64 %15, i32 0, i32 %16, i32 %17)
  %19 = load i64, i64* %3, align 8
  %20 = load i32, i32* @DCP_GSL_CONTROL, align 4
  %21 = load i32, i32* @DCP_GSL_HSYNC_FLIP_FORCE_DELAY, align 4
  %22 = call i32 @set_reg_field_value(i64 %19, i32 2, i32 %20, i32 %21)
  %23 = load i64, i64* %3, align 8
  %24 = load i32, i32* @DCP_GSL_CONTROL, align 4
  %25 = load i32, i32* @DCP_GSL_HSYNC_FLIP_CHECK_DELAY, align 4
  %26 = call i32 @set_reg_field_value(i64 %23, i32 6, i32 %24, i32 %25)
  %27 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %28 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @mmCRTC_V_TOTAL, align 4
  %31 = call i64 @CRTC_REG(i32 %30)
  %32 = call i64 @dm_read_reg(i32 %29, i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i32, i32* @DCP_GSL_CONTROL, align 4
  %35 = load i32, i32* @DCP_GSL_SYNC_SOURCE, align 4
  %36 = call i32 @set_reg_field_value(i64 %33, i32 0, i32 %34, i32 %35)
  %37 = load i64, i64* %3, align 8
  %38 = load i32, i32* @DCP_GSL_CONTROL, align 4
  %39 = load i32, i32* @DCP_GSL_DELAY_SURFACE_UPDATE_PENDING, align 4
  %40 = call i32 @set_reg_field_value(i64 %37, i32 0, i32 %38, i32 %39)
  %41 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %42 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @dm_write_reg(i32 %43, i64 %44, i64 %45)
  %47 = load i32, i32* @mmCRTC_GSL_CONTROL, align 4
  %48 = call i64 @CRTC_REG(i32 %47)
  store i64 %48, i64* %5, align 8
  store i64 0, i64* %3, align 8
  %49 = load i64, i64* %3, align 8
  %50 = load i32, i32* @CRTC_GSL_CONTROL, align 4
  %51 = load i32, i32* @CRTC_GSL_CHECK_LINE_NUM, align 4
  %52 = call i32 @set_reg_field_value(i64 %49, i32 0, i32 %50, i32 %51)
  %53 = load i64, i64* %3, align 8
  %54 = load i32, i32* @CRTC_GSL_CONTROL, align 4
  %55 = load i32, i32* @CRTC_GSL_FORCE_DELAY, align 4
  %56 = call i32 @set_reg_field_value(i64 %53, i32 2, i32 %54, i32 %55)
  %57 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %58 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @dm_write_reg(i32 %59, i64 %60, i64 %61)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i64 @DCP_REG(i32) #1

declare dso_local i32 @set_reg_field_value(i64, i32, i32, i32) #1

declare dso_local i64 @dm_read_reg(i32, i64) #1

declare dso_local i64 @CRTC_REG(i32) #1

declare dso_local i32 @dm_write_reg(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
