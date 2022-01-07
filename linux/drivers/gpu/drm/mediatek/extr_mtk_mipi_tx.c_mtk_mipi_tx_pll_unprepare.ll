; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mipi_tx.c_mtk_mipi_tx_pll_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mipi_tx.c_mtk_mipi_tx_pll_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mtk_mipi_tx = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"unprepare\0A\00", align 1
@MIPITX_DSI_PLL_CON0 = common dso_local global i32 0, align 4
@RG_DSI_MPPLL_PLL_EN = common dso_local global i32 0, align 4
@MIPITX_DSI_PLL_TOP = common dso_local global i32 0, align 4
@RG_DSI_MPPLL_PRESERVE = common dso_local global i32 0, align 4
@MIPITX_DSI_PLL_PWR = common dso_local global i32 0, align 4
@RG_DSI_MPPLL_SDM_ISO_EN = common dso_local global i32 0, align 4
@RG_DSI_MPPLL_SDM_PWR_ON = common dso_local global i32 0, align 4
@MIPITX_DSI_TOP_CON = common dso_local global i32 0, align 4
@RG_DSI_LNT_HS_BIAS_EN = common dso_local global i32 0, align 4
@MIPITX_DSI_CON = common dso_local global i32 0, align 4
@RG_DSI_CKG_LDOOUT_EN = common dso_local global i32 0, align 4
@RG_DSI_LDOCORE_EN = common dso_local global i32 0, align 4
@MIPITX_DSI_BG_CON = common dso_local global i32 0, align 4
@RG_DSI_BG_CKEN = common dso_local global i32 0, align 4
@RG_DSI_BG_CORE_EN = common dso_local global i32 0, align 4
@RG_DSI_MPPLL_DIV_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @mtk_mipi_tx_pll_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_mipi_tx_pll_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.mtk_mipi_tx*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %4 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %5 = call %struct.mtk_mipi_tx* @mtk_mipi_tx_from_clk_hw(%struct.clk_hw* %4)
  store %struct.mtk_mipi_tx* %5, %struct.mtk_mipi_tx** %3, align 8
  %6 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %3, align 8
  %11 = load i32, i32* @MIPITX_DSI_PLL_CON0, align 4
  %12 = load i32, i32* @RG_DSI_MPPLL_PLL_EN, align 4
  %13 = call i32 @mtk_mipi_tx_clear_bits(%struct.mtk_mipi_tx* %10, i32 %11, i32 %12)
  %14 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %3, align 8
  %15 = load i32, i32* @MIPITX_DSI_PLL_TOP, align 4
  %16 = load i32, i32* @RG_DSI_MPPLL_PRESERVE, align 4
  %17 = call i32 @mtk_mipi_tx_update_bits(%struct.mtk_mipi_tx* %14, i32 %15, i32 %16, i32 0)
  %18 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %3, align 8
  %19 = load i32, i32* @MIPITX_DSI_PLL_PWR, align 4
  %20 = load i32, i32* @RG_DSI_MPPLL_SDM_ISO_EN, align 4
  %21 = load i32, i32* @RG_DSI_MPPLL_SDM_PWR_ON, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RG_DSI_MPPLL_SDM_ISO_EN, align 4
  %24 = call i32 @mtk_mipi_tx_update_bits(%struct.mtk_mipi_tx* %18, i32 %19, i32 %22, i32 %23)
  %25 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %3, align 8
  %26 = load i32, i32* @MIPITX_DSI_TOP_CON, align 4
  %27 = load i32, i32* @RG_DSI_LNT_HS_BIAS_EN, align 4
  %28 = call i32 @mtk_mipi_tx_clear_bits(%struct.mtk_mipi_tx* %25, i32 %26, i32 %27)
  %29 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %3, align 8
  %30 = load i32, i32* @MIPITX_DSI_CON, align 4
  %31 = load i32, i32* @RG_DSI_CKG_LDOOUT_EN, align 4
  %32 = load i32, i32* @RG_DSI_LDOCORE_EN, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @mtk_mipi_tx_clear_bits(%struct.mtk_mipi_tx* %29, i32 %30, i32 %33)
  %35 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %3, align 8
  %36 = load i32, i32* @MIPITX_DSI_BG_CON, align 4
  %37 = load i32, i32* @RG_DSI_BG_CKEN, align 4
  %38 = load i32, i32* @RG_DSI_BG_CORE_EN, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @mtk_mipi_tx_clear_bits(%struct.mtk_mipi_tx* %35, i32 %36, i32 %39)
  %41 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %3, align 8
  %42 = load i32, i32* @MIPITX_DSI_PLL_CON0, align 4
  %43 = load i32, i32* @RG_DSI_MPPLL_DIV_MSK, align 4
  %44 = call i32 @mtk_mipi_tx_clear_bits(%struct.mtk_mipi_tx* %41, i32 %42, i32 %43)
  ret void
}

declare dso_local %struct.mtk_mipi_tx* @mtk_mipi_tx_from_clk_hw(%struct.clk_hw*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mtk_mipi_tx_clear_bits(%struct.mtk_mipi_tx*, i32, i32) #1

declare dso_local i32 @mtk_mipi_tx_update_bits(%struct.mtk_mipi_tx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
