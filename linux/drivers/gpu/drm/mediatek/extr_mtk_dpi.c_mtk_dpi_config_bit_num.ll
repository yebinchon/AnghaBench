; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_config_bit_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_config_bit_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dpi = type { i32 }

@OUT_BIT_8 = common dso_local global i32 0, align 4
@OUT_BIT_10 = common dso_local global i32 0, align 4
@OUT_BIT_12 = common dso_local global i32 0, align 4
@OUT_BIT_16 = common dso_local global i32 0, align 4
@DPI_OUTPUT_SETTING = common dso_local global i32 0, align 4
@OUT_BIT = common dso_local global i32 0, align 4
@OUT_BIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_dpi*, i32)* @mtk_dpi_config_bit_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dpi_config_bit_num(%struct.mtk_dpi* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_dpi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_dpi* %0, %struct.mtk_dpi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %15 [
    i32 128, label %7
    i32 131, label %9
    i32 130, label %11
    i32 129, label %13
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @OUT_BIT_8, align 4
  store i32 %8, i32* %5, align 4
  br label %17

9:                                                ; preds = %2
  %10 = load i32, i32* @OUT_BIT_10, align 4
  store i32 %10, i32* %5, align 4
  br label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @OUT_BIT_12, align 4
  store i32 %12, i32* %5, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @OUT_BIT_16, align 4
  store i32 %14, i32* %5, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @OUT_BIT_8, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %15, %13, %11, %9, %7
  %18 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %19 = load i32, i32* @DPI_OUTPUT_SETTING, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @OUT_BIT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* @OUT_BIT_MASK, align 4
  %24 = call i32 @mtk_dpi_mask(%struct.mtk_dpi* %18, i32 %19, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @mtk_dpi_mask(%struct.mtk_dpi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
