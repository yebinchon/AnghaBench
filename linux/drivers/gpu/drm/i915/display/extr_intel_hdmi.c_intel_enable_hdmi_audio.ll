; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_enable_hdmi_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_enable_hdmi_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_crtc = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Enabling HDMI audio on pipe %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_enable_hdmi_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_hdmi_audio(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %9 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.intel_crtc* @to_intel_crtc(i32 %11)
  store %struct.intel_crtc* %12, %struct.intel_crtc** %7, align 8
  %13 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %14 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %21 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pipe_name(i32 %22)
  %24 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %27 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %28 = call i32 @intel_audio_codec_enable(%struct.intel_encoder* %25, %struct.intel_crtc_state* %26, %struct.drm_connector_state* %27)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @intel_audio_codec_enable(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
