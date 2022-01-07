; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-gart.c_gart_iommu_detach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-gart.c_gart_iommu_detach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gart_device = type { i64, i32, i32* }
%struct.iommu_domain = type { i32 }
%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iommu_domain* }

@gart_handle = common dso_local global %struct.gart_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*, %struct.device*)* @gart_iommu_detach_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gart_iommu_detach_dev(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.gart_device*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %6 = load %struct.gart_device*, %struct.gart_device** @gart_handle, align 8
  store %struct.gart_device* %6, %struct.gart_device** %5, align 8
  %7 = load %struct.gart_device*, %struct.gart_device** %5, align 8
  %8 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.iommu_domain*, %struct.iommu_domain** %12, align 8
  %14 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %15 = icmp eq %struct.iommu_domain* %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.iommu_domain* null, %struct.iommu_domain** %19, align 8
  %20 = load %struct.gart_device*, %struct.gart_device** %5, align 8
  %21 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.gart_device*, %struct.gart_device** %5, align 8
  %27 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %25, %16
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.gart_device*, %struct.gart_device** %5, align 8
  %31 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock(i32* %31)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
