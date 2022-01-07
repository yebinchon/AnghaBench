; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_put_resv_regions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_put_resv_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iommu_ops* }
%struct.iommu_ops = type { i32 (%struct.device.0*, %struct.list_head*)* }
%struct.device.0 = type opaque
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iommu_put_resv_regions(%struct.device* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.iommu_ops*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.iommu_ops*, %struct.iommu_ops** %9, align 8
  store %struct.iommu_ops* %10, %struct.iommu_ops** %5, align 8
  %11 = load %struct.iommu_ops*, %struct.iommu_ops** %5, align 8
  %12 = icmp ne %struct.iommu_ops* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.iommu_ops*, %struct.iommu_ops** %5, align 8
  %15 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %14, i32 0, i32 0
  %16 = load i32 (%struct.device.0*, %struct.list_head*)*, i32 (%struct.device.0*, %struct.list_head*)** %15, align 8
  %17 = icmp ne i32 (%struct.device.0*, %struct.list_head*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.iommu_ops*, %struct.iommu_ops** %5, align 8
  %20 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %19, i32 0, i32 0
  %21 = load i32 (%struct.device.0*, %struct.list_head*)*, i32 (%struct.device.0*, %struct.list_head*)** %20, align 8
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = bitcast %struct.device* %22 to %struct.device.0*
  %24 = load %struct.list_head*, %struct.list_head** %4, align 8
  %25 = call i32 %21(%struct.device.0* %23, %struct.list_head* %24)
  br label %26

26:                                               ; preds = %18, %13, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
