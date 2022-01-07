; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_attach_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_attach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.protection_domain = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.iommu_dev_data = type { i32, %struct.TYPE_2__, i32, i64, i32, i32* }
%struct.TYPE_2__ = type { i32, i8* }

@EBUSY = common dso_local global i32 0, align 4
@PD_IOMMUV2_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@amd_iommu_iotlb_sup = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.protection_domain*)* @attach_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_device(%struct.device* %0, %struct.protection_domain* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.protection_domain*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.iommu_dev_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.protection_domain* %1, %struct.protection_domain** %4, align 8
  %9 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %10 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %9, i32 0, i32 1
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.iommu_dev_data* @get_dev_data(%struct.device* %13)
  store %struct.iommu_dev_data* %14, %struct.iommu_dev_data** %6, align 8
  %15 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %6, align 8
  %16 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %6, align 8
  %21 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %98

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = call i32 @dev_is_pci(%struct.device* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %90

30:                                               ; preds = %25
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call %struct.pci_dev* @to_pci_dev(%struct.device* %31)
  store %struct.pci_dev* %32, %struct.pci_dev** %5, align 8
  %33 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %34 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PD_IOMMUV2_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %30
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %6, align 8
  %43 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %98

47:                                               ; preds = %39
  %48 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %6, align 8
  %49 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %54 = call i64 @pdev_iommuv2_enable(%struct.pci_dev* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %98

57:                                               ; preds = %52
  %58 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %6, align 8
  %59 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %62 = call i8* @pci_ats_queue_depth(%struct.pci_dev* %61)
  %63 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %6, align 8
  %64 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = call i32 @pci_prg_resp_pasid_required(%struct.pci_dev* %66)
  %68 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %6, align 8
  %69 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %57, %47
  br label %89

71:                                               ; preds = %30
  %72 = load i64, i64* @amd_iommu_iotlb_sup, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %76 = load i32, i32* @PAGE_SHIFT, align 4
  %77 = call i64 @pci_enable_ats(%struct.pci_dev* %75, i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %6, align 8
  %81 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %84 = call i8* @pci_ats_queue_depth(%struct.pci_dev* %83)
  %85 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %6, align 8
  %86 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i8* %84, i8** %87, align 8
  br label %88

88:                                               ; preds = %79, %74, %71
  br label %89

89:                                               ; preds = %88, %70
  br label %90

90:                                               ; preds = %89, %29
  store i32 0, i32* %8, align 4
  %91 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %6, align 8
  %92 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %93 = call i32 @do_attach(%struct.iommu_dev_data* %91, %struct.protection_domain* %92)
  %94 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %95 = call i32 @domain_flush_tlb_pde(%struct.protection_domain* %94)
  %96 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %97 = call i32 @domain_flush_complete(%struct.protection_domain* %96)
  br label %98

98:                                               ; preds = %90, %56, %46, %24
  %99 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %6, align 8
  %100 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %99, i32 0, i32 0
  %101 = call i32 @spin_unlock(i32* %100)
  %102 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %103 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %102, i32 0, i32 1
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* %103, i64 %104)
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.iommu_dev_data* @get_dev_data(%struct.device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i64 @pdev_iommuv2_enable(%struct.pci_dev*) #1

declare dso_local i8* @pci_ats_queue_depth(%struct.pci_dev*) #1

declare dso_local i32 @pci_prg_resp_pasid_required(%struct.pci_dev*) #1

declare dso_local i64 @pci_enable_ats(%struct.pci_dev*, i32) #1

declare dso_local i32 @do_attach(%struct.iommu_dev_data*, %struct.protection_domain*) #1

declare dso_local i32 @domain_flush_tlb_pde(%struct.protection_domain*) #1

declare dso_local i32 @domain_flush_complete(%struct.protection_domain*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
