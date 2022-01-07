; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_detach_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_detach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.protection_domain = type { i32, i32 }
%struct.iommu_dev_data = type { i32, %struct.TYPE_2__, i64, %struct.protection_domain* }
%struct.TYPE_2__ = type { i32 }

@PD_IOMMUV2_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @detach_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detach_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.protection_domain*, align 8
  %4 = alloca %struct.iommu_dev_data*, align 8
  %5 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.iommu_dev_data* @get_dev_data(%struct.device* %6)
  store %struct.iommu_dev_data* %7, %struct.iommu_dev_data** %4, align 8
  %8 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %9 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %8, i32 0, i32 3
  %10 = load %struct.protection_domain*, %struct.protection_domain** %9, align 8
  store %struct.protection_domain* %10, %struct.protection_domain** %3, align 8
  %11 = load %struct.protection_domain*, %struct.protection_domain** %3, align 8
  %12 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %11, i32 0, i32 1
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %16 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %19 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %18, i32 0, i32 3
  %20 = load %struct.protection_domain*, %struct.protection_domain** %19, align 8
  %21 = icmp ne %struct.protection_domain* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %65

27:                                               ; preds = %1
  %28 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %29 = call i32 @do_detach(%struct.iommu_dev_data* %28)
  %30 = load %struct.device*, %struct.device** %2, align 8
  %31 = call i32 @dev_is_pci(%struct.device* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %65

34:                                               ; preds = %27
  %35 = load %struct.protection_domain*, %struct.protection_domain** %3, align 8
  %36 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PD_IOMMUV2_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %43 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.device*, %struct.device** %2, align 8
  %48 = call i32 @to_pci_dev(%struct.device* %47)
  %49 = call i32 @pdev_iommuv2_disable(i32 %48)
  br label %61

50:                                               ; preds = %41, %34
  %51 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %52 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.device*, %struct.device** %2, align 8
  %58 = call i32 @to_pci_dev(%struct.device* %57)
  %59 = call i32 @pci_disable_ats(i32 %58)
  br label %60

60:                                               ; preds = %56, %50
  br label %61

61:                                               ; preds = %60, %46
  %62 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %63 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %33, %26
  %66 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %67 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.protection_domain*, %struct.protection_domain** %3, align 8
  %70 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %69, i32 0, i32 1
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  ret void
}

declare dso_local %struct.iommu_dev_data* @get_dev_data(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @do_detach(%struct.iommu_dev_data*) #1

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local i32 @pdev_iommuv2_disable(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pci_disable_ats(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
