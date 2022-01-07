; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_find_or_alloc_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_find_or_alloc_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.device = type { i32 }
%struct.device_domain_info = type { %struct.dmar_domain*, %struct.intel_iommu* }
%struct.intel_iommu = type { i32 }
%struct.pci_dev = type { i32 }

@get_last_alias = common dso_local global i32 0, align 4
@device_domain_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dmar_domain* (%struct.device*, i32)* @find_or_alloc_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dmar_domain* @find_or_alloc_domain(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.dmar_domain*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_domain_info*, align 8
  %7 = alloca %struct.dmar_domain*, align 8
  %8 = alloca %struct.intel_iommu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_dev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dmar_domain* null, %struct.dmar_domain** %7, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.intel_iommu* @device_to_iommu(%struct.device* %14, i32* %11, i32* %12)
  store %struct.intel_iommu* %15, %struct.intel_iommu** %8, align 8
  %16 = load %struct.intel_iommu*, %struct.intel_iommu** %8, align 8
  %17 = icmp ne %struct.intel_iommu* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.dmar_domain* null, %struct.dmar_domain** %3, align 8
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i64 @dev_is_pci(%struct.device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call %struct.pci_dev* @to_pci_dev(%struct.device* %24)
  store %struct.pci_dev* %25, %struct.pci_dev** %13, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %27 = load i32, i32* @get_last_alias, align 4
  %28 = call i32 @pci_for_each_dma_alias(%struct.pci_dev* %26, i32 %27, i32* %9)
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @spin_lock_irqsave(i32* @device_domain_lock, i64 %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pci_domain_nr(i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @PCI_BUS_NUM(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 255
  %39 = call %struct.device_domain_info* @dmar_search_domain_by_dev_info(i32 %34, i32 %36, i32 %38)
  store %struct.device_domain_info* %39, %struct.device_domain_info** %6, align 8
  %40 = load %struct.device_domain_info*, %struct.device_domain_info** %6, align 8
  %41 = icmp ne %struct.device_domain_info* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %23
  %43 = load %struct.device_domain_info*, %struct.device_domain_info** %6, align 8
  %44 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %43, i32 0, i32 1
  %45 = load %struct.intel_iommu*, %struct.intel_iommu** %44, align 8
  store %struct.intel_iommu* %45, %struct.intel_iommu** %8, align 8
  %46 = load %struct.device_domain_info*, %struct.device_domain_info** %6, align 8
  %47 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %46, i32 0, i32 0
  %48 = load %struct.dmar_domain*, %struct.dmar_domain** %47, align 8
  store %struct.dmar_domain* %48, %struct.dmar_domain** %7, align 8
  br label %49

49:                                               ; preds = %42, %23
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* @device_domain_lock, i64 %50)
  %52 = load %struct.device_domain_info*, %struct.device_domain_info** %6, align 8
  %53 = icmp ne %struct.device_domain_info* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %71

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %19
  %57 = call %struct.dmar_domain* @alloc_domain(i32 0)
  store %struct.dmar_domain* %57, %struct.dmar_domain** %7, align 8
  %58 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %59 = icmp ne %struct.dmar_domain* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store %struct.dmar_domain* null, %struct.dmar_domain** %3, align 8
  br label %73

61:                                               ; preds = %56
  %62 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %63 = load %struct.intel_iommu*, %struct.intel_iommu** %8, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @domain_init(%struct.dmar_domain* %62, %struct.intel_iommu* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %69 = call i32 @domain_exit(%struct.dmar_domain* %68)
  store %struct.dmar_domain* null, %struct.dmar_domain** %3, align 8
  br label %73

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %54
  %72 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  store %struct.dmar_domain* %72, %struct.dmar_domain** %3, align 8
  br label %73

73:                                               ; preds = %71, %67, %60, %18
  %74 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  ret %struct.dmar_domain* %74
}

declare dso_local %struct.intel_iommu* @device_to_iommu(%struct.device*, i32*, i32*) #1

declare dso_local i64 @dev_is_pci(%struct.device*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pci_for_each_dma_alias(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.device_domain_info* @dmar_search_domain_by_dev_info(i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local i32 @PCI_BUS_NUM(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.dmar_domain* @alloc_domain(i32) #1

declare dso_local i64 @domain_init(%struct.dmar_domain*, %struct.intel_iommu*, i32) #1

declare dso_local i32 @domain_exit(%struct.dmar_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
