; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mipi_tx.c_mtk_mipi_tx_power_off_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_mipi_tx.c_mtk_mipi_tx_power_off_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.mtk_mipi_tx = type { i32 }

@MIPITX_DSI_TOP_CON = common dso_local global i32 0, align 4
@RG_DSI_PAD_TIE_LOW_EN = common dso_local global i32 0, align 4
@MIPITX_DSI_CLOCK_LANE = common dso_local global i64 0, align 8
@MIPITX_DSI_DATA_LANE3 = common dso_local global i64 0, align 8
@RG_DSI_LNTx_LDOOUT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy*)* @mtk_mipi_tx_power_off_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_mipi_tx_power_off_signal(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.mtk_mipi_tx*, align 8
  %4 = alloca i64, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.mtk_mipi_tx* @phy_get_drvdata(%struct.phy* %5)
  store %struct.mtk_mipi_tx* %6, %struct.mtk_mipi_tx** %3, align 8
  %7 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %3, align 8
  %8 = load i32, i32* @MIPITX_DSI_TOP_CON, align 4
  %9 = load i32, i32* @RG_DSI_PAD_TIE_LOW_EN, align 4
  %10 = call i32 @mtk_mipi_tx_set_bits(%struct.mtk_mipi_tx* %7, i32 %8, i32 %9)
  %11 = load i64, i64* @MIPITX_DSI_CLOCK_LANE, align 8
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %21, %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @MIPITX_DSI_DATA_LANE3, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load %struct.mtk_mipi_tx*, %struct.mtk_mipi_tx** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* @RG_DSI_LNTx_LDOOUT_EN, align 4
  %20 = call i32 @mtk_mipi_tx_clear_bits(%struct.mtk_mipi_tx* %17, i64 %18, i32 %19)
  br label %21

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 %22, 4
  store i64 %23, i64* %4, align 8
  br label %12

24:                                               ; preds = %12
  ret void
}

declare dso_local %struct.mtk_mipi_tx* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @mtk_mipi_tx_set_bits(%struct.mtk_mipi_tx*, i32, i32) #1

declare dso_local i32 @mtk_mipi_tx_clear_bits(%struct.mtk_mipi_tx*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
