; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mt2701_hdmi_phy.c_mtk_hdmi_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mt2701_hdmi_phy.c_mtk_hdmi_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mtk_hdmi_phy = type { i32 }

@HDMI_CON6 = common dso_local global i32 0, align 4
@RG_HTPLL_PREDIV_MASK = common dso_local global i32 0, align 4
@RG_HTPLL_POSDIV_MASK = common dso_local global i32 0, align 4
@HDMI_CON2 = common dso_local global i32 0, align 4
@RG_HDMITX_EN_TX_POSDIV = common dso_local global i32 0, align 4
@RG_HTPLL_IC = common dso_local global i32 0, align 4
@RG_HTPLL_IC_MASK = common dso_local global i32 0, align 4
@RG_HTPLL_IR = common dso_local global i32 0, align 4
@RG_HTPLL_IR_MASK = common dso_local global i32 0, align 4
@RG_HDMITX_TX_POSDIV = common dso_local global i32 0, align 4
@RG_HDMITX_TX_POSDIV_MASK = common dso_local global i32 0, align 4
@RG_HTPLL_FBKSEL = common dso_local global i32 0, align 4
@RG_HTPLL_FBKSEL_MASK = common dso_local global i32 0, align 4
@RG_HTPLL_FBKDIV = common dso_local global i32 0, align 4
@RG_HTPLL_FBKDIV_MASK = common dso_local global i32 0, align 4
@HDMI_CON7 = common dso_local global i32 0, align 4
@RG_HTPLL_DIVEN = common dso_local global i32 0, align 4
@RG_HTPLL_DIVEN_MASK = common dso_local global i32 0, align 4
@RG_HTPLL_BP = common dso_local global i32 0, align 4
@RG_HTPLL_BP_MASK = common dso_local global i32 0, align 4
@RG_HTPLL_BC = common dso_local global i32 0, align 4
@RG_HTPLL_BC_MASK = common dso_local global i32 0, align 4
@RG_HTPLL_BR = common dso_local global i32 0, align 4
@RG_HTPLL_BR_MASK = common dso_local global i32 0, align 4
@HDMI_CON1 = common dso_local global i32 0, align 4
@RG_HDMITX_PRED_IMP = common dso_local global i32 0, align 4
@RG_HDMITX_PRED_IBIAS = common dso_local global i32 0, align 4
@RG_HDMITX_PRED_IBIAS_MASK = common dso_local global i32 0, align 4
@HDMI_CON0 = common dso_local global i32 0, align 4
@RG_HDMITX_EN_IMP_MASK = common dso_local global i32 0, align 4
@RG_HDMITX_DRV_IMP = common dso_local global i32 0, align 4
@RG_HDMITX_DRV_IMP_MASK = common dso_local global i32 0, align 4
@HDMI_CON4 = common dso_local global i32 0, align 4
@RG_HDMITX_RESERVE_MASK = common dso_local global i32 0, align 4
@RG_HDMITX_DRV_IBIAS = common dso_local global i32 0, align 4
@RG_HDMITX_DRV_IBIAS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @mtk_hdmi_pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_pll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mtk_hdmi_phy*, align 8
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.mtk_hdmi_phy* @to_mtk_hdmi_phy(%struct.clk_hw* %9)
  store %struct.mtk_hdmi_phy* %10, %struct.mtk_hdmi_phy** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ule i64 %11, 64000000
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 3, i32* %8, align 4
  br label %20

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = icmp ule i64 %15, 128000000
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 2, i32* %8, align 4
  br label %19

18:                                               ; preds = %14
  store i32 1, i32* %8, align 4
  br label %19

19:                                               ; preds = %18, %17
  br label %20

