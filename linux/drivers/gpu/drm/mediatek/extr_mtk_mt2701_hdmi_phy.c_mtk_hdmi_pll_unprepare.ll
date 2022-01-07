; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mt2701_hdmi_phy.c_mtk_hdmi_pll_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mt2701_hdmi_phy.c_mtk_hdmi_pll_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mtk_hdmi_phy = type { i32 }

@HDMI_CON0 = common dso_local global i32 0, align 4
@RG_HDMITX_EN_DRV_MASK = common dso_local global i32 0, align 4
@RG_HDMITX_EN_PRED_MASK = common dso_local global i32 0, align 4
@RG_HDMITX_EN_SER_MASK = common dso_local global i32 0, align 4
@HDMI_CON2 = common dso_local global i32 0, align 4
@RG_HDMITX_MBIAS_LPF_EN = common dso_local global i32 0, align 4
@RG_HDMITX_EN_SLDO_MASK = common dso_local global i32 0, align 4
@RG_HDMITX_EN_TX_CKLDO = common dso_local global i32 0, align 4
@HDMI_CON6 = common dso_local global i32 0, align 4
@RG_HTPLL_EN = common dso_local global i32 0, align 4
@RG_HDMITX_EN_MBIAS = common dso_local global i32 0, align 4
@RG_HTPLL_POSDIV_MASK = common dso_local global i32 0, align 4
@RG_HTPLL_RLH_EN = common dso_local global i32 0, align 4
@HDMI_CON7 = common dso_local global i32 0, align 4
@RG_HTPLL_AUTOK_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @mtk_hdmi_pll_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_pll_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.mtk_hdmi_phy*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %4 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %5 = call %struct.mtk_hdmi_phy* @to_mtk_hdmi_phy(%struct.clk_hw* %4)
  store %struct.mtk_hdmi_phy* %5, %struct.mtk_hdmi_phy** %3, align 8
  %6 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %7 = load i32, i32* @HDMI_CON0, align 4
  %8 = load i32, i32* @RG_HDMITX_EN_DRV_MASK, align 4
  %9 = call i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy* %6, i32 %7, i32 %8)
  %10 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %11 = load i32, i32* @HDMI_CON0, align 4
  %12 = load i32, i32* @RG_HDMITX_EN_PRED_MASK, align 4
  %13 = call i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy* %10, i32 %11, i32 %12)
  %14 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %15 = load i32, i32* @HDMI_CON0, align 4
  %16 = load i32, i32* @RG_HDMITX_EN_SER_MASK, align 4
  %17 = call i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy* %14, i32 %15, i32 %16)
  %18 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %19 = load i32, i32* @HDMI_CON2, align 4
  %20 = load i32, i32* @RG_HDMITX_MBIAS_LPF_EN, align 4
  %21 = call i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy* %18, i32 %19, i32 %20)
  %22 = call i32 @usleep_range(i32 80, i32 100)
  %23 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %24 = load i32, i32* @HDMI_CON0, align 4
  %25 = load i32, i32* @RG_HDMITX_EN_SLDO_MASK, align 4
  %26 = call i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy* %23, i32 %24, i32 %25)
  %27 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %28 = load i32, i32* @HDMI_CON2, align 4
  %29 = load i32, i32* @RG_HDMITX_EN_TX_CKLDO, align 4
  %30 = call i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy* %27, i32 %28, i32 %29)
  %31 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %32 = load i32, i32* @HDMI_CON6, align 4
  %33 = load i32, i32* @RG_HTPLL_EN, align 4
  %34 = call i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy* %31, i32 %32, i32 %33)
  %35 = call i32 @usleep_range(i32 80, i32 100)
  %36 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %37 = load i32, i32* @HDMI_CON2, align 4
  %38 = load i32, i32* @RG_HDMITX_EN_MBIAS, align 4
  %39 = call i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy* %36, i32 %37, i32 %38)
  %40 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %41 = load i32, i32* @HDMI_CON6, align 4
  %42 = load i32, i32* @RG_HTPLL_POSDIV_MASK, align 4
  %43 = call i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy* %40, i32 %41, i32 %42)
  %44 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %45 = load i32, i32* @HDMI_CON6, align 4
  %46 = load i32, i32* @RG_HTPLL_RLH_EN, align 4
  %47 = call i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy* %44, i32 %45, i32 %46)
  %48 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %49 = load i32, i32* @HDMI_CON7, align 4
  %50 = load i32, i32* @RG_HTPLL_AUTOK_EN, align 4
  %51 = call i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy* %48, i32 %49, i32 %50)
  %52 = call i32 @usleep_range(i32 80, i32 100)
  ret void
}

declare dso_local %struct.mtk_hdmi_phy* @to_mtk_hdmi_phy(%struct.clk_hw*) #1

declare dso_local i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
