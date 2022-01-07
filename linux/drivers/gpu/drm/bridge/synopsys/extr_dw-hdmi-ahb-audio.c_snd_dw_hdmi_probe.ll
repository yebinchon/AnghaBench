; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-ahb-audio.c_snd_dw_hdmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-ahb-audio.c_snd_dw_hdmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device*, %struct.dw_hdmi_audio_data* }
%struct.device = type { i32 }
%struct.dw_hdmi_audio_data = type { i32, i64 }
%struct.snd_dw_hdmi = type { i32, %struct.snd_pcm*, i32, %struct.dw_hdmi_audio_data, %struct.snd_card* }
%struct.snd_pcm = type { i8*, %struct.snd_dw_hdmi* }
%struct.snd_card = type { i8*, i8*, %struct.snd_dw_hdmi*, i32 }

@HDMI_IH_MUTE_AHBDMAAUD_STAT0_ALL = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_AHBDMAAUD_STAT0 = common dso_local global i64 0, align 8
@HDMI_REVISION_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"dw-hdmi-audio: unknown revision 0x%02x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_IDX1 = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_STR1 = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"DW-HDMI\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s rev 0x%02x, irq %d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"DW HDMI\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_dw_hdmi_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @snd_dw_hdmi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_dw_hdmi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dw_hdmi_audio_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.snd_dw_hdmi*, align 8
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca %struct.snd_pcm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.dw_hdmi_audio_data*, %struct.dw_hdmi_audio_data** %13, align 8
  store %struct.dw_hdmi_audio_data* %14, %struct.dw_hdmi_audio_data** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %5, align 8
  %19 = load i32, i32* @HDMI_IH_MUTE_AHBDMAAUD_STAT0_ALL, align 4
  %20 = load %struct.dw_hdmi_audio_data*, %struct.dw_hdmi_audio_data** %4, align 8
  %21 = getelementptr inbounds %struct.dw_hdmi_audio_data, %struct.dw_hdmi_audio_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HDMI_IH_MUTE_AHBDMAAUD_STAT0, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writeb_relaxed(i32 %19, i64 %24)
  %26 = load %struct.dw_hdmi_audio_data*, %struct.dw_hdmi_audio_data** %4, align 8
  %27 = getelementptr inbounds %struct.dw_hdmi_audio_data, %struct.dw_hdmi_audio_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HDMI_REVISION_ID, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readb_relaxed(i64 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 10
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 26
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENXIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %128

43:                                               ; preds = %34, %1
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load i32, i32* @SNDRV_DEFAULT_IDX1, align 4
  %46 = load i32, i32* @SNDRV_DEFAULT_STR1, align 4
  %47 = load i32, i32* @THIS_MODULE, align 4
  %48 = call i32 @snd_card_new(%struct.device* %44, i32 %45, i32 %46, i32 %47, i32 48, %struct.snd_card** %7)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %2, align 4
  br label %128

53:                                               ; preds = %43
  %54 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %55 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** @DRIVER_NAME, align 8
  %58 = call i32 @strlcpy(i8* %56, i8* %57, i32 8)
  %59 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %60 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strlcpy(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %63 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %64 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %67 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.dw_hdmi_audio_data*, %struct.dw_hdmi_audio_data** %4, align 8
  %71 = getelementptr inbounds %struct.dw_hdmi_audio_data, %struct.dw_hdmi_audio_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @snprintf(i32 %65, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %68, i32 %69, i32 %72)
  %74 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %75 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %74, i32 0, i32 2
  %76 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %75, align 8
  store %struct.snd_dw_hdmi* %76, %struct.snd_dw_hdmi** %6, align 8
  %77 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %78 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %6, align 8
  %79 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %78, i32 0, i32 4
  store %struct.snd_card* %77, %struct.snd_card** %79, align 8
  %80 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %6, align 8
  %81 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %80, i32 0, i32 3
  %82 = load %struct.dw_hdmi_audio_data*, %struct.dw_hdmi_audio_data** %4, align 8
  %83 = bitcast %struct.dw_hdmi_audio_data* %81 to i8*
  %84 = bitcast %struct.dw_hdmi_audio_data* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 16, i1 false)
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %6, align 8
  %87 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %6, align 8
  %89 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %88, i32 0, i32 2
  %90 = call i32 @spin_lock_init(i32* %89)
  %91 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %92 = call i32 @snd_pcm_new(%struct.snd_card* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 1, i32 0, %struct.snd_pcm** %8)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %53
  br label %124

96:                                               ; preds = %53
  %97 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %98 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %6, align 8
  %99 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %98, i32 0, i32 1
  store %struct.snd_pcm* %97, %struct.snd_pcm** %99, align 8
  %100 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %6, align 8
  %101 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %102 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %101, i32 0, i32 1
  store %struct.snd_dw_hdmi* %100, %struct.snd_dw_hdmi** %102, align 8
  %103 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %104 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i8*, i8** @DRIVER_NAME, align 8
  %107 = call i32 @strlcpy(i8* %105, i8* %106, i32 8)
  %108 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %109 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %110 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %108, i32 %109, i32* @snd_dw_hdmi_ops)
  %111 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %112 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %113 = load %struct.device*, %struct.device** %5, align 8
  %114 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %111, i32 %112, %struct.device* %113, i32 131072, i32 1048576)
  %115 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %116 = call i32 @snd_card_register(%struct.snd_card* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %96
  br label %124

120:                                              ; preds = %96
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %6, align 8
  %123 = call i32 @platform_set_drvdata(%struct.platform_device* %121, %struct.snd_dw_hdmi* %122)
  store i32 0, i32* %2, align 4
  br label %128

124:                                              ; preds = %119, %95
  %125 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %126 = call i32 @snd_card_free(%struct.snd_card* %125)
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %124, %120, %51, %37
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @writeb_relaxed(i32, i64) #1

declare dso_local i32 @readb_relaxed(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @snd_card_new(%struct.device*, i32, i32, i32, i32, %struct.snd_card**) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, %struct.device*, i32, i32) #1

declare dso_local i32 @snd_card_register(%struct.snd_card*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.snd_dw_hdmi*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
