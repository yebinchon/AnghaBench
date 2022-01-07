; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_meson_venc_hdmi_encoder_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_meson_venc_hdmi_encoder_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.meson_dw_hdmi = type { %struct.meson_drm* }
%struct.meson_drm = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"\22%s\22 vic %d\0A\00", align 1
@VPU_HDMI_FMT_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @meson_venc_hdmi_encoder_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_venc_hdmi_encoder_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.meson_dw_hdmi*, align 8
  %8 = alloca %struct.meson_drm*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %11 = call %struct.meson_dw_hdmi* @encoder_to_meson_dw_hdmi(%struct.drm_encoder* %10)
  store %struct.meson_dw_hdmi* %11, %struct.meson_dw_hdmi** %7, align 8
  %12 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %13 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %12, i32 0, i32 0
  %14 = load %struct.meson_drm*, %struct.meson_drm** %13, align 8
  store %struct.meson_drm* %14, %struct.meson_drm** %8, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = call i32 @drm_match_cea_mode(%struct.drm_display_mode* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %25 = call i32 @meson_venc_hdmi_mode_set(%struct.meson_drm* %22, i32 %23, %struct.drm_display_mode* %24)
  %26 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %28 = call i32 @dw_hdmi_set_vclk(%struct.meson_dw_hdmi* %26, %struct.drm_display_mode* %27)
  %29 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %30 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @VPU_HDMI_FMT_CTRL, align 4
  %33 = call i64 @_REG(i32 %32)
  %34 = add nsw i64 %31, %33
  %35 = call i32 @writel_relaxed(i32 0, i64 %34)
  ret void
}

declare dso_local %struct.meson_dw_hdmi* @encoder_to_meson_dw_hdmi(%struct.drm_encoder*) #1

declare dso_local i32 @drm_match_cea_mode(%struct.drm_display_mode*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @meson_venc_hdmi_mode_set(%struct.meson_drm*, i32, %struct.drm_display_mode*) #1

declare dso_local i32 @dw_hdmi_set_vclk(%struct.meson_dw_hdmi*, %struct.drm_display_mode*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
