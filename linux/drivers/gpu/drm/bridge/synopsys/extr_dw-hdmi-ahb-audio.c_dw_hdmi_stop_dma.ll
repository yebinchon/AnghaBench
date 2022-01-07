; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-ahb-audio.c_dw_hdmi_stop_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-ahb-audio.c_dw_hdmi_stop_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dw_hdmi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@HDMI_AHB_DMA_MASK = common dso_local global i64 0, align 8
@HDMI_AHB_DMA_STOP_STOP = common dso_local global i32 0, align 4
@HDMI_AHB_DMA_STOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_dw_hdmi*)* @dw_hdmi_stop_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_hdmi_stop_dma(%struct.snd_dw_hdmi* %0) #0 {
  %2 = alloca %struct.snd_dw_hdmi*, align 8
  store %struct.snd_dw_hdmi* %0, %struct.snd_dw_hdmi** %2, align 8
  %3 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %2, align 8
  %4 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HDMI_AHB_DMA_MASK, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writeb_relaxed(i32 -1, i64 %8)
  %10 = load i32, i32* @HDMI_AHB_DMA_STOP_STOP, align 4
  %11 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %2, align 8
  %12 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HDMI_AHB_DMA_STOP, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writeb_relaxed(i32 %10, i64 %16)
  ret void
}

declare dso_local i32 @writeb_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
