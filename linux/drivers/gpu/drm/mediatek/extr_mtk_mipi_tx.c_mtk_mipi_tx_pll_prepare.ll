; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mipi_tx.c_mtk_mipi_tx_pll_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mipi_tx.c_mtk_mipi_tx_pll_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mtk_mipi_tx = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"prepare: %u Hz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MIPITX_DSI_BG_CON = common dso_local global i32 0, align 4
@RG_DSI_VOUT_MSK = common dso_local global i32 0, align 4
@RG_DSI_BG_CKEN = common dso_local global i32 0, align 4
@RG_DSI_BG_CORE_EN = common dso_local global i32 0, align 4
@MIPITX_DSI_TOP_CON = common dso_local global i32 0, align 4
@RG_DSI_LNT_IMP_CAL_CODE = common dso_local global i32 0, align 4
@RG_DSI_LNT_HS_BIAS_EN = common dso_local global i32 0, align 4
@MIPITX_DSI_CON = common dso_local global i32 0, align 4
@RG_DSI_CKG_LDOOUT_EN = common dso_local global i32 0, align 4
@RG_DSI_LDOCORE_EN = common dso_local global i32 0, align 4
@MIPITX_DSI_PLL_PWR = common dso_local global i32 0, align 4
@RG_DSI_MPPLL_SDM_PWR_ON = common dso_local global i32 0, align 4
@RG_DSI_MPPLL_SDM_ISO_EN = common dso_local global i32 0, align 4
@MIPITX_DSI_PLL_CON0 = common dso_local global i32 0, align 4
@RG_DSI_MPPLL_PLL_EN = common dso_local global i32 0, align 4
@RG_DSI_MPPLL_TXDIV0 = common dso_local global i32 0, align 4
@RG_DSI_MPPLL_TXDIV1 = common dso_local global i32 0, align 4
@RG_DSI_MPPLL_PREDIV = common dso_local global i32 0, align 4
@MIPITX_DSI_PLL_CON2 = common dso_local global i64 0, align 8
@MIPITX_DSI_PLL_CON1 = common dso_local global i32 0, align 4
@RG_DSI_MPPLL_SDM_FRA_EN = common dso_local global i32 0, align 4
@RG_DSI_MPPLL_SDM_SSC_EN = common dso_local global i32 0, align 4
@MIPITX_DSI_PLL_TOP = common dso_local global i32 0, align 4
@RG_DSI_MPPLL_PRESERVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @mtk_mipi_tx_pll_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_mipi_tx_pll_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.mtk_mipi_tx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.mtk_mipi_tx* @mtk_mipi_tx_from_clk_hw(%struct.clk_hw* %9)
  store %struct.mtk_mipi_tx* %10, %struct.mtk_mipi_tx** %4, align 8
  %11 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %12 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %15 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %20, 500000000
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %54

23:                                               ; preds = %1
  %24 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %25 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %26, 250000000
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 2, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %53

29:                                               ; preds = %23
  %30 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %31 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 125000000
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 4, i32* %5, align 4
  store i32 2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %52

35:                                               ; preds = %29
  %36 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %37 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 62000000
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 8, i32* %5, align 4
  store i32 2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %51

41:                                               ; preds = %35
  %42 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %43 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %44, 50000000
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 16, i32* %5, align 4
  store i32 2, i32* %6, align 4
  store i32 2, i32* %7, align 4
  br label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %143

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50, %40
  br label %52

52:                                               ; preds = %51, %34
  br label %53

53:                                               ; preds = %52, %28
  br label %54

