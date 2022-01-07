; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_config_channel_swap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_config_channel_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dpi = type { i32 }

@SWAP_RGB = common dso_local global i32 0, align 4
@SWAP_GBR = common dso_local global i32 0, align 4
@SWAP_BRG = common dso_local global i32 0, align 4
@SWAP_RBG = common dso_local global i32 0, align 4
@SWAP_GRB = common dso_local global i32 0, align 4
@SWAP_BGR = common dso_local global i32 0, align 4
@DPI_OUTPUT_SETTING = common dso_local global i32 0, align 4
@CH_SWAP = common dso_local global i32 0, align 4
@CH_SWAP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_dpi*, i32)* @mtk_dpi_config_channel_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dpi_config_channel_swap(%struct.mtk_dpi* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_dpi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_dpi* %0, %struct.mtk_dpi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %19 [
    i32 128, label %7
    i32 131, label %9
    i32 132, label %11
    i32 129, label %13
    i32 130, label %15
    i32 133, label %17
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @SWAP_RGB, align 4
  store i32 %8, i32* %5, align 4
  br label %21

9:                                                ; preds = %2
  %10 = load i32, i32* @SWAP_GBR, align 4
  store i32 %10, i32* %5, align 4
  br label %21

11:                                               ; preds = %2
  %12 = load i32, i32* @SWAP_BRG, align 4
  store i32 %12, i32* %5, align 4
  br label %21

13:                                               ; preds = %2
  %14 = load i32, i32* @SWAP_RBG, align 4
  store i32 %14, i32* %5, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @SWAP_GRB, align 4
  store i32 %16, i32* %5, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @SWAP_BGR, align 4
  store i32 %18, i32* %5, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @SWAP_RGB, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %19, %17, %15, %13, %11, %9, %7
  %22 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %23 = load i32, i32* @DPI_OUTPUT_SETTING, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @CH_SWAP, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* @CH_SWAP_MASK, align 4
  %28 = call i32 @mtk_dpi_mask(%struct.mtk_dpi* %22, i32 %23, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @mtk_dpi_mask(%struct.mtk_dpi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
