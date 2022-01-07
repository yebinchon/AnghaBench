; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_intel_pasid_setup_second_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_intel_pasid_setup_second_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i64, i32, i32, i32 }
%struct.dmar_domain = type { i32, i32*, %struct.dma_pte* }
%struct.dma_pte = type { i32 }
%struct.device = type { i32 }
%struct.pasid_entry = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"No second level translation support on %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid domain page table\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to get pasid entry of PASID %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_pasid_setup_second_level(%struct.intel_iommu* %0, %struct.dmar_domain* %1, %struct.device* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_iommu*, align 8
  %7 = alloca %struct.dmar_domain*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pasid_entry*, align 8
  %11 = alloca %struct.dma_pte*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_iommu* %0, %struct.intel_iommu** %6, align 8
  store %struct.dmar_domain* %1, %struct.dmar_domain** %7, align 8
  store %struct.device* %2, %struct.device** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %16 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ecap_slts(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %22 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %135

27:                                               ; preds = %4
  %28 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %29 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %28, i32 0, i32 2
  %30 = load %struct.dma_pte*, %struct.dma_pte** %29, align 8
  store %struct.dma_pte* %30, %struct.dma_pte** %11, align 8
  %31 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %32 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %53, %27
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %37 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load %struct.dma_pte*, %struct.dma_pte** %11, align 8
  %42 = call i32 @dma_pte_addr(%struct.dma_pte* %41)
  %43 = call %struct.dma_pte* @phys_to_virt(i32 %42)
  store %struct.dma_pte* %43, %struct.dma_pte** %11, align 8
  %44 = load %struct.dma_pte*, %struct.dma_pte** %11, align 8
  %45 = call i32 @dma_pte_present(%struct.dma_pte* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %40
  %48 = load %struct.device*, %struct.device** %8, align 8
  %49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %135

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %13, align 4
  br label %34

56:                                               ; preds = %34
  %57 = load %struct.dma_pte*, %struct.dma_pte** %11, align 8
  %58 = call i32 @virt_to_phys(%struct.dma_pte* %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %60 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %63 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %14, align 4
  %67 = load %struct.device*, %struct.device** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call %struct.pasid_entry* @intel_pasid_get_entry(%struct.device* %67, i32 %68)
  store %struct.pasid_entry* %69, %struct.pasid_entry** %10, align 8
  %70 = load %struct.pasid_entry*, %struct.pasid_entry** %10, align 8
  %71 = icmp ne %struct.pasid_entry* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %56
  %73 = load %struct.device*, %struct.device** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %135

78:                                               ; preds = %56
  %79 = load %struct.pasid_entry*, %struct.pasid_entry** %10, align 8
  %80 = call i32 @pasid_clear_entry(%struct.pasid_entry* %79)
  %81 = load %struct.pasid_entry*, %struct.pasid_entry** %10, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @pasid_set_domain_id(%struct.pasid_entry* %81, i32 %82)
  %84 = load %struct.pasid_entry*, %struct.pasid_entry** %10, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @pasid_set_slptr(%struct.pasid_entry* %84, i32 %85)
  %87 = load %struct.pasid_entry*, %struct.pasid_entry** %10, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @pasid_set_address_width(%struct.pasid_entry* %87, i32 %88)
  %90 = load %struct.pasid_entry*, %struct.pasid_entry** %10, align 8
  %91 = call i32 @pasid_set_translation_type(%struct.pasid_entry* %90, i32 2)
  %92 = load %struct.pasid_entry*, %struct.pasid_entry** %10, align 8
  %93 = call i32 @pasid_set_fault_enable(%struct.pasid_entry* %92)
  %94 = load %struct.pasid_entry*, %struct.pasid_entry** %10, align 8
  %95 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %96 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ecap_smpwc(i32 %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 @pasid_set_page_snoop(%struct.pasid_entry* %94, i32 %102)
  %104 = load %struct.pasid_entry*, %struct.pasid_entry** %10, align 8
  %105 = call i32 @pasid_set_sre(%struct.pasid_entry* %104)
  %106 = load %struct.pasid_entry*, %struct.pasid_entry** %10, align 8
  %107 = call i32 @pasid_set_present(%struct.pasid_entry* %106)
  %108 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %109 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ecap_coherent(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %78
  %114 = load %struct.pasid_entry*, %struct.pasid_entry** %10, align 8
  %115 = call i32 @clflush_cache_range(%struct.pasid_entry* %114, i32 4)
  br label %116

116:                                              ; preds = %113, %78
  %117 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %118 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @cap_caching_mode(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @pasid_cache_invalidation_with_pasid(%struct.intel_iommu* %123, i32 %124, i32 %125)
  %127 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @iotlb_invalidation_with_pasid(%struct.intel_iommu* %127, i32 %128, i32 %129)
  br label %134

131:                                              ; preds = %116
  %132 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %133 = call i32 @iommu_flush_write_buffer(%struct.intel_iommu* %132)
  br label %134

134:                                              ; preds = %131, %122
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %72, %47, %20
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @ecap_slts(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.dma_pte* @phys_to_virt(i32) #1

declare dso_local i32 @dma_pte_addr(%struct.dma_pte*) #1

declare dso_local i32 @dma_pte_present(%struct.dma_pte*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @virt_to_phys(%struct.dma_pte*) #1

declare dso_local %struct.pasid_entry* @intel_pasid_get_entry(%struct.device*, i32) #1

declare dso_local i32 @pasid_clear_entry(%struct.pasid_entry*) #1

declare dso_local i32 @pasid_set_domain_id(%struct.pasid_entry*, i32) #1

declare dso_local i32 @pasid_set_slptr(%struct.pasid_entry*, i32) #1

declare dso_local i32 @pasid_set_address_width(%struct.pasid_entry*, i32) #1

declare dso_local i32 @pasid_set_translation_type(%struct.pasid_entry*, i32) #1

declare dso_local i32 @pasid_set_fault_enable(%struct.pasid_entry*) #1

declare dso_local i32 @pasid_set_page_snoop(%struct.pasid_entry*, i32) #1

declare dso_local i32 @ecap_smpwc(i32) #1

declare dso_local i32 @pasid_set_sre(%struct.pasid_entry*) #1

declare dso_local i32 @pasid_set_present(%struct.pasid_entry*) #1

declare dso_local i32 @ecap_coherent(i32) #1

declare dso_local i32 @clflush_cache_range(%struct.pasid_entry*, i32) #1

declare dso_local i64 @cap_caching_mode(i32) #1

declare dso_local i32 @pasid_cache_invalidation_with_pasid(%struct.intel_iommu*, i32, i32) #1

declare dso_local i32 @iotlb_invalidation_with_pasid(%struct.intel_iommu*, i32, i32) #1

declare dso_local i32 @iommu_flush_write_buffer(%struct.intel_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
