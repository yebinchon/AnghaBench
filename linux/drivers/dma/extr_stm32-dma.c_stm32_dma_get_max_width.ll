; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_get_max_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_get_max_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STM32_DMA_FIFO_THRESHOLD_FULL = common dso_local global i64 0, align 8
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @stm32_dma_get_max_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dma_get_max_width(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @STM32_DMA_FIFO_THRESHOLD_FULL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %10, i32* %5, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %11, %9
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = srem i64 %20, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19, %14
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  %28 = icmp ugt i32 %26, %27
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i1 [ false, %19 ], [ %28, %25 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i32, i32* %5, align 4
  %33 = lshr i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %14

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
