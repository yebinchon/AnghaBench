; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_audio_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_audio_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdmi_codec_daifmt = type { i32 }
%struct.hdmi_codec_params = type { i32, i32, %struct.hdmi_audio_infoframe }
%struct.hdmi_audio_infoframe = type { i32 }
%struct.zx_hdmi = type { i32 }
%union.hdmi_infoframe = type { i32 }

@HDMI_SPDIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid daifmt %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TPI_AUD_CONFIG = common dso_local global i32 0, align 4
@SPDIF_SAMPLE_SIZE_MASK = common dso_local global i32 0, align 4
@SPDIF_SAMPLE_SIZE_16BIT = common dso_local global i32 0, align 4
@SPDIF_SAMPLE_SIZE_20BIT = common dso_local global i32 0, align 4
@SPDIF_SAMPLE_SIZE_24BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid sample width %d\0A\00", align 1
@N_SVAL1 = common dso_local global i32 0, align 4
@N_SVAL2 = common dso_local global i32 0, align 4
@N_SVAL3 = common dso_local global i32 0, align 4
@AUD_MODE = common dso_local global i32 0, align 4
@SPDIF_EN = common dso_local global i32 0, align 4
@AUD_EN = common dso_local global i32 0, align 4
@AUD_IN_EN = common dso_local global i32 0, align 4
@FSEL_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_params*)* @zx_hdmi_audio_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_hdmi_audio_hw_params(%struct.device* %0, i8* %1, %struct.hdmi_codec_daifmt* %2, %struct.hdmi_codec_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hdmi_codec_daifmt*, align 8
  %9 = alloca %struct.hdmi_codec_params*, align 8
  %10 = alloca %struct.zx_hdmi*, align 8
  %11 = alloca %struct.hdmi_audio_infoframe*, align 8
  %12 = alloca %union.hdmi_infoframe, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.hdmi_codec_daifmt* %2, %struct.hdmi_codec_daifmt** %8, align 8
  store %struct.hdmi_codec_params* %3, %struct.hdmi_codec_params** %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.zx_hdmi* @dev_get_drvdata(%struct.device* %14)
  store %struct.zx_hdmi* %15, %struct.zx_hdmi** %10, align 8
  %16 = load %struct.hdmi_codec_params*, %struct.hdmi_codec_params** %9, align 8
  %17 = getelementptr inbounds %struct.hdmi_codec_params, %struct.hdmi_codec_params* %16, i32 0, i32 2
  store %struct.hdmi_audio_infoframe* %17, %struct.hdmi_audio_infoframe** %11, align 8
  %18 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %8, align 8
  %19 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HDMI_SPDIF, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load %struct.zx_hdmi*, %struct.zx_hdmi** %10, align 8
  %25 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %8, align 8
  %28 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DRM_DEV_ERROR(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %103

33:                                               ; preds = %4
  %34 = load %struct.hdmi_codec_params*, %struct.hdmi_codec_params** %9, align 8
  %35 = getelementptr inbounds %struct.hdmi_codec_params, %struct.hdmi_codec_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %55 [
    i32 16, label %37
    i32 20, label %43
    i32 24, label %49
  ]

37:                                               ; preds = %33
  %38 = load %struct.zx_hdmi*, %struct.zx_hdmi** %10, align 8
  %39 = load i32, i32* @TPI_AUD_CONFIG, align 4
  %40 = load i32, i32* @SPDIF_SAMPLE_SIZE_MASK, align 4
  %41 = load i32, i32* @SPDIF_SAMPLE_SIZE_16BIT, align 4
  %42 = call i32 @hdmi_writeb_mask(%struct.zx_hdmi* %38, i32 %39, i32 %40, i32 %41)
  br label %65

43:                                               ; preds = %33
  %44 = load %struct.zx_hdmi*, %struct.zx_hdmi** %10, align 8
  %45 = load i32, i32* @TPI_AUD_CONFIG, align 4
  %46 = load i32, i32* @SPDIF_SAMPLE_SIZE_MASK, align 4
  %47 = load i32, i32* @SPDIF_SAMPLE_SIZE_20BIT, align 4
  %48 = call i32 @hdmi_writeb_mask(%struct.zx_hdmi* %44, i32 %45, i32 %46, i32 %47)
  br label %65

49:                                               ; preds = %33
  %50 = load %struct.zx_hdmi*, %struct.zx_hdmi** %10, align 8
  %51 = load i32, i32* @TPI_AUD_CONFIG, align 4
  %52 = load i32, i32* @SPDIF_SAMPLE_SIZE_MASK, align 4
  %53 = load i32, i32* @SPDIF_SAMPLE_SIZE_24BIT, align 4
  %54 = call i32 @hdmi_writeb_mask(%struct.zx_hdmi* %50, i32 %51, i32 %52, i32 %53)
  br label %65

55:                                               ; preds = %33
  %56 = load %struct.zx_hdmi*, %struct.zx_hdmi** %10, align 8
  %57 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hdmi_codec_params*, %struct.hdmi_codec_params** %9, align 8
  %60 = getelementptr inbounds %struct.hdmi_codec_params, %struct.hdmi_codec_params* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @DRM_DEV_ERROR(i32 %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %103

65:                                               ; preds = %49, %43, %37
  %66 = load %struct.hdmi_codec_params*, %struct.hdmi_codec_params** %9, align 8
  %67 = getelementptr inbounds %struct.hdmi_codec_params, %struct.hdmi_codec_params* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @zx_hdmi_audio_get_n(i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load %struct.zx_hdmi*, %struct.zx_hdmi** %10, align 8
  %71 = load i32, i32* @N_SVAL1, align 4
  %72 = load i32, i32* %13, align 4
  %73 = and i32 %72, 255
  %74 = call i32 @hdmi_writeb(%struct.zx_hdmi* %70, i32 %71, i32 %73)
  %75 = load %struct.zx_hdmi*, %struct.zx_hdmi** %10, align 8
  %76 = load i32, i32* @N_SVAL2, align 4
  %77 = load i32, i32* %13, align 4
  %78 = ashr i32 %77, 8
  %79 = and i32 %78, 255
  %80 = call i32 @hdmi_writeb(%struct.zx_hdmi* %75, i32 %76, i32 %79)
  %81 = load %struct.zx_hdmi*, %struct.zx_hdmi** %10, align 8
  %82 = load i32, i32* @N_SVAL3, align 4
  %83 = load i32, i32* %13, align 4
  %84 = ashr i32 %83, 16
  %85 = and i32 %84, 15
  %86 = call i32 @hdmi_writeb(%struct.zx_hdmi* %81, i32 %82, i32 %85)
  %87 = load %struct.zx_hdmi*, %struct.zx_hdmi** %10, align 8
  %88 = load i32, i32* @AUD_MODE, align 4
  %89 = load i32, i32* @SPDIF_EN, align 4
  %90 = load i32, i32* @SPDIF_EN, align 4
  %91 = call i32 @hdmi_writeb_mask(%struct.zx_hdmi* %87, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.zx_hdmi*, %struct.zx_hdmi** %10, align 8
  %93 = load i32, i32* @AUD_EN, align 4
  %94 = load i32, i32* @AUD_IN_EN, align 4
  %95 = load i32, i32* @AUD_IN_EN, align 4
  %96 = call i32 @hdmi_writeb_mask(%struct.zx_hdmi* %92, i32 %93, i32 %94, i32 %95)
  %97 = bitcast %union.hdmi_infoframe* %12 to i32*
  %98 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %11, align 8
  %99 = call i32 @memcpy(i32* %97, %struct.hdmi_audio_infoframe* %98, i32 4)
  %100 = load %struct.zx_hdmi*, %struct.zx_hdmi** %10, align 8
  %101 = load i32, i32* @FSEL_AUDIO, align 4
  %102 = call i32 @zx_hdmi_infoframe_trans(%struct.zx_hdmi* %100, %union.hdmi_infoframe* %12, i32 %101)
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %65, %55, %23
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.zx_hdmi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @hdmi_writeb_mask(%struct.zx_hdmi*, i32, i32, i32) #1

declare dso_local i32 @zx_hdmi_audio_get_n(i32) #1

declare dso_local i32 @hdmi_writeb(%struct.zx_hdmi*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.hdmi_audio_infoframe*, i32) #1

declare dso_local i32 @zx_hdmi_infoframe_trans(%struct.zx_hdmi*, %union.hdmi_infoframe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
