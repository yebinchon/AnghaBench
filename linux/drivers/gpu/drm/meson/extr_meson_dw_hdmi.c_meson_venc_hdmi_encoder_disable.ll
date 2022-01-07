; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_meson_venc_hdmi_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_meson_venc_hdmi_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.meson_dw_hdmi = type { %struct.meson_drm* }
%struct.meson_drm = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@VPU_HDMI_SETTING = common dso_local global i32 0, align 4
@ENCI_VIDEO_EN = common dso_local global i32 0, align 4
@ENCP_VIDEO_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @meson_venc_hdmi_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_venc_hdmi_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.meson_dw_hdmi*, align 8
  %4 = alloca %struct.meson_drm*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %6 = call %struct.meson_dw_hdmi* @encoder_to_meson_dw_hdmi(%struct.drm_encoder* %5)
  store %struct.meson_dw_hdmi* %6, %struct.meson_dw_hdmi** %3, align 8
  %7 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %7, i32 0, i32 0
  %9 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  store %struct.meson_drm* %9, %struct.meson_drm** %4, align 8
  %10 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %12 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @VPU_HDMI_SETTING, align 4
  %15 = call i64 @_REG(i32 %14)
  %16 = add nsw i64 %13, %15
  %17 = call i32 @writel_bits_relaxed(i32 3, i32 0, i64 %16)
  %18 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %19 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @ENCI_VIDEO_EN, align 4
  %22 = call i64 @_REG(i32 %21)
  %23 = add nsw i64 %20, %22
  %24 = call i32 @writel_relaxed(i32 0, i64 %23)
  %25 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %26 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @ENCP_VIDEO_EN, align 4
  %29 = call i64 @_REG(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = call i32 @writel_relaxed(i32 0, i64 %30)
  ret void
}

declare dso_local %struct.meson_dw_hdmi* @encoder_to_meson_dw_hdmi(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

declare dso_local i64 @_REG(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
