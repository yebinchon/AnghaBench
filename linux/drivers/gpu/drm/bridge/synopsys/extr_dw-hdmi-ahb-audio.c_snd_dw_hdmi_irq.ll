; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-ahb-audio.c_snd_dw_hdmi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-ahb-audio.c_snd_dw_hdmi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dw_hdmi = type { i32, %struct.snd_pcm_substream*, %struct.TYPE_2__ }
%struct.snd_pcm_substream = type { i32 }
%struct.TYPE_2__ = type { i64 }

@HDMI_IH_AHBDMAAUD_STAT0 = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@HDMI_IH_AHBDMAAUD_STAT0_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_dw_hdmi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_dw_hdmi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_dw_hdmi*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.snd_dw_hdmi*
  store %struct.snd_dw_hdmi* %10, %struct.snd_dw_hdmi** %6, align 8
  %11 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %6, align 8
  %12 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HDMI_IH_AHBDMAAUD_STAT0, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readb_relaxed(i64 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %60

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %6, align 8
  %25 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HDMI_IH_AHBDMAAUD_STAT0, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writeb_relaxed(i32 %23, i64 %29)
  %31 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %6, align 8
  %32 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %31, i32 0, i32 1
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %32, align 8
  store %struct.snd_pcm_substream* %33, %struct.snd_pcm_substream** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @HDMI_IH_AHBDMAAUD_STAT0_DONE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %22
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %40 = icmp ne %struct.snd_pcm_substream* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %43 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %42)
  %44 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %6, align 8
  %45 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %44, i32 0, i32 0
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %6, align 8
  %48 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %47, i32 0, i32 1
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %48, align 8
  %50 = icmp ne %struct.snd_pcm_substream* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %6, align 8
  %53 = call i32 @dw_hdmi_start_dma(%struct.snd_dw_hdmi* %52)
  br label %54

54:                                               ; preds = %51, %41
  %55 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %6, align 8
  %56 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  br label %58

58:                                               ; preds = %54, %38, %22
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %20
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @readb_relaxed(i64) #1

declare dso_local i32 @writeb_relaxed(i32, i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dw_hdmi_start_dma(%struct.snd_dw_hdmi*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
