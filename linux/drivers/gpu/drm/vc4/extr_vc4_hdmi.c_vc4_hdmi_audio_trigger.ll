; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_audio_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_audio_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.vc4_hdmi = type { %struct.TYPE_2__, %struct.drm_encoder* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32 }

@VC4_HDMI_TX_PHY_CTL0 = common dso_local global i32 0, align 4
@VC4_HDMI_TX_PHY_RNG_PWRDN = common dso_local global i32 0, align 4
@VC4_HD_MAI_CTL = common dso_local global i32 0, align 4
@VC4_HD_MAI_CTL_CHNUM = common dso_local global i32 0, align 4
@VC4_HD_MAI_CTL_ENABLE = common dso_local global i32 0, align 4
@VC4_HD_MAI_CTL_DLATE = common dso_local global i32 0, align 4
@VC4_HD_MAI_CTL_ERRORE = common dso_local global i32 0, align 4
@VC4_HD_MAI_CTL_ERRORF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @vc4_hdmi_audio_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_hdmi_audio_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.vc4_hdmi*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.vc4_dev*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %12 = call %struct.vc4_hdmi* @dai_to_hdmi(%struct.snd_soc_dai* %11)
  store %struct.vc4_hdmi* %12, %struct.vc4_hdmi** %7, align 8
  %13 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %7, align 8
  %14 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %13, i32 0, i32 1
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %14, align 8
  store %struct.drm_encoder* %15, %struct.drm_encoder** %8, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %17 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %9, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %20 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %19)
  store %struct.vc4_dev* %20, %struct.vc4_dev** %10, align 8
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %56 [
    i32 129, label %22
    i32 128, label %42
  ]

22:                                               ; preds = %3
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %24 = call i32 @vc4_hdmi_set_audio_infoframe(%struct.drm_encoder* %23)
  %25 = load i32, i32* @VC4_HDMI_TX_PHY_CTL0, align 4
  %26 = load i32, i32* @VC4_HDMI_TX_PHY_CTL0, align 4
  %27 = call i32 @HDMI_READ(i32 %26)
  %28 = load i32, i32* @VC4_HDMI_TX_PHY_RNG_PWRDN, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call i32 @HDMI_WRITE(i32 %25, i32 %30)
  %32 = load i32, i32* @VC4_HD_MAI_CTL, align 4
  %33 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %7, align 8
  %34 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @VC4_HD_MAI_CTL_CHNUM, align 4
  %38 = call i32 @VC4_SET_FIELD(i32 %36, i32 %37)
  %39 = load i32, i32* @VC4_HD_MAI_CTL_ENABLE, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @HD_WRITE(i32 %32, i32 %40)
  br label %57

42:                                               ; preds = %3
  %43 = load i32, i32* @VC4_HD_MAI_CTL, align 4
  %44 = load i32, i32* @VC4_HD_MAI_CTL_DLATE, align 4
  %45 = load i32, i32* @VC4_HD_MAI_CTL_ERRORE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @VC4_HD_MAI_CTL_ERRORF, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @HD_WRITE(i32 %43, i32 %48)
  %50 = load i32, i32* @VC4_HDMI_TX_PHY_CTL0, align 4
  %51 = load i32, i32* @VC4_HDMI_TX_PHY_CTL0, align 4
  %52 = call i32 @HDMI_READ(i32 %51)
  %53 = load i32, i32* @VC4_HDMI_TX_PHY_RNG_PWRDN, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @HDMI_WRITE(i32 %50, i32 %54)
  br label %57

56:                                               ; preds = %3
  br label %57

57:                                               ; preds = %56, %42, %22
  ret i32 0
}

declare dso_local %struct.vc4_hdmi* @dai_to_hdmi(%struct.snd_soc_dai*) #1

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @vc4_hdmi_set_audio_infoframe(%struct.drm_encoder*) #1

declare dso_local i32 @HDMI_WRITE(i32, i32) #1

declare dso_local i32 @HDMI_READ(i32) #1

declare dso_local i32 @HD_WRITE(i32, i32) #1

declare dso_local i32 @VC4_SET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
