; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c___iommu_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c___iommu_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.iommu_domain* (i32)* }
%struct.bus_type = type { %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_domain* (%struct.bus_type*, i32)* @__iommu_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_domain* @__iommu_domain_alloc(%struct.bus_type* %0, i32 %1) #0 {
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca %struct.bus_type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iommu_domain*, align 8
  store %struct.bus_type* %0, %struct.bus_type** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %8 = icmp eq %struct.bus_type* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %11 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  store %struct.iommu_domain* null, %struct.iommu_domain** %3, align 8
  br label %43

15:                                               ; preds = %9
  %16 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %17 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.iommu_domain* (i32)*, %struct.iommu_domain* (i32)** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.iommu_domain* %20(i32 %21)
  store %struct.iommu_domain* %22, %struct.iommu_domain** %6, align 8
  %23 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %24 = icmp ne %struct.iommu_domain* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  store %struct.iommu_domain* null, %struct.iommu_domain** %3, align 8
  br label %43

26:                                               ; preds = %15
  %27 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %28 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %31 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %30, i32 0, i32 2
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %34 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %36 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %41 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  store %struct.iommu_domain* %42, %struct.iommu_domain** %3, align 8
  br label %43

43:                                               ; preds = %26, %25, %14
  %44 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  ret %struct.iommu_domain* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
