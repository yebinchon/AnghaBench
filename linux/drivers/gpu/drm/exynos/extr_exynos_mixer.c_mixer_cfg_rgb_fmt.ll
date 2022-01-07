; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_cfg_rgb_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_cfg_rgb_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_context = type { i32 }
%struct.drm_display_mode = type { i32 }

@MXR_CFG_RGB601 = common dso_local global i32 0, align 4
@MXR_CFG_RGB709 = common dso_local global i32 0, align 4
@MXR_CM_COEFF_Y = common dso_local global i32 0, align 4
@MXR_CM_COEFF_RGB_FULL = common dso_local global i32 0, align 4
@MXR_CM_COEFF_CB = common dso_local global i32 0, align 4
@MXR_CM_COEFF_CR = common dso_local global i32 0, align 4
@HDMI_QUANTIZATION_RANGE_FULL = common dso_local global i32 0, align 4
@MXR_CFG_QUANT_RANGE_FULL = common dso_local global i32 0, align 4
@MXR_CFG_QUANT_RANGE_LIMITED = common dso_local global i32 0, align 4
@MXR_CFG = common dso_local global i32 0, align 4
@MXR_CFG_RGB_FMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mixer_context*, %struct.drm_display_mode*)* @mixer_cfg_rgb_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_cfg_rgb_fmt(%struct.mixer_context* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.mixer_context*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mixer_context* %0, %struct.mixer_context** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %7 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %8 = call i32 @drm_default_rgb_quant_range(%struct.drm_display_mode* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %10 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 720
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @MXR_CFG_RGB601, align 4
  store i32 %14, i32* %6, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load i32, i32* @MXR_CFG_RGB709, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %18 = load i32, i32* @MXR_CM_COEFF_Y, align 4
  %19 = call i32 @MXR_CSC_CT(double 1.840000e-01, double 6.140000e-01, double 6.300000e-02)
  %20 = load i32, i32* @MXR_CM_COEFF_RGB_FULL, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @mixer_reg_write(%struct.mixer_context* %17, i32 %18, i32 %21)
  %23 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %24 = load i32, i32* @MXR_CM_COEFF_CB, align 4
  %25 = call i32 @MXR_CSC_CT(double -1.020000e-01, double -3.380000e-01, double 4.400000e-01)
  %26 = call i32 @mixer_reg_write(%struct.mixer_context* %23, i32 %24, i32 %25)
  %27 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %28 = load i32, i32* @MXR_CM_COEFF_CR, align 4
  %29 = call i32 @MXR_CSC_CT(double 4.400000e-01, double -3.990000e-01, double -4.000000e-02)
  %30 = call i32 @mixer_reg_write(%struct.mixer_context* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %15, %13
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @HDMI_QUANTIZATION_RANGE_FULL, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @MXR_CFG_QUANT_RANGE_FULL, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @MXR_CFG_QUANT_RANGE_LIMITED, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %45 = load i32, i32* @MXR_CFG, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MXR_CFG_RGB_FMT_MASK, align 4
  %48 = call i32 @mixer_reg_writemask(%struct.mixer_context* %44, i32 %45, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @drm_default_rgb_quant_range(%struct.drm_display_mode*) #1

declare dso_local i32 @mixer_reg_write(%struct.mixer_context*, i32, i32) #1

declare dso_local i32 @MXR_CSC_CT(double, double, double) #1

declare dso_local i32 @mixer_reg_writemask(%struct.mixer_context*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
