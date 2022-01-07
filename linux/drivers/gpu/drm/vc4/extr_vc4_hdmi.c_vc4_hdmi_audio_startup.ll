; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_audio_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_audio_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.vc4_hdmi = type { %struct.TYPE_3__*, %struct.TYPE_4__, %struct.drm_encoder* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.snd_pcm_substream* }
%struct.drm_encoder = type { i32, i32 }
%struct.vc4_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VC4_HDMI_RAM_PACKET_CONFIG = common dso_local global i32 0, align 4
@VC4_HDMI_RAM_PACKET_ENABLE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @vc4_hdmi_audio_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_hdmi_audio_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.vc4_hdmi*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca %struct.vc4_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = call %struct.vc4_hdmi* @dai_to_hdmi(%struct.snd_soc_dai* %10)
  store %struct.vc4_hdmi* %11, %struct.vc4_hdmi** %6, align 8
  %12 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %6, align 8
  %13 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %12, i32 0, i32 2
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  store %struct.drm_encoder* %14, %struct.drm_encoder** %7, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.vc4_dev* @to_vc4_dev(i32 %17)
  store %struct.vc4_dev* %18, %struct.vc4_dev** %8, align 8
  %19 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %6, align 8
  %20 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %21, align 8
  %23 = icmp ne %struct.snd_pcm_substream* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %6, align 8
  %26 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %27, align 8
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %30 = icmp ne %struct.snd_pcm_substream* %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %67

34:                                               ; preds = %24, %2
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %36 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %6, align 8
  %37 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store %struct.snd_pcm_substream* %35, %struct.snd_pcm_substream** %38, align 8
  %39 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %40 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load i32, i32* @VC4_HDMI_RAM_PACKET_CONFIG, align 4
  %45 = call i32 @HDMI_READ(i32 %44)
  %46 = load i32, i32* @VC4_HDMI_RAM_PACKET_ENABLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43, %34
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %67

52:                                               ; preds = %43
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %6, align 8
  %57 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @snd_pcm_hw_constraint_eld(i32 %55, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %64, %49, %31
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.vc4_hdmi* @dai_to_hdmi(%struct.snd_soc_dai*) #1

declare dso_local %struct.vc4_dev* @to_vc4_dev(i32) #1

declare dso_local i32 @HDMI_READ(i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_eld(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
