; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_disable_audio_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_disable_audio_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_hdmi = type { i32 }

@HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL = common dso_local global i32 0, align 4
@INFOFRAME_CTRL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_hdmi*)* @tegra_hdmi_disable_audio_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_hdmi_disable_audio_infoframe(%struct.tegra_hdmi* %0) #0 {
  %2 = alloca %struct.tegra_hdmi*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_hdmi* %0, %struct.tegra_hdmi** %2, align 8
  %4 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %2, align 8
  %5 = load i32, i32* @HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL, align 4
  %6 = call i32 @tegra_hdmi_readl(%struct.tegra_hdmi* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @INFOFRAME_CTRL_ENABLE, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL, align 4
  %14 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %11, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @tegra_hdmi_readl(%struct.tegra_hdmi*, i32) #1

declare dso_local i32 @tegra_hdmi_writel(%struct.tegra_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
