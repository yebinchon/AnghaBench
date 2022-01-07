; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mt8173_hdmi_phy.c_mtk_hdmi_phy_enable_tmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mt8173_hdmi_phy.c_mtk_hdmi_phy_enable_tmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi_phy = type { i32 }

@HDMI_CON3 = common dso_local global i32 0, align 4
@RG_HDMITX_SER_EN = common dso_local global i32 0, align 4
@RG_HDMITX_PRD_EN = common dso_local global i32 0, align 4
@RG_HDMITX_DRV_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi_phy*)* @mtk_hdmi_phy_enable_tmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_phy_enable_tmds(%struct.mtk_hdmi_phy* %0) #0 {
  %2 = alloca %struct.mtk_hdmi_phy*, align 8
  store %struct.mtk_hdmi_phy* %0, %struct.mtk_hdmi_phy** %2, align 8
  %3 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %2, align 8
  %4 = load i32, i32* @HDMI_CON3, align 4
  %5 = load i32, i32* @RG_HDMITX_SER_EN, align 4
  %6 = load i32, i32* @RG_HDMITX_PRD_EN, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @RG_HDMITX_DRV_EN, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy* %3, i32 %4, i32 %9)
  %11 = call i32 @usleep_range(i32 100, i32 150)
  ret void
}

declare dso_local i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
