; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { i32 }
%struct.hdmi_context = type { %struct.TYPE_2__, %struct.drm_device*, %struct.drm_encoder }
%struct.TYPE_2__ = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.exynos_drm_crtc = type { %struct.TYPE_2__* }

@hdmiphy_clk_enable = common dso_local global i32 0, align 4
@exynos_hdmi_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@exynos_hdmi_encoder_helper_funcs = common dso_local global i32 0, align 4
@EXYNOS_DISPLAY_TYPE_HDMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to create connector ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @hdmi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.hdmi_context*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  %11 = alloca %struct.exynos_drm_crtc*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.drm_device*
  store %struct.drm_device* %14, %struct.drm_device** %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.hdmi_context* @dev_get_drvdata(%struct.device* %15)
  store %struct.hdmi_context* %16, %struct.hdmi_context** %9, align 8
  %17 = load %struct.hdmi_context*, %struct.hdmi_context** %9, align 8
  %18 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %17, i32 0, i32 2
  store %struct.drm_encoder* %18, %struct.drm_encoder** %10, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %20 = load %struct.hdmi_context*, %struct.hdmi_context** %9, align 8
  %21 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %20, i32 0, i32 1
  store %struct.drm_device* %19, %struct.drm_device** %21, align 8
  %22 = load i32, i32* @hdmiphy_clk_enable, align 4
  %23 = load %struct.hdmi_context*, %struct.hdmi_context** %9, align 8
  %24 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %28 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %29 = call i32 @drm_encoder_init(%struct.drm_device* %26, %struct.drm_encoder* %27, i32* @exynos_hdmi_encoder_funcs, i32 %28, i32* null)
  %30 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %31 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %30, i32* @exynos_hdmi_encoder_helper_funcs)
  %32 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %33 = load i32, i32* @EXYNOS_DISPLAY_TYPE_HDMI, align 4
  %34 = call i32 @exynos_drm_set_possible_crtcs(%struct.drm_encoder* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %4, align 4
  br label %59

39:                                               ; preds = %3
  %40 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %41 = load i32, i32* @EXYNOS_DISPLAY_TYPE_HDMI, align 4
  %42 = call %struct.exynos_drm_crtc* @exynos_drm_crtc_get_by_type(%struct.drm_device* %40, i32 %41)
  store %struct.exynos_drm_crtc* %42, %struct.exynos_drm_crtc** %11, align 8
  %43 = load %struct.hdmi_context*, %struct.hdmi_context** %9, align 8
  %44 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %43, i32 0, i32 0
  %45 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %11, align 8
  %46 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %45, i32 0, i32 0
  store %struct.TYPE_2__* %44, %struct.TYPE_2__** %46, align 8
  %47 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %48 = call i32 @hdmi_create_connector(%struct.drm_encoder* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @DRM_DEV_ERROR(%struct.device* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %56 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %55)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %51, %37
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.hdmi_context* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @exynos_drm_set_possible_crtcs(%struct.drm_encoder*, i32) #1

declare dso_local %struct.exynos_drm_crtc* @exynos_drm_crtc_get_by_type(%struct.drm_device*, i32) #1

declare dso_local i32 @hdmi_create_connector(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
