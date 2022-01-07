; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_dump_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_dump_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { i32 }
%struct.etnaviv_iommuv2_context = type { i32* }

@SZ_4K = common dso_local global i64 0, align 8
@MMUv2_MAX_STLB_ENTRIES = common dso_local global i32 0, align 4
@MMUv2_PTE_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.etnaviv_iommu_context*)* @etnaviv_iommuv2_dump_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @etnaviv_iommuv2_dump_size(%struct.etnaviv_iommu_context* %0) #0 {
  %2 = alloca %struct.etnaviv_iommu_context*, align 8
  %3 = alloca %struct.etnaviv_iommuv2_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.etnaviv_iommu_context* %0, %struct.etnaviv_iommu_context** %2, align 8
  %6 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %2, align 8
  %7 = call %struct.etnaviv_iommuv2_context* @to_v2_context(%struct.etnaviv_iommu_context* %6)
  store %struct.etnaviv_iommuv2_context* %7, %struct.etnaviv_iommuv2_context** %3, align 8
  %8 = load i64, i64* @SZ_4K, align 8
  store i64 %8, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %29, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MMUv2_MAX_STLB_ENTRIES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %3, align 8
  %15 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MMUv2_PTE_PRESENT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load i64, i64* @SZ_4K, align 8
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %24, %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %9

32:                                               ; preds = %9
  %33 = load i64, i64* %4, align 8
  ret i64 %33
}

declare dso_local %struct.etnaviv_iommuv2_context* @to_v2_context(%struct.etnaviv_iommu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
