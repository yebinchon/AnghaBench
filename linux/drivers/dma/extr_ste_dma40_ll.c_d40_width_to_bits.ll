; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40_ll.c_d40_width_to_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40_ll.c_d40_width_to_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@STEDMA40_ESIZE_8_BIT = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@STEDMA40_ESIZE_16_BIT = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_8_BYTES = common dso_local global i32 0, align 4
@STEDMA40_ESIZE_64_BIT = common dso_local global i32 0, align 4
@STEDMA40_ESIZE_32_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @d40_width_to_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d40_width_to_bits(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @STEDMA40_ESIZE_8_BIT, align 4
  store i32 %8, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @STEDMA40_ESIZE_16_BIT, align 4
  store i32 %14, i32* %2, align 4
  br label %23

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @DMA_SLAVE_BUSWIDTH_8_BYTES, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @STEDMA40_ESIZE_64_BIT, align 4
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @STEDMA40_ESIZE_32_BIT, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %19, %13, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
