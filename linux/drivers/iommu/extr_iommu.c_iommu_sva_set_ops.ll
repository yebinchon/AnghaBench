; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_sva_set_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_sva_set_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_sva = type { %struct.iommu_sva_ops* }
%struct.iommu_sva_ops = type { i32 }

@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_sva_set_ops(%struct.iommu_sva* %0, %struct.iommu_sva_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_sva*, align 8
  %5 = alloca %struct.iommu_sva_ops*, align 8
  store %struct.iommu_sva* %0, %struct.iommu_sva** %4, align 8
  store %struct.iommu_sva_ops* %1, %struct.iommu_sva_ops** %5, align 8
  %6 = load %struct.iommu_sva*, %struct.iommu_sva** %4, align 8
  %7 = getelementptr inbounds %struct.iommu_sva, %struct.iommu_sva* %6, i32 0, i32 0
  %8 = load %struct.iommu_sva_ops*, %struct.iommu_sva_ops** %7, align 8
  %9 = icmp ne %struct.iommu_sva_ops* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.iommu_sva*, %struct.iommu_sva** %4, align 8
  %12 = getelementptr inbounds %struct.iommu_sva, %struct.iommu_sva* %11, i32 0, i32 0
  %13 = load %struct.iommu_sva_ops*, %struct.iommu_sva_ops** %12, align 8
  %14 = load %struct.iommu_sva_ops*, %struct.iommu_sva_ops** %5, align 8
  %15 = icmp ne %struct.iommu_sva_ops* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @EEXIST, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %10, %2
  %20 = load %struct.iommu_sva_ops*, %struct.iommu_sva_ops** %5, align 8
  %21 = load %struct.iommu_sva*, %struct.iommu_sva** %4, align 8
  %22 = getelementptr inbounds %struct.iommu_sva, %struct.iommu_sva* %21, i32 0, i32 0
  store %struct.iommu_sva_ops* %20, %struct.iommu_sva_ops** %22, align 8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
