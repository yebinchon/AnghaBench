; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c___iommu_detach_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c___iommu_detach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iommu_domain*, %struct.device*)*, i64 (%struct.iommu_domain*, %struct.device*)* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*, %struct.device*)* @__iommu_detach_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__iommu_detach_device(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %5 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %6 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64 (%struct.iommu_domain*, %struct.device*)*, i64 (%struct.iommu_domain*, %struct.device*)** %8, align 8
  %10 = icmp ne i64 (%struct.iommu_domain*, %struct.device*)* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %13 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64 (%struct.iommu_domain*, %struct.device*)*, i64 (%struct.iommu_domain*, %struct.device*)** %15, align 8
  %17 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i64 %16(%struct.iommu_domain* %17, %struct.device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %44

22:                                               ; preds = %11, %2
  %23 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %24 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.iommu_domain*, %struct.device*)*, i32 (%struct.iommu_domain*, %struct.device*)** %26, align 8
  %28 = icmp eq i32 (%struct.iommu_domain*, %struct.device*)* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %44

33:                                               ; preds = %22
  %34 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %35 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.iommu_domain*, %struct.device*)*, i32 (%struct.iommu_domain*, %struct.device*)** %37, align 8
  %39 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i32 %38(%struct.iommu_domain* %39, %struct.device* %40)
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @trace_detach_device_from_domain(%struct.device* %42)
  br label %44

44:                                               ; preds = %33, %32, %21
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @trace_detach_device_from_domain(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
