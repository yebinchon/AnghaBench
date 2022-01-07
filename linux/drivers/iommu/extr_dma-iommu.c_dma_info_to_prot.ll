; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_dma_info_to_prot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_dma_info_to_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOMMU_CACHE = common dso_local global i32 0, align 4
@DMA_ATTR_PRIVILEGED = common dso_local global i64 0, align 8
@IOMMU_PRIV = common dso_local global i32 0, align 4
@IOMMU_READ = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @dma_info_to_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_info_to_prot(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @IOMMU_CACHE, align 4
  br label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 0, %13 ]
  store i32 %15, i32* %8, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @DMA_ATTR_PRIVILEGED, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @IOMMU_PRIV, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %14
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %40 [
    i32 130, label %26
    i32 128, label %32
    i32 129, label %36
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @IOMMU_READ, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IOMMU_WRITE, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %4, align 4
  br label %41

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @IOMMU_READ, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %4, align 4
  br label %41

36:                                               ; preds = %24
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @IOMMU_WRITE, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %36, %32, %26
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
