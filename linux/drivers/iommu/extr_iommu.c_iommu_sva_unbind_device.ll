; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_sva_unbind_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_sva_unbind_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_sva = type { %struct.device* }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iommu_ops* }
%struct.iommu_ops = type { i32 (%struct.iommu_sva*)* }
%struct.iommu_group = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iommu_sva_unbind_device(%struct.iommu_sva* %0) #0 {
  %2 = alloca %struct.iommu_sva*, align 8
  %3 = alloca %struct.iommu_group*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.iommu_ops*, align 8
  store %struct.iommu_sva* %0, %struct.iommu_sva** %2, align 8
  %6 = load %struct.iommu_sva*, %struct.iommu_sva** %2, align 8
  %7 = getelementptr inbounds %struct.iommu_sva, %struct.iommu_sva* %6, i32 0, i32 0
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.iommu_ops*, %struct.iommu_ops** %12, align 8
  store %struct.iommu_ops* %13, %struct.iommu_ops** %5, align 8
  %14 = load %struct.iommu_ops*, %struct.iommu_ops** %5, align 8
  %15 = icmp ne %struct.iommu_ops* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.iommu_ops*, %struct.iommu_ops** %5, align 8
  %18 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %17, i32 0, i32 0
  %19 = load i32 (%struct.iommu_sva*)*, i32 (%struct.iommu_sva*)** %18, align 8
  %20 = icmp ne i32 (%struct.iommu_sva*)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %1
  br label %42

22:                                               ; preds = %16
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call %struct.iommu_group* @iommu_group_get(%struct.device* %23)
  store %struct.iommu_group* %24, %struct.iommu_group** %3, align 8
  %25 = load %struct.iommu_group*, %struct.iommu_group** %3, align 8
  %26 = icmp ne %struct.iommu_group* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %42

28:                                               ; preds = %22
  %29 = load %struct.iommu_group*, %struct.iommu_group** %3, align 8
  %30 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.iommu_ops*, %struct.iommu_ops** %5, align 8
  %33 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %32, i32 0, i32 0
  %34 = load i32 (%struct.iommu_sva*)*, i32 (%struct.iommu_sva*)** %33, align 8
  %35 = load %struct.iommu_sva*, %struct.iommu_sva** %2, align 8
  %36 = call i32 %34(%struct.iommu_sva* %35)
  %37 = load %struct.iommu_group*, %struct.iommu_group** %3, align 8
  %38 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.iommu_group*, %struct.iommu_group** %3, align 8
  %41 = call i32 @iommu_group_put(%struct.iommu_group* %40)
  br label %42

42:                                               ; preds = %28, %27, %21
  ret void
}

declare dso_local %struct.iommu_group* @iommu_group_get(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
