; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_free_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_free_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.protection_domain = type { i32 }
%struct.dma_ops_domain = type { i32 }
%struct.page = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i8*, i32, i64)* @free_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_coherent(%struct.device* %0, i64 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.protection_domain*, align 8
  %12 = alloca %struct.dma_ops_domain*, align 8
  %13 = alloca %struct.page*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call %struct.page* @virt_to_page(i8* %14)
  store %struct.page* %15, %struct.page** %13, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @PAGE_ALIGN(i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.protection_domain* @get_domain(%struct.device* %18)
  store %struct.protection_domain* %19, %struct.protection_domain** %11, align 8
  %20 = load %struct.protection_domain*, %struct.protection_domain** %11, align 8
  %21 = call i64 @IS_ERR(%struct.protection_domain* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %32

24:                                               ; preds = %5
  %25 = load %struct.protection_domain*, %struct.protection_domain** %11, align 8
  %26 = call %struct.dma_ops_domain* @to_dma_ops_domain(%struct.protection_domain* %25)
  store %struct.dma_ops_domain* %26, %struct.dma_ops_domain** %12, align 8
  %27 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %12, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %31 = call i32 @__unmap_single(%struct.dma_ops_domain* %27, i32 %28, i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %24, %23
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.page*, %struct.page** %13, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @PAGE_SHIFT, align 8
  %37 = lshr i64 %35, %36
  %38 = call i32 @dma_release_from_contiguous(%struct.device* %33, %struct.page* %34, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load %struct.page*, %struct.page** %13, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @get_order(i64 %42)
  %44 = call i32 @__free_pages(%struct.page* %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %32
  ret void
}

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.protection_domain* @get_domain(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.protection_domain*) #1

declare dso_local %struct.dma_ops_domain* @to_dma_ops_domain(%struct.protection_domain*) #1

declare dso_local i32 @__unmap_single(%struct.dma_ops_domain*, i32, i64, i32) #1

declare dso_local i32 @dma_release_from_contiguous(%struct.device*, %struct.page*, i64) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @get_order(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
