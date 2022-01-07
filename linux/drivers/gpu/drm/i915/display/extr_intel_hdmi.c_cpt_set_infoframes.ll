; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_cpt_set_infoframes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_cpt_set_infoframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_hdmi = type { i32 }

@VIDEO_DIP_SELECT_AVI = common dso_local global i32 0, align 4
@VIDEO_DIP_FREQ_VSYNC = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_AVI = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_VENDOR = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_GAMUT = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_SPD = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_GCP = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_AVI = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_SPD = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_VENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, i32, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @cpt_set_infoframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpt_set_infoframes(%struct.intel_encoder* %0, i32 %1, %struct.intel_crtc_state* %2, %struct.drm_connector_state* %3) #0 {
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca %struct.drm_connector_state*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca %struct.intel_crtc*, align 8
  %11 = alloca %struct.intel_hdmi*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.intel_crtc_state* %2, %struct.intel_crtc_state** %7, align 8
  store %struct.drm_connector_state* %3, %struct.drm_connector_state** %8, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %9, align 8
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.intel_crtc* @to_intel_crtc(i32 %22)
  store %struct.intel_crtc* %23, %struct.intel_crtc** %10, align 8
  %24 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %25 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %24, i32 0, i32 0
  %26 = call %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_6__* %25)
  store %struct.intel_hdmi* %26, %struct.intel_hdmi** %11, align 8
  %27 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %28 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @TVIDEO_DIP_CTL(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @I915_READ(i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.intel_hdmi*, %struct.intel_hdmi** %11, align 8
  %34 = call i32 @assert_hdmi_port_disabled(%struct.intel_hdmi* %33)
  %35 = load i32, i32* @VIDEO_DIP_SELECT_AVI, align 4
  %36 = load i32, i32* @VIDEO_DIP_FREQ_VSYNC, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %13, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %68, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %120

48:                                               ; preds = %42
  %49 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %50 = load i32, i32* @VIDEO_DIP_ENABLE_AVI, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @VIDEO_DIP_ENABLE_VENDOR, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @VIDEO_DIP_ENABLE_GAMUT, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @VIDEO_DIP_ENABLE_SPD, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @VIDEO_DIP_ENABLE_GCP, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %13, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @I915_WRITE(i32 %63, i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @POSTING_READ(i32 %66)
  br label %120

68:                                               ; preds = %4
  %69 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %70 = load i32, i32* @VIDEO_DIP_ENABLE_AVI, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %13, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* @VIDEO_DIP_ENABLE_VENDOR, align 4
  %75 = load i32, i32* @VIDEO_DIP_ENABLE_GAMUT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @VIDEO_DIP_ENABLE_SPD, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @VIDEO_DIP_ENABLE_GCP, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %13, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %13, align 4
  %84 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %85 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %86 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %87 = call i64 @intel_hdmi_set_gcp_infoframe(%struct.intel_encoder* %84, %struct.intel_crtc_state* %85, %struct.drm_connector_state* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %68
  %90 = load i32, i32* @VIDEO_DIP_ENABLE_GCP, align 4
  %91 = load i32, i32* %13, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %89, %68
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @I915_WRITE(i32 %94, i32 %95)
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @POSTING_READ(i32 %97)
  %99 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %100 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %101 = load i32, i32* @HDMI_INFOFRAME_TYPE_AVI, align 4
  %102 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %103 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = call i32 @intel_write_infoframe(%struct.intel_encoder* %99, %struct.intel_crtc_state* %100, i32 %101, i32* %104)
  %106 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %107 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %108 = load i32, i32* @HDMI_INFOFRAME_TYPE_SPD, align 4
  %109 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %110 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = call i32 @intel_write_infoframe(%struct.intel_encoder* %106, %struct.intel_crtc_state* %107, i32 %108, i32* %111)
  %113 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %114 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %115 = load i32, i32* @HDMI_INFOFRAME_TYPE_VENDOR, align 4
  %116 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %117 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = call i32 @intel_write_infoframe(%struct.intel_encoder* %113, %struct.intel_crtc_state* %114, i32 %115, i32* %118)
  br label %120

120:                                              ; preds = %93, %48, %47
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_6__*) #1

declare dso_local i32 @TVIDEO_DIP_CTL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @assert_hdmi_port_disabled(%struct.intel_hdmi*) #1

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
