; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_domain_identity_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_domain_identity_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }

@VTD_PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Reserving iova failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Mapping reserved region %llx-%llx\0A\00", align 1
@DMA_PTE_READ = common dso_local global i32 0, align 4
@DMA_PTE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*, i64, i64)* @iommu_domain_identity_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_domain_identity_map(%struct.dmar_domain* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmar_domain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @VTD_PAGE_SHIFT, align 8
  %12 = lshr i64 %10, %11
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @VTD_PAGE_SHIFT, align 8
  %15 = lshr i64 %13, %14
  store i64 %15, i64* %9, align 8
  %16 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %17 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %16, i32 0, i32 0
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @dma_to_mm_pfn(i64 %18)
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @dma_to_mm_pfn(i64 %20)
  %22 = call i32 @reserve_iova(i32* %17, i32 %19, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %47

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %29, i64 %30)
  %32 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @dma_pte_clear_range(%struct.dmar_domain* %32, i64 %33, i64 %34)
  %36 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = sub i64 %39, %40
  %42 = add i64 %41, 1
  %43 = load i32, i32* @DMA_PTE_READ, align 4
  %44 = load i32, i32* @DMA_PTE_WRITE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @__domain_mapping(%struct.dmar_domain* %36, i64 %37, i32* null, i64 %38, i64 %42, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %28, %24
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @reserve_iova(i32*, i32, i32) #1

declare dso_local i32 @dma_to_mm_pfn(i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @dma_pte_clear_range(%struct.dmar_domain*, i64, i64) #1

declare dso_local i32 @__domain_mapping(%struct.dmar_domain*, i64, i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
