; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_get_tcd_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_get_tcd_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EDMA_TCD_ATTR_SSIZE_8BIT = common dso_local global i32 0, align 4
@EDMA_TCD_ATTR_DSIZE_8BIT = common dso_local global i32 0, align 4
@EDMA_TCD_ATTR_SSIZE_16BIT = common dso_local global i32 0, align 4
@EDMA_TCD_ATTR_DSIZE_16BIT = common dso_local global i32 0, align 4
@EDMA_TCD_ATTR_SSIZE_32BIT = common dso_local global i32 0, align 4
@EDMA_TCD_ATTR_DSIZE_32BIT = common dso_local global i32 0, align 4
@EDMA_TCD_ATTR_SSIZE_64BIT = common dso_local global i32 0, align 4
@EDMA_TCD_ATTR_DSIZE_64BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fsl_edma_get_tcd_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_edma_get_tcd_attr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %21 [
    i32 1, label %5
    i32 2, label %9
    i32 4, label %13
    i32 8, label %17
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @EDMA_TCD_ATTR_SSIZE_8BIT, align 4
  %7 = load i32, i32* @EDMA_TCD_ATTR_DSIZE_8BIT, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %2, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load i32, i32* @EDMA_TCD_ATTR_SSIZE_16BIT, align 4
  %11 = load i32, i32* @EDMA_TCD_ATTR_DSIZE_16BIT, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %2, align 4
  br label %25

13:                                               ; preds = %1
  %14 = load i32, i32* @EDMA_TCD_ATTR_SSIZE_32BIT, align 4
  %15 = load i32, i32* @EDMA_TCD_ATTR_DSIZE_32BIT, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %2, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load i32, i32* @EDMA_TCD_ATTR_SSIZE_64BIT, align 4
  %19 = load i32, i32* @EDMA_TCD_ATTR_DSIZE_64BIT, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %2, align 4
  br label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @EDMA_TCD_ATTR_SSIZE_32BIT, align 4
  %23 = load i32, i32* @EDMA_TCD_ATTR_DSIZE_32BIT, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %17, %13, %9, %5
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
