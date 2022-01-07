; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_setup_global_swap_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_setup_global_swap_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32, i32 }
%struct.dcp_gsl_params = type { i32 }
%struct.dce110_timing_generator = type { i32 }

@mmDCP_GSL_CONTROL = common dso_local global i32 0, align 4
@FLIP_READY_BACK_LOOKUP = common dso_local global i32 0, align 4
@DCP_GSL_CONTROL = common dso_local global i32 0, align 4
@DCP_GSL0_EN = common dso_local global i32 0, align 4
@DCP_GSL_MASTER_EN = common dso_local global i32 0, align 4
@HFLIP_READY_DELAY = common dso_local global i32 0, align 4
@DCP_GSL_HSYNC_FLIP_FORCE_DELAY = common dso_local global i32 0, align 4
@HFLIP_CHECK_DELAY = common dso_local global i32 0, align 4
@DCP_GSL_HSYNC_FLIP_CHECK_DELAY = common dso_local global i32 0, align 4
@DCIO_GSL0_CNTL = common dso_local global i32 0, align 4
@DCIO_GSL0_VSYNC_SEL = common dso_local global i32 0, align 4
@DCIO_GSL0_TIMING_SYNC_SEL = common dso_local global i32 0, align 4
@DCIO_GSL0_GLOBAL_UNLOCK_SEL = common dso_local global i32 0, align 4
@mmDCIO_GSL0_CNTL = common dso_local global i32 0, align 4
@mmCRTC_V_TOTAL = common dso_local global i32 0, align 4
@DCP_GSL_SYNC_SOURCE = common dso_local global i32 0, align 4
@CRTC_V_TOTAL = common dso_local global i32 0, align 4
@mmCRTC_GSL_WINDOW = common dso_local global i32 0, align 4
@DCP_GSL_DELAY_SURFACE_UPDATE_PENDING = common dso_local global i32 0, align 4
@mmCRTC_GSL_CONTROL = common dso_local global i32 0, align 4
@CRTC_GSL_CONTROL = common dso_local global i32 0, align 4
@CRTC_GSL_CHECK_LINE_NUM = common dso_local global i32 0, align 4
@VFLIP_READY_DELAY = common dso_local global i32 0, align 4
@CRTC_GSL_FORCE_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_timing_generator_setup_global_swap_lock(%struct.timing_generator* %0, %struct.dcp_gsl_params* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.dcp_gsl_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dce110_timing_generator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.dcp_gsl_params* %1, %struct.dcp_gsl_params** %4, align 8
  %10 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %11 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %10)
  store %struct.dce110_timing_generator* %11, %struct.dce110_timing_generator** %6, align 8
  %12 = load i32, i32* @mmDCP_GSL_CONTROL, align 4
  %13 = call i32 @DCP_REG(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @FLIP_READY_BACK_LOOKUP, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %16 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @dm_read_reg(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @DCP_GSL_CONTROL, align 4
  %22 = load i32, i32* @DCP_GSL0_EN, align 4
  %23 = call i32 @set_reg_field_value(i32 %20, i32 1, i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.dcp_gsl_params*, %struct.dcp_gsl_params** %4, align 8
  %26 = getelementptr inbounds %struct.dcp_gsl_params, %struct.dcp_gsl_params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %29 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @DCP_GSL_CONTROL, align 4
  %34 = load i32, i32* @DCP_GSL_MASTER_EN, align 4
  %35 = call i32 @set_reg_field_value(i32 %24, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @HFLIP_READY_DELAY, align 4
  %38 = load i32, i32* @DCP_GSL_CONTROL, align 4
  %39 = load i32, i32* @DCP_GSL_HSYNC_FLIP_FORCE_DELAY, align 4
  %40 = call i32 @set_reg_field_value(i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @HFLIP_CHECK_DELAY, align 4
  %43 = load i32, i32* @DCP_GSL_CONTROL, align 4
  %44 = load i32, i32* @DCP_GSL_HSYNC_FLIP_CHECK_DELAY, align 4
  %45 = call i32 @set_reg_field_value(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %47 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @mmDCP_GSL_CONTROL, align 4
  %50 = call i32 @CRTC_REG(i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @dm_write_reg(i32 %48, i32 %50, i32 %51)
  store i32 0, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.dcp_gsl_params*, %struct.dcp_gsl_params** %4, align 8
  %55 = getelementptr inbounds %struct.dcp_gsl_params, %struct.dcp_gsl_params* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DCIO_GSL0_CNTL, align 4
  %58 = load i32, i32* @DCIO_GSL0_VSYNC_SEL, align 4
  %59 = call i32 @set_reg_field_value(i32 %53, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @DCIO_GSL0_CNTL, align 4
  %62 = load i32, i32* @DCIO_GSL0_TIMING_SYNC_SEL, align 4
  %63 = call i32 @set_reg_field_value(i32 %60, i32 0, i32 %61, i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @DCIO_GSL0_CNTL, align 4
  %66 = load i32, i32* @DCIO_GSL0_GLOBAL_UNLOCK_SEL, align 4
  %67 = call i32 @set_reg_field_value(i32 %64, i32 0, i32 %65, i32 %66)
  %68 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %69 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @mmDCIO_GSL0_CNTL, align 4
  %72 = call i32 @CRTC_REG(i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @dm_write_reg(i32 %70, i32 %72, i32 %73)
  %75 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %76 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @mmCRTC_V_TOTAL, align 4
  %79 = call i32 @CRTC_REG(i32 %78)
  %80 = call i32 @dm_read_reg(i32 %77, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @DCP_GSL_CONTROL, align 4
  %83 = load i32, i32* @DCP_GSL_SYNC_SOURCE, align 4
  %84 = call i32 @set_reg_field_value(i32 %81, i32 0, i32 %82, i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @CRTC_V_TOTAL, align 4
  %87 = load i32, i32* @CRTC_V_TOTAL, align 4
  %88 = call i32 @get_reg_field_value(i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %90 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @mmCRTC_GSL_WINDOW, align 4
  %93 = call i32 @CRTC_REG(i32 %92)
  %94 = call i32 @dm_write_reg(i32 %91, i32 %93, i32 0)
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @DCP_GSL_CONTROL, align 4
  %97 = load i32, i32* @DCP_GSL_DELAY_SURFACE_UPDATE_PENDING, align 4
  %98 = call i32 @set_reg_field_value(i32 %95, i32 1, i32 %96, i32 %97)
  %99 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %100 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @dm_write_reg(i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* @mmCRTC_GSL_CONTROL, align 4
  %106 = call i32 @CRTC_REG(i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %108 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @dm_read_reg(i32 %109, i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @FLIP_READY_BACK_LOOKUP, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load i32, i32* @CRTC_GSL_CONTROL, align 4
  %117 = load i32, i32* @CRTC_GSL_CHECK_LINE_NUM, align 4
  %118 = call i32 @set_reg_field_value(i32 %112, i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @VFLIP_READY_DELAY, align 4
  %121 = load i32, i32* @CRTC_GSL_CONTROL, align 4
  %122 = load i32, i32* @CRTC_GSL_FORCE_DELAY, align 4
  %123 = call i32 @set_reg_field_value(i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %125 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @dm_write_reg(i32 %126, i32 %127, i32 %128)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @DCP_REG(i32) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

declare dso_local i32 @CRTC_REG(i32) #1

declare dso_local i32 @get_reg_field_value(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
