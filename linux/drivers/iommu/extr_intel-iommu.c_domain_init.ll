; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, i32, i32, i32, %struct.dma_pte*, i32, i64, i32 }
%struct.dma_pte = type { i32 }
%struct.intel_iommu = type { i32, i32, i32 }

@VTD_PAGE_SIZE = common dso_local global i32 0, align 4
@IOVA_START_PFN = common dso_local global i32 0, align 4
@iommu_flush_iova = common dso_local global i32 0, align 4
@iova_entry_free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Hardware doesn't support agaw %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@intel_iommu_superpage = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*, %struct.intel_iommu*, i32)* @domain_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_init(%struct.dmar_domain* %0, %struct.intel_iommu* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmar_domain*, align 8
  %6 = alloca %struct.intel_iommu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %5, align 8
  store %struct.intel_iommu* %1, %struct.intel_iommu** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %13 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %12, i32 0, i32 7
  %14 = load i32, i32* @VTD_PAGE_SIZE, align 4
  %15 = load i32, i32* @IOVA_START_PFN, align 4
  %16 = call i32 @init_iova_domain(i32* %13, i32 %14, i32 %15)
  %17 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %18 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %17, i32 0, i32 7
  %19 = load i32, i32* @iommu_flush_iova, align 4
  %20 = load i32, i32* @iova_entry_free, align 4
  %21 = call i32 @init_iova_flush_queue(i32* %18, i32 %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %134

26:                                               ; preds = %3
  %27 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %28 = call i32 @domain_reserve_special_ranges(%struct.dmar_domain* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %31 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cap_mgaw(i32 %32)
  %34 = icmp sgt i32 %29, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %37 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cap_mgaw(i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %35, %26
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %43 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @guestwidth_to_adjustwidth(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @width_to_agaw(i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %49 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @cap_sagaw(i32 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @test_bit(i32 %52, i64* %10)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %40
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @find_next_bit(i64* %10, i32 5, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp sge i32 %60, 5
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %134

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %40
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %69 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %71 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @ecap_coherent(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %77 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  br label %81

78:                                               ; preds = %66
  %79 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %80 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %79, i32 0, i32 2
  store i32 0, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %83 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @ecap_sc_support(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %89 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %88, i32 0, i32 3
  store i32 1, i32* %89, align 4
  br label %93

90:                                               ; preds = %81
  %91 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %92 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %91, i32 0, i32 3
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i64, i64* @intel_iommu_superpage, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %98 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @cap_super_page_val(i32 %99)
  %101 = call i64 @fls(i32 %100)
  %102 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %103 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %102, i32 0, i32 6
  store i64 %101, i64* %103, align 8
  br label %107

104:                                              ; preds = %93
  %105 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %106 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %105, i32 0, i32 6
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %104, %96
  %108 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %109 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %112 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 8
  %113 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %114 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @alloc_pgtable_page(i32 %115)
  %117 = inttoptr i64 %116 to %struct.dma_pte*
  %118 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %119 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %118, i32 0, i32 4
  store %struct.dma_pte* %117, %struct.dma_pte** %119, align 8
  %120 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %121 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %120, i32 0, i32 4
  %122 = load %struct.dma_pte*, %struct.dma_pte** %121, align 8
  %123 = icmp ne %struct.dma_pte* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %107
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %134

127:                                              ; preds = %107
  %128 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %129 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %130 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %129, i32 0, i32 4
  %131 = load %struct.dma_pte*, %struct.dma_pte** %130, align 8
  %132 = load i32, i32* @PAGE_SIZE, align 4
  %133 = call i32 @__iommu_flush_cache(%struct.intel_iommu* %128, %struct.dma_pte* %131, i32 %132)
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %127, %124, %62, %24
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @init_iova_domain(i32*, i32, i32) #1

declare dso_local i32 @init_iova_flush_queue(i32*, i32, i32) #1

declare dso_local i32 @domain_reserve_special_ranges(%struct.dmar_domain*) #1

declare dso_local i32 @cap_mgaw(i32) #1

declare dso_local i32 @guestwidth_to_adjustwidth(i32) #1

declare dso_local i32 @width_to_agaw(i32) #1

declare dso_local i64 @cap_sagaw(i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i64 @ecap_coherent(i32) #1

declare dso_local i64 @ecap_sc_support(i32) #1

declare dso_local i64 @fls(i32) #1

declare dso_local i32 @cap_super_page_val(i32) #1

declare dso_local i64 @alloc_pgtable_page(i32) #1

declare dso_local i32 @__iommu_flush_cache(%struct.intel_iommu*, %struct.dma_pte*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
