; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_sva_get_pasid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_sva_get_pasid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_sva = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.iommu_ops* }
%struct.iommu_ops = type { {}* }

@IOMMU_PASID_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_sva_get_pasid(%struct.iommu_sva* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iommu_sva*, align 8
  %4 = alloca %struct.iommu_ops*, align 8
  store %struct.iommu_sva* %0, %struct.iommu_sva** %3, align 8
  %5 = load %struct.iommu_sva*, %struct.iommu_sva** %3, align 8
  %6 = getelementptr inbounds %struct.iommu_sva, %struct.iommu_sva* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.iommu_ops*, %struct.iommu_ops** %10, align 8
  store %struct.iommu_ops* %11, %struct.iommu_ops** %4, align 8
  %12 = load %struct.iommu_ops*, %struct.iommu_ops** %4, align 8
  %13 = icmp ne %struct.iommu_ops* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.iommu_ops*, %struct.iommu_ops** %4, align 8
  %16 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.iommu_sva*)**
  %18 = load i32 (%struct.iommu_sva*)*, i32 (%struct.iommu_sva*)** %17, align 8
  %19 = icmp ne i32 (%struct.iommu_sva*)* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14, %1
  %21 = load i32, i32* @IOMMU_PASID_INVALID, align 4
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %14
  %23 = load %struct.iommu_ops*, %struct.iommu_ops** %4, align 8
  %24 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.iommu_sva*)**
  %26 = load i32 (%struct.iommu_sva*)*, i32 (%struct.iommu_sva*)** %25, align 8
  %27 = load %struct.iommu_sva*, %struct.iommu_sva** %3, align 8
  %28 = call i32 %26(%struct.iommu_sva* %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %22, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
