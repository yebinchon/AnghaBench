; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-gart.c_gart_iommu_iova_to_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-gart.c_gart_iommu_iova_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gart_device = type { i32 }
%struct.iommu_domain = type { i32 }

@gart_handle = common dso_local global %struct.gart_device* null, align 8
@GART_PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@GART_PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iommu_domain*, i32)* @gart_iommu_iova_to_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gart_iommu_iova_to_phys(%struct.iommu_domain* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gart_device*, align 8
  %7 = alloca i64, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gart_device*, %struct.gart_device** @gart_handle, align 8
  store %struct.gart_device* %8, %struct.gart_device** %6, align 8
  %9 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @GART_PAGE_SIZE, align 4
  %12 = call i64 @gart_iova_range_invalid(%struct.gart_device* %9, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i64, i64* @EINVAL, align 8
  %16 = sub i64 0, %15
  store i64 %16, i64* %3, align 8
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %19 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @gart_read_pte(%struct.gart_device* %21, i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %25 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @GART_PAGE_MASK, align 8
  %29 = and i64 %27, %28
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %17, %14
  %31 = load i64, i64* %3, align 8
  ret i64 %31
}

declare dso_local i64 @gart_iova_range_invalid(%struct.gart_device*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @gart_read_pte(%struct.gart_device*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
