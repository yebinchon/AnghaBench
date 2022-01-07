; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_set_domain_for_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_set_domain_for_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dmar_domain = type { i32 }
%struct.intel_iommu = type { i32 }
%struct.pci_dev = type { i32 }

@get_last_alias = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dmar_domain* (%struct.device*, %struct.dmar_domain*)* @set_domain_for_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dmar_domain* @set_domain_for_dev(%struct.device* %0, %struct.dmar_domain* %1) #0 {
  %3 = alloca %struct.dmar_domain*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dmar_domain*, align 8
  %6 = alloca %struct.intel_iommu*, align 8
  %7 = alloca %struct.dmar_domain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_dev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.dmar_domain* %1, %struct.dmar_domain** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.intel_iommu* @device_to_iommu(%struct.device* %13, i32* %10, i32* %11)
  store %struct.intel_iommu* %14, %struct.intel_iommu** %6, align 8
  %15 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %16 = icmp ne %struct.intel_iommu* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.dmar_domain* null, %struct.dmar_domain** %3, align 8
  br label %70

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  %20 = shl i32 %19, 8
  %21 = load i32, i32* %11, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i64 @dev_is_pci(%struct.device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %18
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call %struct.pci_dev* @to_pci_dev(%struct.device* %27)
  store %struct.pci_dev* %28, %struct.pci_dev** %12, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %30 = load i32, i32* @get_last_alias, align 4
  %31 = call i32 @pci_for_each_dma_alias(%struct.pci_dev* %29, i32 %30, i32* %9)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %26
  %36 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @PCI_BUS_NUM(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 255
  %41 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %42 = call %struct.dmar_domain* @dmar_insert_one_dev_info(%struct.intel_iommu* %36, i32 %38, i32 %40, %struct.device* null, %struct.dmar_domain* %41)
  store %struct.dmar_domain* %42, %struct.dmar_domain** %7, align 8
  %43 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %44 = icmp ne %struct.dmar_domain* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %47 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %48 = icmp ne %struct.dmar_domain* %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %35
  %50 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  store %struct.dmar_domain* %50, %struct.dmar_domain** %3, align 8
  br label %70

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %26
  br label %53

53:                                               ; preds = %52, %18
  %54 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %59 = call %struct.dmar_domain* @dmar_insert_one_dev_info(%struct.intel_iommu* %54, i32 %55, i32 %56, %struct.device* %57, %struct.dmar_domain* %58)
  store %struct.dmar_domain* %59, %struct.dmar_domain** %7, align 8
  %60 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %61 = icmp ne %struct.dmar_domain* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %64 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %65 = icmp ne %struct.dmar_domain* %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %53
  %67 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  store %struct.dmar_domain* %67, %struct.dmar_domain** %3, align 8
  br label %70

68:                                               ; preds = %62
  %69 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  store %struct.dmar_domain* %69, %struct.dmar_domain** %3, align 8
  br label %70

70:                                               ; preds = %68, %66, %49, %17
  %71 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  ret %struct.dmar_domain* %71
}

declare dso_local %struct.intel_iommu* @device_to_iommu(%struct.device*, i32*, i32*) #1

declare dso_local i64 @dev_is_pci(%struct.device*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pci_for_each_dma_alias(%struct.pci_dev*, i32, i32*) #1

declare dso_local %struct.dmar_domain* @dmar_insert_one_dev_info(%struct.intel_iommu*, i32, i32, %struct.device*, %struct.dmar_domain*) #1

declare dso_local i32 @PCI_BUS_NUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
