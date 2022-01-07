; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32, i32 }
%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iommu_dev_data* }
%struct.iommu_dev_data = type { i64, i32, i32 }

@amd_iommu_rlookup_table = common dso_local global %struct.amd_iommu** null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@amd_iommu_force_isolation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @iommu_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_init_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.iommu_dev_data*, align 8
  %5 = alloca %struct.amd_iommu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amd_iommu*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %10, align 8
  %12 = icmp ne %struct.iommu_dev_data* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @get_device_id(%struct.device* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %74

21:                                               ; preds = %14
  %22 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %22, i64 %24
  %26 = load %struct.amd_iommu*, %struct.amd_iommu** %25, align 8
  store %struct.amd_iommu* %26, %struct.amd_iommu** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.iommu_dev_data* @find_dev_data(i32 %27)
  store %struct.iommu_dev_data* %28, %struct.iommu_dev_data** %4, align 8
  %29 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %30 = icmp ne %struct.iommu_dev_data* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %74

34:                                               ; preds = %21
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = call i32 @get_alias(%struct.device* %35)
  %37 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %38 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = call i64 (...) @iommu_default_passthrough()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @amd_iommu_force_isolation, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %65, label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = call i64 @dev_is_pci(%struct.device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = call i32 @to_pci_dev(%struct.device* %49)
  %51 = call i64 @pci_iommuv2_capable(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %55 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %56 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %54, i64 %57
  %59 = load %struct.amd_iommu*, %struct.amd_iommu** %58, align 8
  store %struct.amd_iommu* %59, %struct.amd_iommu** %7, align 8
  %60 = load %struct.amd_iommu*, %struct.amd_iommu** %7, align 8
  %61 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %64 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %53, %48, %44, %41
  %66 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store %struct.iommu_dev_data* %66, %struct.iommu_dev_data** %69, align 8
  %70 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %71 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %70, i32 0, i32 0
  %72 = load %struct.device*, %struct.device** %3, align 8
  %73 = call i32 @iommu_device_link(i32* %71, %struct.device* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %65, %31, %19, %13
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @get_device_id(%struct.device*) #1

declare dso_local %struct.iommu_dev_data* @find_dev_data(i32) #1

declare dso_local i32 @get_alias(%struct.device*) #1

declare dso_local i64 @iommu_default_passthrough(...) #1

declare dso_local i64 @dev_is_pci(%struct.device*) #1

declare dso_local i64 @pci_iommuv2_capable(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i32 @iommu_device_link(i32*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
