; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc.c_meson_venc_hdmi_supported_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc.c_meson_venc_hdmi_supported_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32 }

@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@MODE_BAD = common dso_local global i32 0, align 4
@MODE_BAD_HVALUE = common dso_local global i32 0, align 4
@MODE_BAD_VVALUE = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @meson_venc_hdmi_supported_mode(%struct.drm_display_mode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  %4 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %5 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %8 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %6, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @MODE_BAD, align 4
  store i32 %18, i32* %2, align 4
  br label %45

19:                                               ; preds = %1
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 640
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 1920
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %19
  %30 = load i32, i32* @MODE_BAD_HVALUE, align 4
  store i32 %30, i32* %2, align 4
  br label %45

31:                                               ; preds = %24
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 480
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 1200
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %31
  %42 = load i32, i32* @MODE_BAD_VVALUE, align 4
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @MODE_OK, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %41, %29, %17
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
