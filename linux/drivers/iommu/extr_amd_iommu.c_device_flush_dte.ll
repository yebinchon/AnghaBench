; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_device_flush_dte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_device_flush_dte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }
%struct.iommu_dev_data = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@amd_iommu_rlookup_table = common dso_local global %struct.amd_iommu** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_dev_data*)* @device_flush_dte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_flush_dte(%struct.iommu_dev_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iommu_dev_data*, align 8
  %4 = alloca %struct.amd_iommu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.iommu_dev_data* %0, %struct.iommu_dev_data** %3, align 8
  %7 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %8 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %9 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %7, i64 %10
  %12 = load %struct.amd_iommu*, %struct.amd_iommu** %11, align 8
  store %struct.amd_iommu* %12, %struct.amd_iommu** %4, align 8
  %13 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %14 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.amd_iommu*, %struct.amd_iommu** %4, align 8
  %17 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %18 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @iommu_flush_dte(%struct.amd_iommu* %16, i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %1
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %26 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.amd_iommu*, %struct.amd_iommu** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @iommu_flush_dte(%struct.amd_iommu* %30, i64 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %23, %1
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %49

38:                                               ; preds = %33
  %39 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %40 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %3, align 8
  %46 = call i32 @device_flush_iotlb(%struct.iommu_dev_data* %45, i32 0, i64 -1)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %36
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @iommu_flush_dte(%struct.amd_iommu*, i64) #1

declare dso_local i32 @device_flush_iotlb(%struct.iommu_dev_data*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
