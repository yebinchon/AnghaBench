; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c___iommu_attach_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c___iommu_attach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i64 (%struct.iommu_domain*, %struct.device*)* }
%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, %struct.device*)* @__iommu_attach_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iommu_attach_device(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %7 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %8 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64 (%struct.iommu_domain*, %struct.device*)*, i64 (%struct.iommu_domain*, %struct.device*)** %10, align 8
  %12 = icmp ne i64 (%struct.iommu_domain*, %struct.device*)* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %15 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64 (%struct.iommu_domain*, %struct.device*)*, i64 (%struct.iommu_domain*, %struct.device*)** %17, align 8
  %19 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i64 %18(%struct.iommu_domain* %19, %struct.device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %55

24:                                               ; preds = %13, %2
  %25 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %26 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.iommu_domain*, %struct.device*)**
  %30 = load i32 (%struct.iommu_domain*, %struct.device*)*, i32 (%struct.iommu_domain*, %struct.device*)** %29, align 8
  %31 = icmp eq i32 (%struct.iommu_domain*, %struct.device*)* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %55

38:                                               ; preds = %24
  %39 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %40 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.iommu_domain*, %struct.device*)**
  %44 = load i32 (%struct.iommu_domain*, %struct.device*)*, i32 (%struct.iommu_domain*, %struct.device*)** %43, align 8
  %45 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = call i32 %44(%struct.iommu_domain* %45, %struct.device* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %38
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = call i32 @trace_attach_device_to_domain(%struct.device* %51)
  br label %53

53:                                               ; preds = %50, %38
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %35, %23
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @trace_attach_device_to_domain(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
