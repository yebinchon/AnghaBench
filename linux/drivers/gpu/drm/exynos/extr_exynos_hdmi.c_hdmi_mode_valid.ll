; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32 }
%struct.hdmi_context = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"xres=%d, yres=%d, refresh=%d, intl=%d clock=%d\0A\00", align 1
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@MODE_BAD = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @hdmi_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.hdmi_context*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = call %struct.hdmi_context* @connector_to_hdmi(%struct.drm_connector* %8)
  store %struct.hdmi_context* %9, %struct.hdmi_context** %6, align 8
  %10 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %11 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 1000
  %34 = call i32 @DRM_DEV_DEBUG_KMS(i32 %12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %29, i32 %33)
  %35 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 1000
  %40 = call i32 @hdmi_find_phy_conf(%struct.hdmi_context* %35, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @MODE_BAD, align 4
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %2
  %46 = load i32, i32* @MODE_OK, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.hdmi_context* @connector_to_hdmi(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hdmi_find_phy_conf(%struct.hdmi_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
