; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_aud_set_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_aud_set_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@HDMI_AUD_SWAP_LFE_CC = common dso_local global i32 0, align 4
@GRL_MIX_CTRL = common dso_local global i32 0, align 4
@MIX_CTRL_FLAT = common dso_local global i32 0, align 4
@HDMI_AUD_INPUT_SPDIF = common dso_local global i64 0, align 8
@HDMI_AUDIO_CODING_TYPE_DST = common dso_local global i64 0, align 8
@HDMI_AUDIO_SAMPLE_SIZE_24 = common dso_local global i32 0, align 4
@HDMI_I2S_MODE_LJT_24BIT = common dso_local global i64 0, align 8
@HDMI_I2S_MODE_LJT_16BIT = common dso_local global i64 0, align 8
@HDMI_AUD_CHAN_TYPE_2_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hdmi*)* @mtk_hdmi_aud_set_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_aud_set_input(%struct.mtk_hdmi* %0) #0 {
  %2 = alloca %struct.mtk_hdmi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %2, align 8
  %6 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %7 = load i32, i32* @HDMI_AUD_SWAP_LFE_CC, align 4
  %8 = call i32 @mtk_hdmi_hw_aud_set_channel_swap(%struct.mtk_hdmi* %6, i32 %7)
  %9 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %10 = load i32, i32* @GRL_MIX_CTRL, align 4
  %11 = load i32, i32* @MIX_CTRL_FLAT, align 4
  %12 = call i32 @mtk_hdmi_set_bits(%struct.mtk_hdmi* %9, i32 %10, i32 %11)
  %13 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %14 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HDMI_AUD_INPUT_SPDIF, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %21 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HDMI_AUDIO_CODING_TYPE_DST, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %28 = load i32, i32* @HDMI_AUDIO_SAMPLE_SIZE_24, align 4
  %29 = call i32 @mtk_hdmi_hw_aud_set_bit_num(%struct.mtk_hdmi* %27, i32 %28)
  br label %43

30:                                               ; preds = %19, %1
  %31 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %32 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HDMI_I2S_MODE_LJT_24BIT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i64, i64* @HDMI_I2S_MODE_LJT_16BIT, align 8
  %39 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %40 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %30
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %45 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %46 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @mtk_hdmi_hw_aud_set_i2s_fmt(%struct.mtk_hdmi* %44, i64 %48)
  %50 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %51 = load i32, i32* @HDMI_AUDIO_SAMPLE_SIZE_24, align 4
  %52 = call i32 @mtk_hdmi_hw_aud_set_bit_num(%struct.mtk_hdmi* %50, i32 %51)
  %53 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %54 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @HDMI_AUD_INPUT_SPDIF, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %43
  %60 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %61 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @HDMI_AUDIO_CODING_TYPE_DST, align 8
  %65 = icmp eq i64 %63, %64
  br label %66

66:                                               ; preds = %59, %43
  %67 = phi i1 [ false, %43 ], [ %65, %59 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %5, align 4
  %69 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @mtk_hdmi_hw_audio_config(%struct.mtk_hdmi* %69, i32 %70)
  %72 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %73 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @HDMI_AUD_INPUT_SPDIF, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i32, i32* @HDMI_AUD_CHAN_TYPE_2_0, align 4
  store i32 %79, i32* %3, align 4
  br label %85

80:                                               ; preds = %66
  %81 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %82 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %80, %78
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @mtk_hdmi_aud_get_chnl_count(i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @mtk_hdmi_hw_aud_set_i2s_chan_num(%struct.mtk_hdmi* %88, i32 %89, i32 %90)
  %92 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %93 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %94 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @mtk_hdmi_hw_aud_set_input_type(%struct.mtk_hdmi* %92, i64 %96)
  ret i32 0
}

declare dso_local i32 @mtk_hdmi_hw_aud_set_channel_swap(%struct.mtk_hdmi*, i32) #1

declare dso_local i32 @mtk_hdmi_set_bits(%struct.mtk_hdmi*, i32, i32) #1

declare dso_local i32 @mtk_hdmi_hw_aud_set_bit_num(%struct.mtk_hdmi*, i32) #1

declare dso_local i32 @mtk_hdmi_hw_aud_set_i2s_fmt(%struct.mtk_hdmi*, i64) #1

declare dso_local i32 @mtk_hdmi_hw_audio_config(%struct.mtk_hdmi*, i32) #1

declare dso_local i32 @mtk_hdmi_aud_get_chnl_count(i32) #1

declare dso_local i32 @mtk_hdmi_hw_aud_set_i2s_chan_num(%struct.mtk_hdmi*, i32, i32) #1

declare dso_local i32 @mtk_hdmi_hw_aud_set_input_type(%struct.mtk_hdmi*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