20:                                               ; preds = %19, %13
  %21 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %22 = load i32, i32* @HDMI_CON6, align 4
  %23 = load i32, i32* @RG_HTPLL_PREDIV_MASK, align 4
  %24 = call i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy* %21, i32 %22, i32 %23)
  %25 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %26 = load i32, i32* @HDMI_CON6, align 4
  %27 = load i32, i32* @RG_HTPLL_POSDIV_MASK, align 4
  %28 = call i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy* %25, i32 %26, i32 %27)
  %29 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %30 = load i32, i32* @HDMI_CON2, align 4
  %31 = load i32, i32* @RG_HDMITX_EN_TX_POSDIV, align 4
  %32 = call i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy* %29, i32 %30, i32 %31)
  %33 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %34 = load i32, i32* @HDMI_CON6, align 4
  %35 = load i32, i32* @RG_HTPLL_IC, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* @RG_HTPLL_IC_MASK, align 4
  %38 = call i32 @mtk_hdmi_phy_mask(%struct.mtk_hdmi_phy* %33, i32 %34, i32 %36, i32 %37)
  %39 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %40 = load i32, i32* @HDMI_CON6, align 4
  %41 = load i32, i32* @RG_HTPLL_IR, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* @RG_HTPLL_IR_MASK, align 4
  %44 = call i32 @mtk_hdmi_phy_mask(%struct.mtk_hdmi_phy* %39, i32 %40, i32 %42, i32 %43)
  %45 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %46 = load i32, i32* @HDMI_CON2, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @RG_HDMITX_TX_POSDIV, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* @RG_HDMITX_TX_POSDIV_MASK, align 4
  %51 = call i32 @mtk_hdmi_phy_mask(%struct.mtk_hdmi_phy* %45, i32 %46, i32 %49, i32 %50)
  %52 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %53 = load i32, i32* @HDMI_CON6, align 4
  %54 = load i32, i32* @RG_HTPLL_FBKSEL, align 4
  %55 = shl i32 1, %54
  %56 = load i32, i32* @RG_HTPLL_FBKSEL_MASK, align 4
  %57 = call i32 @mtk_hdmi_phy_mask(%struct.mtk_hdmi_phy* %52, i32 %53, i32 %55, i32 %56)
  %58 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %59 = load i32, i32* @HDMI_CON6, align 4
  %60 = load i32, i32* @RG_HTPLL_FBKDIV, align 4
  %61 = shl i32 19, %60
  %62 = load i32, i32* @RG_HTPLL_FBKDIV_MASK, align 4
  %63 = call i32 @mtk_hdmi_phy_mask(%struct.mtk_hdmi_phy* %58, i32 %59, i32 %61, i32 %62)
  %64 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %65 = load i32, i32* @HDMI_CON7, align 4
  %66 = load i32, i32* @RG_HTPLL_DIVEN, align 4
  %67 = shl i32 2, %66
  %68 = load i32, i32* @RG_HTPLL_DIVEN_MASK, align 4
  %69 = call i32 @mtk_hdmi_phy_mask(%struct.mtk_hdmi_phy* %64, i32 %65, i32 %67, i32 %68)
  %70 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %71 = load i32, i32* @HDMI_CON6, align 4
  %72 = load i32, i32* @RG_HTPLL_BP, align 4
  %73 = shl i32 12, %72
  %74 = load i32, i32* @RG_HTPLL_BP_MASK, align 4
  %75 = call i32 @mtk_hdmi_phy_mask(%struct.mtk_hdmi_phy* %70, i32 %71, i32 %73, i32 %74)
  %76 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %77 = load i32, i32* @HDMI_CON6, align 4
  %78 = load i32, i32* @RG_HTPLL_BC, align 4
  %79 = shl i32 2, %78
  %80 = load i32, i32* @RG_HTPLL_BC_MASK, align 4
  %81 = call i32 @mtk_hdmi_phy_mask(%struct.mtk_hdmi_phy* %76, i32 %77, i32 %79, i32 %80)
  %82 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %83 = load i32, i32* @HDMI_CON6, align 4
  %84 = load i32, i32* @RG_HTPLL_BR, align 4
  %85 = shl i32 1, %84
  %86 = load i32, i32* @RG_HTPLL_BR_MASK, align 4
  %87 = call i32 @mtk_hdmi_phy_mask(%struct.mtk_hdmi_phy* %82, i32 %83, i32 %85, i32 %86)
  %88 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %89 = load i32, i32* @HDMI_CON1, align 4
  %90 = load i32, i32* @RG_HDMITX_PRED_IMP, align 4
  %91 = call i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy* %88, i32 %89, i32 %90)
  %92 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %93 = load i32, i32* @HDMI_CON1, align 4
  %94 = load i32, i32* @RG_HDMITX_PRED_IBIAS, align 4
  %95 = shl i32 3, %94
  %96 = load i32, i32* @RG_HDMITX_PRED_IBIAS_MASK, align 4
  %97 = call i32 @mtk_hdmi_phy_mask(%struct.mtk_hdmi_phy* %92, i32 %93, i32 %95, i32 %96)
  %98 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %99 = load i32, i32* @HDMI_CON0, align 4
  %100 = load i32, i32* @RG_HDMITX_EN_IMP_MASK, align 4
  %101 = call i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy* %98, i32 %99, i32 %100)
  %102 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %103 = load i32, i32* @HDMI_CON1, align 4
  %104 = load i32, i32* @RG_HDMITX_DRV_IMP, align 4
  %105 = shl i32 40, %104
  %106 = load i32, i32* @RG_HDMITX_DRV_IMP_MASK, align 4
  %107 = call i32 @mtk_hdmi_phy_mask(%struct.mtk_hdmi_phy* %102, i32 %103, i32 %105, i32 %106)
  %108 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %109 = load i32, i32* @HDMI_CON4, align 4
  %110 = load i32, i32* @RG_HDMITX_RESERVE_MASK, align 4
  %111 = call i32 @mtk_hdmi_phy_mask(%struct.mtk_hdmi_phy* %108, i32 %109, i32 40, i32 %110)
  %112 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %7, align 8
  %113 = load i32, i32* @HDMI_CON0, align 4
  %114 = load i32, i32* @RG_HDMITX_DRV_IBIAS, align 4
  %115 = shl i32 10, %114
  %116 = load i32, i32* @RG_HDMITX_DRV_IBIAS_MASK, align 4
  %117 = call i32 @mtk_hdmi_phy_mask(%struct.mtk_hdmi_phy* %112, i32 %113, i32 %115, i32 %116)
  ret i32 0
}

declare dso_local %struct.mtk_hdmi_phy* @to_mtk_hdmi_phy(%struct.clk_hw*) #1

declare dso_local i32 @mtk_hdmi_phy_set_bits(%struct.mtk_hdmi_phy*, i32, i32) #1

declare dso_local i32 @mtk_hdmi_phy_mask(%struct.mtk_hdmi_phy*, i32, i32, i32) #1

declare dso_local i32 @mtk_hdmi_phy_clear_bits(%struct.mtk_hdmi_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
