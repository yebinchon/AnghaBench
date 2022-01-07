; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_dev_enable_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_dev_enable_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iommu_ops* }
%struct.iommu_ops = type { i32 (%struct.device.0*, i32)* }
%struct.device.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_dev_enable_feature(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iommu_ops*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.iommu_ops*, %struct.iommu_ops** %10, align 8
  store %struct.iommu_ops* %11, %struct.iommu_ops** %6, align 8
  %12 = load %struct.iommu_ops*, %struct.iommu_ops** %6, align 8
  %13 = icmp ne %struct.iommu_ops* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.iommu_ops*, %struct.iommu_ops** %6, align 8
  %16 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %15, i32 0, i32 0
  %17 = load i32 (%struct.device.0*, i32)*, i32 (%struct.device.0*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.device.0*, i32)* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.iommu_ops*, %struct.iommu_ops** %6, align 8
  %21 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.device.0*, i32)*, i32 (%struct.device.0*, i32)** %21, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = bitcast %struct.device* %23 to %struct.device.0*
  %25 = load i32, i32* %5, align 4
  %26 = call i32 %22(%struct.device.0* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %14, %2
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
