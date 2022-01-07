; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_audio.c_adv7511_hdmi_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_audio.c_adv7511_hdmi_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdmi_codec_daifmt = type { i32, i32 }
%struct.hdmi_codec_params = type { i32, i32 }
%struct.adv7511 = type { i32, i32, i32 }

@ADV7511_SAMPLE_FREQ_32000 = common dso_local global i32 0, align 4
@ADV7511_SAMPLE_FREQ_44100 = common dso_local global i32 0, align 4
@ADV7511_SAMPLE_FREQ_48000 = common dso_local global i32 0, align 4
@ADV7511_SAMPLE_FREQ_88200 = common dso_local global i32 0, align 4
@ADV7511_SAMPLE_FREQ_96000 = common dso_local global i32 0, align 4
@ADV7511_SAMPLE_FREQ_176400 = common dso_local global i32 0, align 4
@ADV7511_SAMPLE_FREQ_192000 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADV7511_I2S_SAMPLE_LEN_16 = common dso_local global i32 0, align 4
@ADV7511_I2S_SAMPLE_LEN_18 = common dso_local global i32 0, align 4
@ADV7511_I2S_SAMPLE_LEN_20 = common dso_local global i32 0, align 4
@ADV7511_I2S_SAMPLE_LEN_24 = common dso_local global i32 0, align 4
@ADV7511_AUDIO_SOURCE_I2S = common dso_local global i32 0, align 4
@ADV7511_I2S_FORMAT_I2S = common dso_local global i32 0, align 4
@ADV7511_I2S_FORMAT_RIGHT_J = common dso_local global i32 0, align 4
@ADV7511_I2S_FORMAT_LEFT_J = common dso_local global i32 0, align 4
@ADV7511_REG_AUDIO_SOURCE = common dso_local global i32 0, align 4
@ADV7511_REG_AUDIO_CONFIG = common dso_local global i32 0, align 4
@ADV7511_REG_I2S_CONFIG = common dso_local global i32 0, align 4
@ADV7511_REG_AUDIO_CFG3 = common dso_local global i32 0, align 4
@ADV7511_AUDIO_CFG3_LEN_MASK = common dso_local global i32 0, align 4
@ADV7511_REG_I2C_FREQ_ID_CFG = common dso_local global i32 0, align 4
@ADV7511_I2C_FREQ_ID_CFG_RATE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adv7511_hdmi_hw_params(%struct.device* %0, i8* %1, %struct.hdmi_codec_daifmt* %2, %struct.hdmi_codec_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hdmi_codec_daifmt*, align 8
  %9 = alloca %struct.hdmi_codec_params*, align 8
  %10 = alloca %struct.adv7511*, align 8
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
  %17 = call %struct.adv7511* @dev_get_drvdata(%struct.device* %16)
  store %struct.adv7511* %17, %struct.adv7511** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.hdmi_codec_params*, %struct.hdmi_codec_params** %9, align 8
  %19 = getelementptr inbounds %struct.hdmi_codec_params, %struct.hdmi_codec_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %35 [
    i32 32000, label %21
    i32 44100, label %23
    i32 48000, label %25
    i32 88200, label %27
    i32 96000, label %29
    i32 176400, label %31
    i32 192000, label %33
  ]

21:                                               ; preds = %4
  %22 = load i32, i32* @ADV7511_SAMPLE_FREQ_32000, align 4
  store i32 %22, i32* %14, align 4
  br label %38

23:                                               ; preds = %4
  %24 = load i32, i32* @ADV7511_SAMPLE_FREQ_44100, align 4
  store i32 %24, i32* %14, align 4
  br label %38

25:                                               ; preds = %4
  %26 = load i32, i32* @ADV7511_SAMPLE_FREQ_48000, align 4
  store i32 %26, i32* %14, align 4
  br label %38

27:                                               ; preds = %4
  %28 = load i32, i32* @ADV7511_SAMPLE_FREQ_88200, align 4
  store i32 %28, i32* %14, align 4
  br label %38

29:                                               ; preds = %4
  %30 = load i32, i32* @ADV7511_SAMPLE_FREQ_96000, align 4
  store i32 %30, i32* %14, align 4
  br label %38

31:                                               ; preds = %4
  %32 = load i32, i32* @ADV7511_SAMPLE_FREQ_176400, align 4
  store i32 %32, i32* %14, align 4
  br label %38

33:                                               ; preds = %4
  %34 = load i32, i32* @ADV7511_SAMPLE_FREQ_192000, align 4
  store i32 %34, i32* %14, align 4
  br label %38

35:                                               ; preds = %4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %123

38:                                               ; preds = %33, %31, %29, %27, %25, %23, %21
  %39 = load %struct.hdmi_codec_params*, %struct.hdmi_codec_params** %9, align 8
  %40 = getelementptr inbounds %struct.hdmi_codec_params, %struct.hdmi_codec_params* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %50 [
    i32 16, label %42
    i32 18, label %44
    i32 20, label %46
    i32 24, label %48
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* @ADV7511_I2S_SAMPLE_LEN_16, align 4
  store i32 %43, i32* %15, align 4
  br label %53

44:                                               ; preds = %38
  %45 = load i32, i32* @ADV7511_I2S_SAMPLE_LEN_18, align 4
  store i32 %45, i32* %15, align 4
  br label %53

46:                                               ; preds = %38
  %47 = load i32, i32* @ADV7511_I2S_SAMPLE_LEN_20, align 4
  store i32 %47, i32* %15, align 4
  br label %53

48:                                               ; preds = %38
  %49 = load i32, i32* @ADV7511_I2S_SAMPLE_LEN_24, align 4
  store i32 %49, i32* %15, align 4
  br label %53

50:                                               ; preds = %38
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %123

53:                                               ; preds = %48, %46, %44, %42
  %54 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %8, align 8
  %55 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %66 [
    i32 130, label %57
    i32 128, label %60
    i32 129, label %63
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* @ADV7511_AUDIO_SOURCE_I2S, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* @ADV7511_I2S_FORMAT_I2S, align 4
  store i32 %59, i32* %12, align 4
  br label %69

60:                                               ; preds = %53
  %61 = load i32, i32* @ADV7511_AUDIO_SOURCE_I2S, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* @ADV7511_I2S_FORMAT_RIGHT_J, align 4
  store i32 %62, i32* %12, align 4
  br label %69

63:                                               ; preds = %53
  %64 = load i32, i32* @ADV7511_AUDIO_SOURCE_I2S, align 4
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* @ADV7511_I2S_FORMAT_LEFT_J, align 4
  store i32 %65, i32* %12, align 4
  br label %69

66:                                               ; preds = %53
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %123

69:                                               ; preds = %63, %60, %57
  %70 = load %struct.hdmi_codec_daifmt*, %struct.hdmi_codec_daifmt** %8, align 8
  %71 = getelementptr inbounds %struct.hdmi_codec_daifmt, %struct.hdmi_codec_daifmt* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  %73 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %74 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ADV7511_REG_AUDIO_SOURCE, align 4
  %77 = load i32, i32* %11, align 4
  %78 = shl i32 %77, 4
  %79 = call i32 @regmap_update_bits(i32 %75, i32 %76, i32 112, i32 %78)
  %80 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %81 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ADV7511_REG_AUDIO_CONFIG, align 4
  %84 = call i32 @BIT(i32 6)
  %85 = load i32, i32* %13, align 4
  %86 = shl i32 %85, 6
  %87 = call i32 @regmap_update_bits(i32 %82, i32 %83, i32 %84, i32 %86)
  %88 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %89 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ADV7511_REG_I2S_CONFIG, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @regmap_update_bits(i32 %90, i32 %91, i32 3, i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %96 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.hdmi_codec_params*, %struct.hdmi_codec_params** %9, align 8
  %98 = getelementptr inbounds %struct.hdmi_codec_params, %struct.hdmi_codec_params* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %101 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %103 = call i32 @adv7511_update_cts_n(%struct.adv7511* %102)
  %104 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %105 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ADV7511_REG_AUDIO_CFG3, align 4
  %108 = load i32, i32* @ADV7511_AUDIO_CFG3_LEN_MASK, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @regmap_update_bits(i32 %106, i32 %107, i32 %108, i32 %109)
  %111 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %112 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ADV7511_REG_I2C_FREQ_ID_CFG, align 4
  %115 = load i32, i32* @ADV7511_I2C_FREQ_ID_CFG_RATE_MASK, align 4
  %116 = load i32, i32* %14, align 4
  %117 = shl i32 %116, 4
  %118 = call i32 @regmap_update_bits(i32 %113, i32 %114, i32 %115, i32 %117)
  %119 = load %struct.adv7511*, %struct.adv7511** %10, align 8
  %120 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @regmap_write(i32 %121, i32 115, i32 1)
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %69, %66, %50, %35
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local %struct.adv7511* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @adv7511_update_cts_n(%struct.adv7511*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
