; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_context_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_context_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.device = type { i32 }
%struct.domain_context_mapping_data = type { %struct.pasid_table*, %struct.intel_iommu*, %struct.dmar_domain* }
%struct.pasid_table = type { i32 }
%struct.intel_iommu = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@domain_context_mapping_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*, %struct.device*)* @domain_context_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_context_mapping(%struct.dmar_domain* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmar_domain*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.domain_context_mapping_data, align 8
  %7 = alloca %struct.pasid_table*, align 8
  %8 = alloca %struct.intel_iommu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.intel_iommu* @device_to_iommu(%struct.device* %11, i32* %9, i32* %10)
  store %struct.intel_iommu* %12, %struct.intel_iommu** %8, align 8
  %13 = load %struct.intel_iommu*, %struct.intel_iommu** %8, align 8
  %14 = icmp ne %struct.intel_iommu* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.pasid_table* @intel_pasid_get_table(%struct.device* %19)
  store %struct.pasid_table* %20, %struct.pasid_table** %7, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call i32 @dev_is_pci(%struct.device* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %26 = load %struct.intel_iommu*, %struct.intel_iommu** %8, align 8
  %27 = load %struct.pasid_table*, %struct.pasid_table** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @domain_context_mapping_one(%struct.dmar_domain* %25, %struct.intel_iommu* %26, %struct.pasid_table* %27, i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %41

31:                                               ; preds = %18
  %32 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %33 = getelementptr inbounds %struct.domain_context_mapping_data, %struct.domain_context_mapping_data* %6, i32 0, i32 2
  store %struct.dmar_domain* %32, %struct.dmar_domain** %33, align 8
  %34 = load %struct.intel_iommu*, %struct.intel_iommu** %8, align 8
  %35 = getelementptr inbounds %struct.domain_context_mapping_data, %struct.domain_context_mapping_data* %6, i32 0, i32 1
  store %struct.intel_iommu* %34, %struct.intel_iommu** %35, align 8
  %36 = load %struct.pasid_table*, %struct.pasid_table** %7, align 8
  %37 = getelementptr inbounds %struct.domain_context_mapping_data, %struct.domain_context_mapping_data* %6, i32 0, i32 0
  store %struct.pasid_table* %36, %struct.pasid_table** %37, align 8
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i32 @to_pci_dev(%struct.device* %38)
  %40 = call i32 @pci_for_each_dma_alias(i32 %39, i32* @domain_context_mapping_cb, %struct.domain_context_mapping_data* %6)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %31, %24, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.intel_iommu* @device_to_iommu(%struct.device*, i32*, i32*) #1

declare dso_local %struct.pasid_table* @intel_pasid_get_table(%struct.device*) #1

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local i32 @domain_context_mapping_one(%struct.dmar_domain*, %struct.intel_iommu*, %struct.pasid_table*, i32, i32) #1

declare dso_local i32 @pci_for_each_dma_alias(i32, i32*, %struct.domain_context_mapping_data*) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
