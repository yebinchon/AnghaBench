; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_hw_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_hw_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hsdma_device = type { i32 }

@MTK_HSDMA_GLO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hsdma_device*)* @mtk_hsdma_hw_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hsdma_hw_deinit(%struct.mtk_hsdma_device* %0) #0 {
  %2 = alloca %struct.mtk_hsdma_device*, align 8
  store %struct.mtk_hsdma_device* %0, %struct.mtk_hsdma_device** %2, align 8
  %3 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %2, align 8
  %4 = load i32, i32* @MTK_HSDMA_GLO, align 4
  %5 = call i32 @mtk_dma_write(%struct.mtk_hsdma_device* %3, i32 %4, i32 0)
  %6 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %2, align 8
  %7 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @clk_disable_unprepare(i32 %8)
  %10 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %2, align 8
  %11 = call i32 @hsdma2dev(%struct.mtk_hsdma_device* %10)
  %12 = call i32 @pm_runtime_put_sync(i32 %11)
  %13 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %2, align 8
  %14 = call i32 @hsdma2dev(%struct.mtk_hsdma_device* %13)
  %15 = call i32 @pm_runtime_disable(i32 %14)
  ret i32 0
}

declare dso_local i32 @mtk_dma_write(%struct.mtk_hsdma_device*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @hsdma2dev(%struct.mtk_hsdma_device*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
