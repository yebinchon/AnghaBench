; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_busy_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_busy_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hsdma_device = type { i64 }

@MTK_HSDMA_GLO = common dso_local global i64 0, align 8
@MTK_HSDMA_GLO_BUSY = common dso_local global i32 0, align 4
@MTK_HSDMA_USEC_POLL = common dso_local global i32 0, align 4
@MTK_HSDMA_TIMEOUT_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hsdma_device*)* @mtk_hsdma_busy_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hsdma_busy_wait(%struct.mtk_hsdma_device* %0) #0 {
  %2 = alloca %struct.mtk_hsdma_device*, align 8
  %3 = alloca i32, align 4
  store %struct.mtk_hsdma_device* %0, %struct.mtk_hsdma_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MTK_HSDMA_GLO, align 8
  %8 = add nsw i64 %6, %7
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MTK_HSDMA_GLO_BUSY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @MTK_HSDMA_USEC_POLL, align 4
  %17 = load i32, i32* @MTK_HSDMA_TIMEOUT_POLL, align 4
  %18 = call i32 @readl_poll_timeout(i64 %8, i32 %9, i32 %15, i32 %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
