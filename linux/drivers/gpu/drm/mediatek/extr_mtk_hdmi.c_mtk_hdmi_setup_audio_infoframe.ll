; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_setup_audio_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_setup_audio_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hdmi_audio_infoframe = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Failed to setup audio infoframe: %zd\0A\00", align 1
@HDMI_AUDIO_CODING_TYPE_STREAM = common dso_local global i32 0, align 4
@HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM = common dso_local global i32 0, align 4
@HDMI_AUDIO_SAMPLE_SIZE_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to pack audio infoframe: %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hdmi*)* @mtk_hdmi_setup_audio_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_setup_audio_infoframe(%struct.mtk_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_hdmi*, align 8
  %4 = alloca %struct.hdmi_audio_infoframe, align 4
  %5 = alloca [14 x i32], align 16
  %6 = alloca i64, align 8
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %3, align 8
  %7 = call i64 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe* %4)
  store i64 %7, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* %6, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %47

18:                                               ; preds = %1
  %19 = load i32, i32* @HDMI_AUDIO_CODING_TYPE_STREAM, align 4
  %20 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %4, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM, align 4
  %22 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %4, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @HDMI_AUDIO_SAMPLE_SIZE_STREAM, align 4
  %24 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %4, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %26 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mtk_hdmi_aud_get_chnl_count(i32 %28)
  %30 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %4, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds [14 x i32], [14 x i32]* %5, i64 0, i64 0
  %32 = call i64 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe* %4, i32* %31, i32 56)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %18
  %36 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %37 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %6, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %2, align 4
  br label %47

43:                                               ; preds = %18
  %44 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %45 = getelementptr inbounds [14 x i32], [14 x i32]* %5, i64 0, i64 0
  %46 = call i32 @mtk_hdmi_hw_send_info_frame(%struct.mtk_hdmi* %44, i32* %45, i32 56)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %35, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @mtk_hdmi_aud_get_chnl_count(i32) #1

declare dso_local i64 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe*, i32*, i32) #1

declare dso_local i32 @mtk_hdmi_hw_send_info_frame(%struct.mtk_hdmi*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
