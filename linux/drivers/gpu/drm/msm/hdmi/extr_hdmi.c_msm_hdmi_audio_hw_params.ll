; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi.c_msm_hdmi_audio_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi.c_msm_hdmi_audio_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdmi_codec_daifmt = type { i32 }
%struct.hdmi_codec_params = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hdmi = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%u Hz, %d bit, %d channels\0A\00", align 1
@MSM_HDMI_AUDIO_CHANNEL_2 = common dso_local global i32 0, align 4
@MSM_HDMI_AUDIO_CHANNEL_4 = common dso_local global i32 0, align 4
@MSM_HDMI_AUDIO_CHANNEL_6 = common dso_local global i32 0, align 4
@MSM_HDMI_AUDIO_CHANNEL_8 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HDMI_SAMPLE_RATE_32KHZ = common dso_local global i32 0, align 4
@HDMI_SAMPLE_RATE_44_1KHZ = common dso_local global i32 0, align 4
@HDMI_SAMPLE_RATE_48KHZ = common dso_local global i32 0, align 4
@HDMI_SAMPLE_RATE_88_2KHZ = common dso_local global i32 0, align 4
@HDMI_SAMPLE_RATE_96KHZ = common dso_local global i32 0, align 4
@HDMI_SAMPLE_RATE_176_4KHZ = common dso_local global i32 0, align 4
@HDMI_SAMPLE_RATE_192KHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"rate[%d] not supported!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_params*)* @msm_hdmi_audio_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_hdmi_audio_hw_params(%struct.device* %0, i8* %1, %struct.hdmi_codec_daifmt* %2, %struct.hdmi_codec_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hdmi_codec_daifmt*, align 8
  %9 = alloca %struct.hdmi_codec_params*, align 8
  %10 = alloca %struct.hdmi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.hdmi_codec_daifmt* %2, %struct.hdmi_codec_daifmt** %8, align 8
  store %struct.hdmi_codec_params* %3, %struct.hdmi_codec_params** %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.hdmi* @dev_get_drvdata(%struct.device* %16)
  store %struct.hdmi* %17, %struct.hdmi** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load %struct.hdmi_codec_params*, %struct.hdmi_codec_params** %9, align 8
  %20 = getelementptr inbounds %struct.hdmi_codec_params, %struct.hdmi_codec_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hdmi_codec_params*, %struct.hdmi_codec_params** %9, align 8
  %23 = getelementptr inbounds %struct.hdmi_codec_params, %struct.hdmi_codec_params* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hdmi_codec_params*, %struct.hdmi_codec_params** %9, align 8
  %26 = getelementptr inbounds %struct.hdmi_codec_params, %struct.hdmi_codec_params* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DRM_DEV_DEBUG(%struct.device* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %28)
  %30 = load %struct.hdmi_codec_params*, %struct.hdmi_codec_params** %9, align 8
  %31 = getelementptr inbounds %struct.hdmi_codec_params, %struct.hdmi_codec_params* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %42 [
    i32 2, label %34
    i32 4, label %36
    i32 6, label %38
    i32 8, label %40
  ]

34:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  %35 = load i32, i32* @MSM_HDMI_AUDIO_CHANNEL_2, align 4
  store i32 %35, i32* %11, align 4
  br label %45

36:                                               ; preds = %4
  store i32 3, i32* %12, align 4
  %37 = load i32, i32* @MSM_HDMI_AUDIO_CHANNEL_4, align 4
  store i32 %37, i32* %11, align 4
  br label %45

38:                                               ; preds = %4
  store i32 11, i32* %12, align 4
  %39 = load i32, i32* @MSM_HDMI_AUDIO_CHANNEL_6, align 4
  store i32 %39, i32* %11, align 4
  br label %45

40:                                               ; preds = %4
  store i32 31, i32* %12, align 4
  %41 = load i32, i32* @MSM_HDMI_AUDIO_CHANNEL_8, align 4
  store i32 %41, i32* %11, align 4
  br label %45

42:                                               ; preds = %4
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %81

45:                                               ; preds = %40, %38, %36, %34
  %46 = load %struct.hdmi_codec_params*, %struct.hdmi_codec_params** %9, align 8
  %47 = getelementptr inbounds %struct.hdmi_codec_params, %struct.hdmi_codec_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %63 [
    i32 32000, label %49
    i32 44100, label %51
    i32 48000, label %53
    i32 88200, label %55
    i32 96000, label %57
    i32 176400, label %59
    i32 192000, label %61
  ]

49:                                               ; preds = %45
  %50 = load i32, i32* @HDMI_SAMPLE_RATE_32KHZ, align 4
  store i32 %50, i32* %13, align 4
  br label %71

51:                                               ; preds = %45
  %52 = load i32, i32* @HDMI_SAMPLE_RATE_44_1KHZ, align 4
  store i32 %52, i32* %13, align 4
  br label %71

53:                                               ; preds = %45
  %54 = load i32, i32* @HDMI_SAMPLE_RATE_48KHZ, align 4
  store i32 %54, i32* %13, align 4
  br label %71

55:                                               ; preds = %45
  %56 = load i32, i32* @HDMI_SAMPLE_RATE_88_2KHZ, align 4
  store i32 %56, i32* %13, align 4
  br label %71

57:                                               ; preds = %45
  %58 = load i32, i32* @HDMI_SAMPLE_RATE_96KHZ, align 4
  store i32 %58, i32* %13, align 4
  br label %71

59:                                               ; preds = %45
  %60 = load i32, i32* @HDMI_SAMPLE_RATE_176_4KHZ, align 4
  store i32 %60, i32* %13, align 4
  br label %71

61:                                               ; preds = %45
  %62 = load i32, i32* @HDMI_SAMPLE_RATE_192KHZ, align 4
  store i32 %62, i32* %13, align 4
  br label %71

63:                                               ; preds = %45
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load %struct.hdmi_codec_params*, %struct.hdmi_codec_params** %9, align 8
  %66 = getelementptr inbounds %struct.hdmi_codec_params, %struct.hdmi_codec_params* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @DRM_DEV_ERROR(%struct.device* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %81

71:                                               ; preds = %61, %59, %57, %55, %53, %51, %49
  %72 = load %struct.hdmi*, %struct.hdmi** %10, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @msm_hdmi_audio_set_sample_rate(%struct.hdmi* %72, i32 %73)
  %75 = load %struct.hdmi*, %struct.hdmi** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @msm_hdmi_audio_info_setup(%struct.hdmi* %75, i32 1, i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %71, %63, %42
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.hdmi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @DRM_DEV_DEBUG(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @msm_hdmi_audio_set_sample_rate(%struct.hdmi*, i32) #1

declare dso_local i32 @msm_hdmi_audio_info_setup(%struct.hdmi*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
