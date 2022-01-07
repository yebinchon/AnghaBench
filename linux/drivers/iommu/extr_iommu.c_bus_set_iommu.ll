; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_bus_set_iommu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_bus_set_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { %struct.iommu_ops* }
%struct.iommu_ops = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_set_iommu(%struct.bus_type* %0, %struct.iommu_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bus_type*, align 8
  %5 = alloca %struct.iommu_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.bus_type* %0, %struct.bus_type** %4, align 8
  store %struct.iommu_ops* %1, %struct.iommu_ops** %5, align 8
  %7 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %8 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %7, i32 0, i32 0
  %9 = load %struct.iommu_ops*, %struct.iommu_ops** %8, align 8
  %10 = icmp ne %struct.iommu_ops* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.iommu_ops*, %struct.iommu_ops** %5, align 8
  %16 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %17 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %16, i32 0, i32 0
  store %struct.iommu_ops* %15, %struct.iommu_ops** %17, align 8
  %18 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %19 = load %struct.iommu_ops*, %struct.iommu_ops** %5, align 8
  %20 = call i32 @iommu_bus_init(%struct.bus_type* %18, %struct.iommu_ops* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %25 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %24, i32 0, i32 0
  store %struct.iommu_ops* null, %struct.iommu_ops** %25, align 8
  br label %26

26:                                               ; preds = %23, %14
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @iommu_bus_init(%struct.bus_type*, %struct.iommu_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
