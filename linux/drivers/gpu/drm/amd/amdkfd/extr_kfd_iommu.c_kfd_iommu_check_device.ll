; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_iommu.c_kfd_iommu_check_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_iommu.c_kfd_iommu_check_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.amd_iommu_device_info = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@required_iommu_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_iommu_check_device(%struct.kfd_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kfd_dev*, align 8
  %4 = alloca %struct.amd_iommu_device_info, align 4
  %5 = alloca i32, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %3, align 8
  %6 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %7 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.amd_iommu_device_info, %struct.amd_iommu_device_info* %4, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %18 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @amd_iommu_device_info(i32 %19, %struct.amd_iommu_device_info* %4)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %36

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.amd_iommu_device_info, %struct.amd_iommu_device_info* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @required_iommu_flags, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @required_iommu_flags, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %32, %23, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @amd_iommu_device_info(i32, %struct.amd_iommu_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
