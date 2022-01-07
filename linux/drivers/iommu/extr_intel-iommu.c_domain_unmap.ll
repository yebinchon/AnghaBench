; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.page* }
%struct.dmar_domain = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.dmar_domain*, i64, i64)* @domain_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @domain_unmap(%struct.dmar_domain* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dmar_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @domain_pfn_supported(%struct.dmar_domain* %9, i64 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @domain_pfn_supported(%struct.dmar_domain* %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ugt i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %29 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %30 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @agaw_to_level(i32 %31)
  %33 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %34 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call %struct.page* @dma_pte_clear_level(%struct.dmar_domain* %28, i32 %32, i32* %35, i32 0, i64 %36, i64 %37, i32* null)
  store %struct.page* %38, %struct.page** %7, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %3
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %44 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @DOMAIN_MAX_PFN(i32 %45)
  %47 = icmp eq i64 %42, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %50 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call %struct.page* @virt_to_page(i32* %51)
  store %struct.page* %52, %struct.page** %8, align 8
  %53 = load %struct.page*, %struct.page** %7, align 8
  %54 = load %struct.page*, %struct.page** %8, align 8
  %55 = getelementptr inbounds %struct.page, %struct.page* %54, i32 0, i32 0
  store %struct.page* %53, %struct.page** %55, align 8
  %56 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %56, %struct.page** %7, align 8
  %57 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %58 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %48, %41, %3
  %60 = load %struct.page*, %struct.page** %7, align 8
  ret %struct.page* %60
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @domain_pfn_supported(%struct.dmar_domain*, i64) #1

declare dso_local %struct.page* @dma_pte_clear_level(%struct.dmar_domain*, i32, i32*, i32, i64, i64, i32*) #1

declare dso_local i32 @agaw_to_level(i32) #1

declare dso_local i64 @DOMAIN_MAX_PFN(i32) #1

declare dso_local %struct.page* @virt_to_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
