; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mt2701_hdmi_phy.c_mtk_hdmi_phy_enable_tmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mt2701_hdmi_phy.c_mtk_hdmi_phy_enable_tmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi_phy = type { i32 }

@HDMI_CON7 = common dso_local global i32 0, align 4
@RG_HTPLL_AUTOK_EN = common dso_local global i32 0, align 4
@HDMI_CON6 = common dso_local global i32 0, align 4
@RG_HTPLL_RLH_EN = common dso_local global i32 0, align 4
@RG_HTPLL_POSDIV_MASK = common dso_local global i32 0, align 4
@HDMI_CON2 = common dso_local global i32 0, align 4
@RG_HDMITX_EN_MBIAS = common dso_local global i32 0, align 4
@RG_HTPLL_EN = common dso_local global i32 0, align 4
@RG_HDMITX_EN_TX_CKLDO = common dso_local global i32 0, align 4
@HDMI_CON0 = common dso_local global i32 0, align 4
@RG_HDMITX_EN_SLDO_MASK = common dso_local global i32 0, align 4
@RG_HDMITX_MBIAS_LPF_EN = common dso_local global i32 0, align 4
@RG_HDMITX_EN_SER_MASK = common dso_local global i32 0, align 4
@RG_HDMITX_EN_PRED_MASK = common dso_local global i32 0, align 4
@RG_HDMITX_EN_DRV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi_phy*)* @mtk_hdmi_phy_enable_tmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_phy_enable_tmds(%struct.mtk_hdmi_phy* %0) #0 {
  %2 = alloca %struct.mtk_hdmi_phy*, align 8
  store %struct.mtk_hdmi_phy* %0, %struct.mtk_hdmi_phy** %2, align 8
  %3 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %2, align 8
  %4 = load i32, i32* @HDMI_CON7, align 4
  %5 = load i32, i32* @RG_HTPLL_AUTOK_EN, align 4
  %6 = call i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy* %3, i32 %4, i32 %5)
  %7 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %2, align 8
  %8 = load i32, i32* @HDMI_CON6, align 4
  %9 = load i32, i32* @RG_HTPLL_RLH_EN, align 4
  %10 = call i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy* %7, i32 %8, i32 %9)
  %11 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %2, align 8
  %12 = load i32, i32* @HDMI_CON6, align 4
  %13 = load i32, i32* @RG_HTPLL_POSDIV_MASK, align 4
  %14 = call i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy* %11, i32 %12, i32 %13)
  %15 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %2, align 8
  %16 = load i32, i32* @HDMI_CON2, align 4
  %17 = load i32, i32* @RG_HDMITX_EN_MBIAS, align 4
  %18 = call i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy* %15, i32 %16, i32 %17)
  %19 = call i32 @usleep_range(i32 80, i32 100)
  %20 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %2, align 8
  %21 = load i32, i32* @HDMI_CON6, align 4
  %22 = load i32, i32* @RG_HTPLL_EN, align 4
  %23 = call i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy* %20, i32 %21, i32 %22)
  %24 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %2, align 8
  %25 = load i32, i32* @HDMI_CON2, align 4
  %26 = load i32, i32* @RG_HDMITX_EN_TX_CKLDO, align 4
  %27 = call i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy* %24, i32 %25, i32 %26)
  %28 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %2, align 8
  %29 = load i32, i32* @HDMI_CON0, align 4
  %30 = load i32, i32* @RG_HDMITX_EN_SLDO_MASK, align 4
  %31 = call i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy* %28, i32 %29, i32 %30)
  %32 = call i32 @usleep_range(i32 80, i32 100)
  %33 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %2, align 8
  %34 = load i32, i32* @HDMI_CON2, align 4
  %35 = load i32, i32* @RG_HDMITX_MBIAS_LPF_EN, align 4
  %36 = call i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy* %33, i32 %34, i32 %35)
  %37 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %2, align 8
  %38 = load i32, i32* @HDMI_CON0, align 4
  %39 = load i32, i32* @RG_HDMITX_EN_SER_MASK, align 4
  %40 = call i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy* %37, i32 %38, i32 %39)
  %41 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %2, align 8
  %42 = load i32, i32* @HDMI_CON0, align 4
  %43 = load i32, i32* @RG_HDMITX_EN_PRED_MASK, align 4
  %44 = call i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy* %41, i32 %42, i32 %43)
  %45 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %2, align 8
  %46 = load i32, i32* @HDMI_CON0, align 4
  %47 = load i32, i32* @RG_HDMITX_EN_DRV_MASK, align 4
  %48 = call i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy* %45, i32 %46, i32 %47)
  %49 = call i32 @usleep_range(i32 80, i32 100)
  ret void
}

declare dso_local i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy*, i32, i32) #1

declare dso_local i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
