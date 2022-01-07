; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_dma_ops_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_dma_ops_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_ops_domain = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_MODE_3_LEVEL = common dso_local global i32 0, align 4
@PD_DMA_OPS_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@IOVA_START_PFN = common dso_local global i32 0, align 4
@iova_domain_flush_tlb = common dso_local global i32 0, align 4
@reserved_iova_ranges = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_ops_domain* ()* @dma_ops_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_ops_domain* @dma_ops_domain_alloc() #0 {
  %1 = alloca %struct.dma_ops_domain*, align 8
  %2 = alloca %struct.dma_ops_domain*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.dma_ops_domain* @kzalloc(i32 24, i32 %3)
  store %struct.dma_ops_domain* %4, %struct.dma_ops_domain** %2, align 8
  %5 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %6 = icmp ne %struct.dma_ops_domain* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.dma_ops_domain* null, %struct.dma_ops_domain** %1, align 8
  br label %55

8:                                                ; preds = %0
  %9 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %10 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %9, i32 0, i32 1
  %11 = call i64 @protection_domain_init(%struct.TYPE_2__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %52

14:                                               ; preds = %8
  %15 = load i32, i32* @PAGE_MODE_3_LEVEL, align 4
  %16 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %17 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i64 @get_zeroed_page(i32 %19)
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %23 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load i32, i32* @PD_DMA_OPS_MASK, align 4
  %26 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %27 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %30 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %14
  br label %52

35:                                               ; preds = %14
  %36 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %37 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %36, i32 0, i32 0
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load i32, i32* @IOVA_START_PFN, align 4
  %40 = call i32 @init_iova_domain(i32* %37, i32 %38, i32 %39)
  %41 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %42 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %41, i32 0, i32 0
  %43 = load i32, i32* @iova_domain_flush_tlb, align 4
  %44 = call i64 @init_iova_flush_queue(i32* %42, i32 %43, i32* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %52

47:                                               ; preds = %35
  %48 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %49 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %48, i32 0, i32 0
  %50 = call i32 @copy_reserved_iova(i32* @reserved_iova_ranges, i32* %49)
  %51 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  store %struct.dma_ops_domain* %51, %struct.dma_ops_domain** %1, align 8
  br label %55

52:                                               ; preds = %46, %34, %13
  %53 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %54 = call i32 @dma_ops_domain_free(%struct.dma_ops_domain* %53)
  store %struct.dma_ops_domain* null, %struct.dma_ops_domain** %1, align 8
  br label %55

55:                                               ; preds = %52, %47, %7
  %56 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %1, align 8
  ret %struct.dma_ops_domain* %56
}

declare dso_local %struct.dma_ops_domain* @kzalloc(i32, i32) #1

declare dso_local i64 @protection_domain_init(%struct.TYPE_2__*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @init_iova_domain(i32*, i32, i32) #1

declare dso_local i64 @init_iova_flush_queue(i32*, i32, i32*) #1

declare dso_local i32 @copy_reserved_iova(i32*, i32*) #1

declare dso_local i32 @dma_ops_domain_free(%struct.dma_ops_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
