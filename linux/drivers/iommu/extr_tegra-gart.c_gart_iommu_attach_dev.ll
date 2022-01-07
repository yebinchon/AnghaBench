; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-gart.c_gart_iommu_attach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-gart.c_gart_iommu_attach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gart_device = type { i32, i32, %struct.iommu_domain* }
%struct.iommu_domain = type { i32 }
%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iommu_domain* }

@gart_handle = common dso_local global %struct.gart_device* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, %struct.device*)* @gart_iommu_attach_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gart_iommu_attach_dev(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.gart_device*, align 8
  %6 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %7 = load %struct.gart_device*, %struct.gart_device** @gart_handle, align 8
  store %struct.gart_device* %7, %struct.gart_device** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.gart_device*, %struct.gart_device** %5, align 8
  %9 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.gart_device*, %struct.gart_device** %5, align 8
  %12 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %11, i32 0, i32 2
  %13 = load %struct.iommu_domain*, %struct.iommu_domain** %12, align 8
  %14 = icmp ne %struct.iommu_domain* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.gart_device*, %struct.gart_device** %5, align 8
  %17 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %16, i32 0, i32 2
  %18 = load %struct.iommu_domain*, %struct.iommu_domain** %17, align 8
  %19 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %20 = icmp ne %struct.iommu_domain* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %44

24:                                               ; preds = %15, %2
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.iommu_domain*, %struct.iommu_domain** %27, align 8
  %29 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %30 = icmp ne %struct.iommu_domain* %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.iommu_domain* %32, %struct.iommu_domain** %35, align 8
  %36 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %37 = load %struct.gart_device*, %struct.gart_device** %5, align 8
  %38 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %37, i32 0, i32 2
  store %struct.iommu_domain* %36, %struct.iommu_domain** %38, align 8
  %39 = load %struct.gart_device*, %struct.gart_device** %5, align 8
  %40 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %31, %24
  br label %44

44:                                               ; preds = %43, %21
  %45 = load %struct.gart_device*, %struct.gart_device** %5, align 8
  %46 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
