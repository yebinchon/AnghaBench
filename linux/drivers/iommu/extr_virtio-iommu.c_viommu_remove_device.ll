; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.viommu_endpoint = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iommu_fwspec = type { %struct.viommu_endpoint*, i32* }

@viommu_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @viommu_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viommu_remove_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.viommu_endpoint*, align 8
  %4 = alloca %struct.iommu_fwspec*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %5)
  store %struct.iommu_fwspec* %6, %struct.iommu_fwspec** %4, align 8
  %7 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %4, align 8
  %8 = icmp ne %struct.iommu_fwspec* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %4, align 8
  %11 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, @viommu_ops
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  br label %33

15:                                               ; preds = %9
  %16 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %4, align 8
  %17 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %16, i32 0, i32 0
  %18 = load %struct.viommu_endpoint*, %struct.viommu_endpoint** %17, align 8
  store %struct.viommu_endpoint* %18, %struct.viommu_endpoint** %3, align 8
  %19 = load %struct.device*, %struct.device** %2, align 8
  %20 = call i32 @iommu_group_remove_device(%struct.device* %19)
  %21 = load %struct.viommu_endpoint*, %struct.viommu_endpoint** %3, align 8
  %22 = getelementptr inbounds %struct.viommu_endpoint, %struct.viommu_endpoint* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = call i32 @iommu_device_unlink(i32* %24, %struct.device* %25)
  %27 = load %struct.device*, %struct.device** %2, align 8
  %28 = load %struct.viommu_endpoint*, %struct.viommu_endpoint** %3, align 8
  %29 = getelementptr inbounds %struct.viommu_endpoint, %struct.viommu_endpoint* %28, i32 0, i32 0
  %30 = call i32 @viommu_put_resv_regions(%struct.device* %27, i32* %29)
  %31 = load %struct.viommu_endpoint*, %struct.viommu_endpoint** %3, align 8
  %32 = call i32 @kfree(%struct.viommu_endpoint* %31)
  br label %33

33:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local i32 @iommu_group_remove_device(%struct.device*) #1

declare dso_local i32 @iommu_device_unlink(i32*, %struct.device*) #1

declare dso_local i32 @viommu_put_resv_regions(%struct.device*, i32*) #1

declare dso_local i32 @kfree(%struct.viommu_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
