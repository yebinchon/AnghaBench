; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_poll_engine_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_poll_engine_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cqdma_pchan = type { i64 }

@MTK_CQDMA_EN = common dso_local global i64 0, align 8
@MTK_CQDMA_EN_BIT = common dso_local global i32 0, align 4
@MTK_CQDMA_USEC_POLL = common dso_local global i32 0, align 4
@MTK_CQDMA_TIMEOUT_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cqdma_pchan*, i32)* @mtk_cqdma_poll_engine_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_cqdma_poll_engine_done(%struct.mtk_cqdma_pchan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_cqdma_pchan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_cqdma_pchan* %0, %struct.mtk_cqdma_pchan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_cqdma_pchan, %struct.mtk_cqdma_pchan* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MTK_CQDMA_EN, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MTK_CQDMA_EN_BIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @MTK_CQDMA_USEC_POLL, align 4
  %23 = load i32, i32* @MTK_CQDMA_TIMEOUT_POLL, align 4
  %24 = call i32 @readl_poll_timeout(i64 %14, i32 %15, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %2
  %26 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %4, align 8
  %27 = getelementptr inbounds %struct.mtk_cqdma_pchan, %struct.mtk_cqdma_pchan* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MTK_CQDMA_EN, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MTK_CQDMA_EN_BIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* @MTK_CQDMA_USEC_POLL, align 4
  %39 = load i32, i32* @MTK_CQDMA_TIMEOUT_POLL, align 4
  %40 = call i32 @readl_poll_timeout_atomic(i64 %30, i32 %31, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %25, %9
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
