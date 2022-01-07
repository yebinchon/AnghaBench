; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-gart.c_gart_iommu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-gart.c_gart_iommu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gart_device = type { i32 }
%struct.iommu_domain = type { i32 }
%struct.iommu_iotlb_gather = type { i32 }

@gart_handle = common dso_local global %struct.gart_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iommu_domain*, i64, i64, %struct.iommu_iotlb_gather*)* @gart_iommu_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gart_iommu_unmap(%struct.iommu_domain* %0, i64 %1, i64 %2, %struct.iommu_iotlb_gather* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iommu_domain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iommu_iotlb_gather*, align 8
  %10 = alloca %struct.gart_device*, align 8
  %11 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.iommu_iotlb_gather* %3, %struct.iommu_iotlb_gather** %9, align 8
  %12 = load %struct.gart_device*, %struct.gart_device** @gart_handle, align 8
  store %struct.gart_device* %12, %struct.gart_device** %10, align 8
  %13 = load %struct.gart_device*, %struct.gart_device** %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @gart_iova_range_invalid(%struct.gart_device* %13, i64 %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %36

19:                                               ; preds = %4
  %20 = load %struct.gart_device*, %struct.gart_device** %10, align 8
  %21 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.gart_device*, %struct.gart_device** %10, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @__gart_iommu_unmap(%struct.gart_device* %23, i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.gart_device*, %struct.gart_device** %10, align 8
  %27 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %34

32:                                               ; preds = %19
  %33 = load i64, i64* %8, align 8
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i64 [ 0, %31 ], [ %33, %32 ]
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %34, %18
  %37 = load i64, i64* %5, align 8
  ret i64 %37
}

declare dso_local i64 @gart_iova_range_invalid(%struct.gart_device*, i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__gart_iommu_unmap(%struct.gart_device*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
