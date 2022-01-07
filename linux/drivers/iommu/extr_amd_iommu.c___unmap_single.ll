; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c___unmap_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c___unmap_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_ops_domain = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@amd_iommu_unmap_flush = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_ops_domain*, i32, i64, i32)* @__unmap_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__unmap_single(%struct.dma_ops_domain* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.dma_ops_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.dma_ops_domain* %0, %struct.dma_ops_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @PAGE_SIZE, align 8
  %16 = call i32 @iommu_num_pages(i32 %13, i64 %14, i64 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @PAGE_MASK, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %36, %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %5, align 8
  %27 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %26, i32 0, i32 1
  %28 = load i32, i32* %10, align 4
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = call i32 @iommu_unmap_page(%struct.TYPE_4__* %27, i32 %28, i64 %29)
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %9, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load i64, i64* @amd_iommu_unmap_flush, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %5, align 8
  %44 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %5, align 8
  %49 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %48, i32 0, i32 1
  %50 = call i32 @domain_flush_tlb(%struct.TYPE_4__* %49)
  %51 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %5, align 8
  %52 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %51, i32 0, i32 1
  %53 = call i32 @domain_flush_complete(%struct.TYPE_4__* %52)
  %54 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %5, align 8
  %55 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @dma_ops_free_iova(%struct.dma_ops_domain* %59, i32 %60, i32 %61)
  br label %73

63:                                               ; preds = %39
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @__roundup_pow_of_two(i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %5, align 8
  %67 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %66, i32 0, i32 0
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @PAGE_SHIFT, align 4
  %70 = lshr i32 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @queue_iova(i32* %67, i32 %70, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %63, %42
  ret void
}

declare dso_local i32 @iommu_num_pages(i32, i64, i64) #1

declare dso_local i32 @iommu_unmap_page(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @domain_flush_tlb(%struct.TYPE_4__*) #1

declare dso_local i32 @domain_flush_complete(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_ops_free_iova(%struct.dma_ops_domain*, i32, i32) #1

declare dso_local i32 @__roundup_pow_of_two(i32) #1

declare dso_local i32 @queue_iova(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
