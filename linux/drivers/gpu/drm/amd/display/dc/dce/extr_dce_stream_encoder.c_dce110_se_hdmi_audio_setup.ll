; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_se_hdmi_audio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_se_hdmi_audio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.audio_info = type { i32 }
%struct.audio_crtc_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_se_hdmi_audio_setup(%struct.stream_encoder* %0, i32 %1, %struct.audio_info* %2, %struct.audio_crtc_info* %3) #0 {
  %5 = alloca %struct.stream_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.audio_info*, align 8
  %8 = alloca %struct.audio_crtc_info*, align 8
  store %struct.stream_encoder* %0, %struct.stream_encoder** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.audio_info* %2, %struct.audio_info** %7, align 8
  store %struct.audio_crtc_info* %3, %struct.audio_crtc_info** %8, align 8
  %9 = load %struct.stream_encoder*, %struct.stream_encoder** %5, align 8
  %10 = call i32 @dce110_se_enable_audio_clock(%struct.stream_encoder* %9, i32 1)
  %11 = load %struct.stream_encoder*, %struct.stream_encoder** %5, align 8
  %12 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %8, align 8
  %13 = call i32 @dce110_se_setup_hdmi_audio(%struct.stream_encoder* %11, %struct.audio_crtc_info* %12)
  %14 = load %struct.stream_encoder*, %struct.stream_encoder** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.audio_info*, %struct.audio_info** %7, align 8
  %17 = call i32 @dce110_se_audio_setup(%struct.stream_encoder* %14, i32 %15, %struct.audio_info* %16)
  ret void
}

declare dso_local i32 @dce110_se_enable_audio_clock(%struct.stream_encoder*, i32) #1

declare dso_local i32 @dce110_se_setup_hdmi_audio(%struct.stream_encoder*, %struct.audio_crtc_info*) #1

declare dso_local i32 @dce110_se_audio_setup(%struct.stream_encoder*, i32, %struct.audio_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