54:                                               ; preds = %53, %22
  %55 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %56 = load i32, i32* @MIPITX_DSI_BG_CON, align 4
  %57 = load i32, i32* @RG_DSI_VOUT_MSK, align 4
  %58 = load i32, i32* @RG_DSI_BG_CKEN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @RG_DSI_BG_CORE_EN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @RG_DSI_BG_CKEN, align 4
  %63 = or i32 4793472, %62
  %64 = load i32, i32* @RG_DSI_BG_CORE_EN, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @mtk_mipi_tx_update_bits(%struct.mtk_mipi_tx* %55, i32 %56, i32 %61, i32 %65)
  %67 = call i32 @usleep_range(i32 30, i32 100)
  %68 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %69 = load i32, i32* @MIPITX_DSI_TOP_CON, align 4
  %70 = load i32, i32* @RG_DSI_LNT_IMP_CAL_CODE, align 4
  %71 = load i32, i32* @RG_DSI_LNT_HS_BIAS_EN, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @RG_DSI_LNT_HS_BIAS_EN, align 4
  %74 = or i32 128, %73
  %75 = call i32 @mtk_mipi_tx_update_bits(%struct.mtk_mipi_tx* %68, i32 %69, i32 %72, i32 %74)
  %76 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %77 = load i32, i32* @MIPITX_DSI_CON, align 4
  %78 = load i32, i32* @RG_DSI_CKG_LDOOUT_EN, align 4
  %79 = load i32, i32* @RG_DSI_LDOCORE_EN, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @mtk_mipi_tx_set_bits(%struct.mtk_mipi_tx* %76, i32 %77, i32 %80)
  %82 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %83 = load i32, i32* @MIPITX_DSI_PLL_PWR, align 4
  %84 = load i32, i32* @RG_DSI_MPPLL_SDM_PWR_ON, align 4
  %85 = load i32, i32* @RG_DSI_MPPLL_SDM_ISO_EN, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @RG_DSI_MPPLL_SDM_PWR_ON, align 4
  %88 = call i32 @mtk_mipi_tx_update_bits(%struct.mtk_mipi_tx* %82, i32 %83, i32 %86, i32 %87)
  %89 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %90 = load i32, i32* @MIPITX_DSI_PLL_CON0, align 4
  %91 = load i32, i32* @RG_DSI_MPPLL_PLL_EN, align 4
  %92 = call i32 @mtk_mipi_tx_clear_bits(%struct.mtk_mipi_tx* %89, i32 %90, i32 %91)
  %93 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %94 = load i32, i32* @MIPITX_DSI_PLL_CON0, align 4
  %95 = load i32, i32* @RG_DSI_MPPLL_TXDIV0, align 4
  %96 = load i32, i32* @RG_DSI_MPPLL_TXDIV1, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @RG_DSI_MPPLL_PREDIV, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %6, align 4
  %101 = shl i32 %100, 3
  %102 = load i32, i32* %7, align 4
  %103 = shl i32 %102, 5
  %104 = or i32 %101, %103
  %105 = call i32 @mtk_mipi_tx_update_bits(%struct.mtk_mipi_tx* %93, i32 %94, i32 %99, i32 %104)
  %106 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %107 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %108, 2
  %110 = load i32, i32* %5, align 4
  %111 = mul nsw i32 %109, %110
  %112 = shl i32 %111, 24
  %113 = call i32 @div_u64(i32 %112, i32 26000000)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %116 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @MIPITX_DSI_PLL_CON2, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel(i32 %114, i64 %119)
  %121 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %122 = load i32, i32* @MIPITX_DSI_PLL_CON1, align 4
  %123 = load i32, i32* @RG_DSI_MPPLL_SDM_FRA_EN, align 4
  %124 = call i32 @mtk_mipi_tx_set_bits(%struct.mtk_mipi_tx* %121, i32 %122, i32 %123)
  %125 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %126 = load i32, i32* @MIPITX_DSI_PLL_CON0, align 4
  %127 = load i32, i32* @RG_DSI_MPPLL_PLL_EN, align 4
  %128 = call i32 @mtk_mipi_tx_set_bits(%struct.mtk_mipi_tx* %125, i32 %126, i32 %127)
  %129 = call i32 @usleep_range(i32 20, i32 100)
  %130 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %131 = load i32, i32* @MIPITX_DSI_PLL_CON1, align 4
  %132 = load i32, i32* @RG_DSI_MPPLL_SDM_SSC_EN, align 4
  %133 = call i32 @mtk_mipi_tx_clear_bits(%struct.mtk_mipi_tx* %130, i32 %131, i32 %132)
  %134 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %135 = load i32, i32* @MIPITX_DSI_PLL_TOP, align 4
  %136 = load i32, i32* @RG_DSI_MPPLL_PRESERVE, align 4
  %137 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %4, align 8
  %138 = getelementptr inbounds %struct.mtk_mipi_tx, %struct.mtk_mipi_tx* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @mtk_mipi_tx_update_bits(%struct.mtk_mipi_tx* %134, i32 %135, i32 %136, i32 %141)
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %54, %47
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.mtk_mipi_tx* @mtk_mipi_tx_from_clk_hw(%struct.clk_hw*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mtk_mipi_tx_update_bits(%struct.mtk_mipi_tx*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mtk_mipi_tx_set_bits(%struct.mtk_mipi_tx*, i32, i32) #1

declare dso_local i32 @mtk_mipi_tx_clear_bits(%struct.mtk_mipi_tx*, i32, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
