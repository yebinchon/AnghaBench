; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_output_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_output_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32, %struct.hdmi_audio_param }
%struct.hdmi_audio_param = type { i32, i32, i32, i32, i32, i32 }

@HDMI_COLORSPACE_RGB = common dso_local global i32 0, align 4
@HDMI_AUDIO_CODING_TYPE_PCM = common dso_local global i32 0, align 4
@HDMI_AUDIO_SAMPLE_SIZE_16 = common dso_local global i32 0, align 4
@HDMI_AUD_INPUT_I2S = common dso_local global i32 0, align 4
@HDMI_I2S_MODE_I2S_24BIT = common dso_local global i32 0, align 4
@HDMI_AUD_MCLK_128FS = common dso_local global i32 0, align 4
@HDMI_AUD_CHAN_TYPE_2_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hdmi*)* @mtk_hdmi_output_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_output_init(%struct.mtk_hdmi* %0) #0 {
  %2 = alloca %struct.mtk_hdmi*, align 8
  %3 = alloca %struct.hdmi_audio_param*, align 8
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %2, align 8
  %4 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %4, i32 0, i32 1
  store %struct.hdmi_audio_param* %5, %struct.hdmi_audio_param** %3, align 8
  %6 = load i32, i32* @HDMI_COLORSPACE_RGB, align 4
  %7 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %8 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @HDMI_AUDIO_CODING_TYPE_PCM, align 4
  %10 = load %struct.hdmi_audio_param*, %struct.hdmi_audio_param** %3, align 8
  %11 = getelementptr inbounds %struct.hdmi_audio_param, %struct.hdmi_audio_param* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @HDMI_AUDIO_SAMPLE_SIZE_16, align 4
  %13 = load %struct.hdmi_audio_param*, %struct.hdmi_audio_param** %3, align 8
  %14 = getelementptr inbounds %struct.hdmi_audio_param, %struct.hdmi_audio_param* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @HDMI_AUD_INPUT_I2S, align 4
  %16 = load %struct.hdmi_audio_param*, %struct.hdmi_audio_param** %3, align 8
  %17 = getelementptr inbounds %struct.hdmi_audio_param, %struct.hdmi_audio_param* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @HDMI_I2S_MODE_I2S_24BIT, align 4
  %19 = load %struct.hdmi_audio_param*, %struct.hdmi_audio_param** %3, align 8
  %20 = getelementptr inbounds %struct.hdmi_audio_param, %struct.hdmi_audio_param* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @HDMI_AUD_MCLK_128FS, align 4
  %22 = load %struct.hdmi_audio_param*, %struct.hdmi_audio_param** %3, align 8
  %23 = getelementptr inbounds %struct.hdmi_audio_param, %struct.hdmi_audio_param* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @HDMI_AUD_CHAN_TYPE_2_0, align 4
  %25 = load %struct.hdmi_audio_param*, %struct.hdmi_audio_param** %3, align 8
  %26 = getelementptr inbounds %struct.hdmi_audio_param, %struct.hdmi_audio_param* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
