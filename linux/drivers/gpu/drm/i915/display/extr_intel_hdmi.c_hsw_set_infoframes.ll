; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_hsw_set_infoframes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_hsw_set_infoframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }

@VIDEO_DIP_ENABLE_VSC_HSW = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_AVI_HSW = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_GCP_HSW = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_VS_HSW = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_GMP_HSW = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_SPD_HSW = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_DRM_GLK = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_AVI = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_SPD = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_VENDOR = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_DRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, i32, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @hsw_set_infoframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_set_infoframes(%struct.intel_encoder* %0, i32 %1, %struct.intel_crtc_state* %2, %struct.drm_connector_state* %3) #0 {
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca %struct.drm_connector_state*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.intel_crtc_state* %2, %struct.intel_crtc_state** %7, align 8
  store %struct.drm_connector_state* %3, %struct.drm_connector_state** %8, align 8
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %13 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %9, align 8
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %18 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @HSW_TVIDEO_DIP_CTL(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @I915_READ(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @assert_hdmi_transcoder_func_disabled(%struct.drm_i915_private* %23, i32 %26)
  %28 = load i32, i32* @VIDEO_DIP_ENABLE_VSC_HSW, align 4
  %29 = load i32, i32* @VIDEO_DIP_ENABLE_AVI_HSW, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @VIDEO_DIP_ENABLE_GCP_HSW, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @VIDEO_DIP_ENABLE_VS_HSW, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @VIDEO_DIP_ENABLE_GMP_HSW, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @VIDEO_DIP_ENABLE_SPD_HSW, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @VIDEO_DIP_ENABLE_DRM_GLK, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @I915_WRITE(i32 %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @POSTING_READ(i32 %50)
  br label %96

52:                                               ; preds = %4
  %53 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %55 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %56 = call i64 @intel_hdmi_set_gcp_infoframe(%struct.intel_encoder* %53, %struct.intel_crtc_state* %54, %struct.drm_connector_state* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* @VIDEO_DIP_ENABLE_GCP_HSW, align 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %58, %52
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @I915_WRITE(i32 %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @POSTING_READ(i32 %66)
  %68 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %69 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %70 = load i32, i32* @HDMI_INFOFRAME_TYPE_AVI, align 4
  %71 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %72 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = call i32 @intel_write_infoframe(%struct.intel_encoder* %68, %struct.intel_crtc_state* %69, i32 %70, i32* %73)
  %75 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %76 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %77 = load i32, i32* @HDMI_INFOFRAME_TYPE_SPD, align 4
  %78 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %79 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = call i32 @intel_write_infoframe(%struct.intel_encoder* %75, %struct.intel_crtc_state* %76, i32 %77, i32* %80)
  %82 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %83 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %84 = load i32, i32* @HDMI_INFOFRAME_TYPE_VENDOR, align 4
  %85 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %86 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = call i32 @intel_write_infoframe(%struct.intel_encoder* %82, %struct.intel_crtc_state* %83, i32 %84, i32* %87)
  %89 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %90 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %91 = load i32, i32* @HDMI_INFOFRAME_TYPE_DRM, align 4
  %92 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %93 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = call i32 @intel_write_infoframe(%struct.intel_encoder* %89, %struct.intel_crtc_state* %90, i32 %91, i32* %94)
  br label %96

96:                                               ; preds = %62, %46
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @HSW_TVIDEO_DIP_CTL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @assert_hdmi_transcoder_func_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i64 @intel_hdmi_set_gcp_infoframe(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i32 @intel_write_infoframe(%struct.intel_encoder*, %struct.intel_crtc_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
