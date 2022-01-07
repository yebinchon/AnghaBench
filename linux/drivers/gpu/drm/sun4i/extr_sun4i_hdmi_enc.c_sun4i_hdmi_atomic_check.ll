; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_enc.c_sun4i_hdmi_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_enc.c_sun4i_hdmi_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_crtc_state = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_connector_state = type { i32 }

@DRM_MODE_FLAG_DBLCLK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* @sun4i_hdmi_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_hdmi_atomic_check(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %9 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %10 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %9, i32 0, i32 0
  store %struct.drm_display_mode* %10, %struct.drm_display_mode** %8, align 8
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %12 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
