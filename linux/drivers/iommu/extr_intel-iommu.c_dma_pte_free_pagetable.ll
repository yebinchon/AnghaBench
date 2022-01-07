; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_dma_pte_free_pagetable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_dma_pte_free_pagetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_domain*, i64, i64, i32)* @dma_pte_free_pagetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_pte_free_pagetable(%struct.dmar_domain* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.dmar_domain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @domain_pfn_supported(%struct.dmar_domain* %9, i64 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @domain_pfn_supported(%struct.dmar_domain* %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ugt i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @dma_pte_clear_range(%struct.dmar_domain* %28, i64 %29, i64 %30)
  %32 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %33 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %34 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @agaw_to_level(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %39 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @dma_pte_free_level(%struct.dmar_domain* %32, i32 %36, i32 %37, i32* %40, i32 0, i64 %41, i64 %42)
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %4
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %49 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @DOMAIN_MAX_PFN(i32 %50)
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %55 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @free_pgtable_page(i32* %56)
  %58 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %59 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %53, %46, %4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @domain_pfn_supported(%struct.dmar_domain*, i64) #1

declare dso_local i32 @dma_pte_clear_range(%struct.dmar_domain*, i64, i64) #1

declare dso_local i32 @dma_pte_free_level(%struct.dmar_domain*, i32, i32, i32*, i32, i64, i64) #1

declare dso_local i32 @agaw_to_level(i32) #1

declare dso_local i64 @DOMAIN_MAX_PFN(i32) #1

declare dso_local i32 @free_pgtable_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
