; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_hdmi.c_cdv_hdmi_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_hdmi.c_cdv_hdmi_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_crtc*, %struct.drm_device* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.gma_encoder = type { %struct.mid_intel_hdmi_priv* }
%struct.mid_intel_hdmi_priv = type { i32, i64 }
%struct.gma_crtc = type { i32 }

@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@HDMI_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@HDMI_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@HDMIB_PIPE_B_SELECT = common dso_local global i32 0, align 4
@HDMI_AUDIO_ENABLE = common dso_local global i32 0, align 4
@HDMI_NULL_PACKETS_DURING_VSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @cdv_hdmi_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_hdmi_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.gma_encoder*, align 8
  %9 = alloca %struct.mid_intel_hdmi_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_crtc*, align 8
  %12 = alloca %struct.gma_crtc*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 1
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %7, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %17 = call %struct.gma_encoder* @to_gma_encoder(%struct.drm_encoder* %16)
  store %struct.gma_encoder* %17, %struct.gma_encoder** %8, align 8
  %18 = load %struct.gma_encoder*, %struct.gma_encoder** %8, align 8
  %19 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %18, i32 0, i32 0
  %20 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %19, align 8
  store %struct.mid_intel_hdmi_priv* %20, %struct.mid_intel_hdmi_priv** %9, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %22, align 8
  store %struct.drm_crtc* %23, %struct.drm_crtc** %11, align 8
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  %25 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %24)
  store %struct.gma_crtc* %25, %struct.gma_crtc** %12, align 8
  store i32 2048, i32* %10, align 4
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* @HDMI_VSYNC_ACTIVE_HIGH, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %32, %3
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @HDMI_HSYNC_ACTIVE_HIGH, align 4
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.gma_crtc*, %struct.gma_crtc** %12, align 8
  %49 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @HDMIB_PIPE_B_SELECT, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %9, align 8
  %58 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* @HDMI_AUDIO_ENABLE, align 4
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* @HDMI_NULL_PACKETS_DURING_VSYNC, align 4
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %61, %56
  %69 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %9, align 8
  %70 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @REG_WRITE(i32 %71, i32 %72)
  %74 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %9, align 8
  %75 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @REG_READ(i32 %76)
  ret void
}

declare dso_local %struct.gma_encoder* @to_gma_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
