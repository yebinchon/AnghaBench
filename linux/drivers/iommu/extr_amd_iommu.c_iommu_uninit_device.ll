; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_uninit_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_uninit_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }
%struct.device = type { i32* }
%struct.iommu_dev_data = type { i64 }

@amd_iommu_rlookup_table = common dso_local global %struct.amd_iommu** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @iommu_uninit_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_uninit_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.iommu_dev_data*, align 8
  %4 = alloca %struct.amd_iommu*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call i32 @get_device_id(%struct.device* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %39

11:                                               ; preds = %1
  %12 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %12, i64 %14
  %16 = load %struct.amd_iommu*, %struct.amd_iommu** %15, align 8
  store %struct.amd_iommu* %16, %struct.amd_iommu** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.iommu_dev_data* @search_dev_data(i32 %17)
  store %struct.iommu_dev_data* %18, %struct.iommu_dev_data** %3, align 8
  %19 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %20 = icmp ne %struct.iommu_dev_data* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %39

22:                                               ; preds = %11
  %23 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %24 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %2, align 8
  %29 = call i32 @detach_device(%struct.device* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.amd_iommu*, %struct.amd_iommu** %4, align 8
  %32 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %31, i32 0, i32 0
  %33 = load %struct.device*, %struct.device** %2, align 8
  %34 = call i32 @iommu_device_unlink(i32* %32, %struct.device* %33)
  %35 = load %struct.device*, %struct.device** %2, align 8
  %36 = call i32 @iommu_group_remove_device(%struct.device* %35)
  %37 = load %struct.device*, %struct.device** %2, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %30, %21, %10
  ret void
}

declare dso_local i32 @get_device_id(%struct.device*) #1

declare dso_local %struct.iommu_dev_data* @search_dev_data(i32) #1

declare dso_local i32 @detach_device(%struct.device*) #1

declare dso_local i32 @iommu_device_unlink(i32*, %struct.device*) #1

declare dso_local i32 @iommu_group_remove_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
