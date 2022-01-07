; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mt2701_hdmi_phy.c_mtk_hdmi_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mt2701_hdmi_phy.c_mtk_hdmi_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mtk_hdmi_phy = type { i64 }

@HDMI_CON6 = common dso_local global i64 0, align 8
@RG_HTPLL_PREDIV_MASK = common dso_local global i32 0, align 4
@RG_HTPLL_PREDIV = common dso_local global i32 0, align 4
@RG_HTPLL_FBKDIV_MASK = common dso_local global i32 0, align 4
@RG_HTPLL_FBKDIV = common dso_local global i32 0, align 4
@HDMI_CON2 = common dso_local global i64 0, align 8
@RG_HDMITX_TX_POSDIV_MASK = common dso_local global i32 0, align 4
@RG_HDMITX_TX_POSDIV = common dso_local global i64 0, align 8
@RG_HDMITX_EN_TX_POSDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @mtk_hdmi_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mtk_hdmi_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mtk_hdmi_phy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.mtk_hdmi_phy* @to_mtk_hdmi_phy(%struct.clk_hw* %8)
  store %struct.mtk_hdmi_phy* %9, %struct.mtk_hdmi_phy** %5, align 8
  %10 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %11 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HDMI_CON6, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  %16 = load i32, i32* @RG_HTPLL_PREDIV_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @RG_HTPLL_PREDIV, align 4
  %19 = ashr i32 %17, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  switch i64 %21, label %27 [
    i64 0, label %22
    i64 1, label %24
  ]

22:                                               ; preds = %2
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %6, align 8
  br label %30

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = udiv i64 %25, 2
  store i64 %26, i64* %6, align 8
  br label %30

27:                                               ; preds = %2
  %28 = load i64, i64* %4, align 8
  %29 = udiv i64 %28, 4
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %27, %24, %22
  %31 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %32 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HDMI_CON6, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  %37 = load i32, i32* @RG_HTPLL_FBKDIV_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @RG_HTPLL_FBKDIV, align 4
  %40 = ashr i32 %38, %39
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  %44 = mul i64 %43, 2
  %45 = load i64, i64* %6, align 8
  %46 = mul i64 %45, %44
  store i64 %46, i64* %6, align 8
  %47 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %48 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HDMI_CON2, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  %53 = load i32, i32* @RG_HDMITX_TX_POSDIV_MASK, align 4
  %54 = and i32 %52, %53
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @RG_HDMITX_TX_POSDIV, align 8
  %58 = lshr i64 %56, %57
  %59 = load i64, i64* %6, align 8
  %60 = lshr i64 %59, %58
  store i64 %60, i64* %6, align 8
  %61 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %62 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @HDMI_CON2, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readl(i64 %65)
  %67 = load i32, i32* @RG_HDMITX_EN_TX_POSDIV, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %30
  %71 = load i64, i64* %6, align 8
  %72 = udiv i64 %71, 5
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %70, %30
  %74 = load i64, i64* %6, align 8
  ret i64 %74
}

declare dso_local %struct.mtk_hdmi_phy* @to_mtk_hdmi_phy(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
