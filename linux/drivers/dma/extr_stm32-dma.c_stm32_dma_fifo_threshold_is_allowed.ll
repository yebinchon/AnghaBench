; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_fifo_threshold_is_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_fifo_threshold_is_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMA_SLAVE_BUSWIDTH_UNDEFINED = common dso_local global i32 0, align 4
@STM32_DMA_FIFO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @stm32_dma_fifo_threshold_is_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dma_fifo_threshold_is_allowed(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @DMA_SLAVE_BUSWIDTH_UNDEFINED, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load i32, i32* @STM32_DMA_FIFO_SIZE, align 4
  %17 = load i32, i32* %7, align 4
  %18 = udiv i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = mul i32 %18, %20
  %22 = udiv i32 %21, 4
  %23 = load i32, i32* %5, align 4
  %24 = urem i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %32

28:                                               ; preds = %15
  br label %30

29:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %32

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30, %3
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %29, %27
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
