; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_enable_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_enable_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_connector_state = type { %struct.drm_connector* }
%struct.drm_connector = type { i32* }

@SDVO_HBUF_INDEX_ELD = common dso_local global i32 0, align 4
@SDVO_HBUF_TX_DISABLED = common dso_local global i32 0, align 4
@SDVO_AUDIO_ELD_VALID = common dso_local global i32 0, align 4
@SDVO_AUDIO_PRESENCE_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_sdvo*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_sdvo_enable_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_enable_audio(%struct.intel_sdvo* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_sdvo*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca i32*, align 8
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %10 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %11 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.drm_display_mode* %12, %struct.drm_display_mode** %7, align 8
  %13 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %14 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %13, i32 0, i32 0
  %15 = load %struct.drm_connector*, %struct.drm_connector** %14, align 8
  store %struct.drm_connector* %15, %struct.drm_connector** %8, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %21 = call i32 @drm_av_sync_delay(%struct.drm_connector* %19, %struct.drm_display_mode* %20)
  %22 = sdiv i32 %21, 2
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %26 = call i32 @intel_sdvo_set_audio_state(%struct.intel_sdvo* %25, i32 0)
  %27 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %28 = load i32, i32* @SDVO_HBUF_INDEX_ELD, align 4
  %29 = load i32, i32* @SDVO_HBUF_TX_DISABLED, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @drm_eld_size(i32* %31)
  %33 = call i32 @intel_sdvo_write_infoframe(%struct.intel_sdvo* %27, i32 %28, i32 %29, i32* %30, i32 %32)
  %34 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %35 = load i32, i32* @SDVO_AUDIO_ELD_VALID, align 4
  %36 = load i32, i32* @SDVO_AUDIO_PRESENCE_DETECT, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @intel_sdvo_set_audio_state(%struct.intel_sdvo* %34, i32 %37)
  ret void
}

declare dso_local i32 @drm_av_sync_delay(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @intel_sdvo_set_audio_state(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_sdvo_write_infoframe(%struct.intel_sdvo*, i32, i32, i32*, i32) #1

declare dso_local i32 @drm_eld_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
