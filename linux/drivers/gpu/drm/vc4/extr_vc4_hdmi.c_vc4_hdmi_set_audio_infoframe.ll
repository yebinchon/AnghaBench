; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_set_audio_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_set_audio_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.vc4_dev* }
%struct.vc4_dev = type { %struct.vc4_hdmi* }
%struct.vc4_hdmi = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%union.hdmi_infoframe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@HDMI_AUDIO_CODING_TYPE_STREAM = common dso_local global i32 0, align 4
@HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM = common dso_local global i32 0, align 4
@HDMI_AUDIO_SAMPLE_SIZE_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @vc4_hdmi_set_audio_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_hdmi_set_audio_infoframe(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.vc4_dev*, align 8
  %5 = alloca %struct.vc4_hdmi*, align 8
  %6 = alloca %union.hdmi_infoframe, align 4
  %7 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.vc4_dev*, %struct.vc4_dev** %12, align 8
  store %struct.vc4_dev* %13, %struct.vc4_dev** %4, align 8
  %14 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %15 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %14, i32 0, i32 0
  %16 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %15, align 8
  store %struct.vc4_hdmi* %16, %struct.vc4_hdmi** %5, align 8
  %17 = bitcast %union.hdmi_infoframe* %6 to %struct.TYPE_4__*
  %18 = call i32 @hdmi_audio_infoframe_init(%struct.TYPE_4__* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @HDMI_AUDIO_CODING_TYPE_STREAM, align 4
  %20 = bitcast %union.hdmi_infoframe* %6 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM, align 4
  %23 = bitcast %union.hdmi_infoframe* %6 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @HDMI_AUDIO_SAMPLE_SIZE_STREAM, align 4
  %26 = bitcast %union.hdmi_infoframe* %6 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %5, align 8
  %29 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = bitcast %union.hdmi_infoframe* %6 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %35 = call i32 @vc4_hdmi_write_infoframe(%struct.drm_encoder* %34, %union.hdmi_infoframe* %6)
  ret void
}

declare dso_local i32 @hdmi_audio_infoframe_init(%struct.TYPE_4__*) #1

declare dso_local i32 @vc4_hdmi_write_infoframe(%struct.drm_encoder*, %union.hdmi_infoframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
