; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-i2s-audio.c_snd_dw_hdmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-i2s-audio.c_snd_dw_hdmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.dw_hdmi_i2s_audio_data* }
%struct.dw_hdmi_i2s_audio_data = type { i32 }
%struct.platform_device_info = type { i32, i32, %struct.hdmi_codec_pdata*, i32, i32, i32 }
%struct.hdmi_codec_pdata = type { i32, i32, %struct.dw_hdmi_i2s_audio_data*, i32* }

@dw_hdmi_i2s_ops = common dso_local global i32 0, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@HDMI_CODEC_DRV_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @snd_dw_hdmi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_dw_hdmi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dw_hdmi_i2s_audio_data*, align 8
  %5 = alloca %struct.platform_device_info, align 8
  %6 = alloca %struct.hdmi_codec_pdata, align 8
  %7 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.dw_hdmi_i2s_audio_data*, %struct.dw_hdmi_i2s_audio_data** %10, align 8
  store %struct.dw_hdmi_i2s_audio_data* %11, %struct.dw_hdmi_i2s_audio_data** %4, align 8
  %12 = getelementptr inbounds %struct.hdmi_codec_pdata, %struct.hdmi_codec_pdata* %6, i32 0, i32 3
  store i32* @dw_hdmi_i2s_ops, i32** %12, align 8
  %13 = getelementptr inbounds %struct.hdmi_codec_pdata, %struct.hdmi_codec_pdata* %6, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.hdmi_codec_pdata, %struct.hdmi_codec_pdata* %6, i32 0, i32 1
  store i32 8, i32* %14, align 4
  %15 = load %struct.dw_hdmi_i2s_audio_data*, %struct.dw_hdmi_i2s_audio_data** %4, align 8
  %16 = getelementptr inbounds %struct.hdmi_codec_pdata, %struct.hdmi_codec_pdata* %6, i32 0, i32 2
  store %struct.dw_hdmi_i2s_audio_data* %15, %struct.dw_hdmi_i2s_audio_data** %16, align 8
  %17 = call i32 @memset(%struct.platform_device_info* %5, i32 0, i32 32)
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %5, i32 0, i32 5
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %24 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %5, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @HDMI_CODEC_DRV_NAME, align 4
  %26 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %5, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %5, i32 0, i32 2
  store %struct.hdmi_codec_pdata* %6, %struct.hdmi_codec_pdata** %27, align 8
  %28 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %5, i32 0, i32 0
  store i32 24, i32* %28, align 8
  %29 = call i32 @DMA_BIT_MASK(i32 32)
  %30 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %5, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = call %struct.platform_device* @platform_device_register_full(%struct.platform_device_info* %5)
  store %struct.platform_device* %31, %struct.platform_device** %7, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %33 = call i64 @IS_ERR(%struct.platform_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %37 = call i32 @PTR_ERR(%struct.platform_device* %36)
  store i32 %37, i32* %2, align 4
  br label %43

38:                                               ; preds = %1
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %42 = call i32 @dev_set_drvdata(%struct.TYPE_2__* %40, %struct.platform_device* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @memset(%struct.platform_device_info*, i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.platform_device* @platform_device_register_full(%struct.platform_device_info*) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_2__*, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
