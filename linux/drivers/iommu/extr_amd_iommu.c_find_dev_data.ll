; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_find_dev_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_find_dev_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }
%struct.iommu_dev_data = type { i32 }

@amd_iommu_rlookup_table = common dso_local global %struct.amd_iommu** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_dev_data* (i64)* @find_dev_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_dev_data* @find_dev_data(i64 %0) #0 {
  %2 = alloca %struct.iommu_dev_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.iommu_dev_data*, align 8
  %5 = alloca %struct.amd_iommu*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %6, i64 %7
  %9 = load %struct.amd_iommu*, %struct.amd_iommu** %8, align 8
  store %struct.amd_iommu* %9, %struct.amd_iommu** %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call %struct.iommu_dev_data* @search_dev_data(i64 %10)
  store %struct.iommu_dev_data* %11, %struct.iommu_dev_data** %4, align 8
  %12 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %13 = icmp eq %struct.iommu_dev_data* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call %struct.iommu_dev_data* @alloc_dev_data(i64 %15)
  store %struct.iommu_dev_data* %16, %struct.iommu_dev_data** %4, align 8
  %17 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %18 = icmp ne %struct.iommu_dev_data* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store %struct.iommu_dev_data* null, %struct.iommu_dev_data** %2, align 8
  br label %30

20:                                               ; preds = %14
  %21 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %22 = call i64 @translation_pre_enabled(%struct.amd_iommu* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %26 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %20
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  store %struct.iommu_dev_data* %29, %struct.iommu_dev_data** %2, align 8
  br label %30

30:                                               ; preds = %28, %19
  %31 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %2, align 8
  ret %struct.iommu_dev_data* %31
}

declare dso_local %struct.iommu_dev_data* @search_dev_data(i64) #1

declare dso_local %struct.iommu_dev_data* @alloc_dev_data(i64) #1

declare dso_local i64 @translation_pre_enabled(%struct.amd_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
