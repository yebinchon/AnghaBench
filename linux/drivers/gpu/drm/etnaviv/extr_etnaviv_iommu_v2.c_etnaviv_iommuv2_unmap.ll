; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { i32 }
%struct.etnaviv_iommuv2_context = type { i32** }

@SZ_4K = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@MMUv2_MTLB_MASK = common dso_local global i64 0, align 8
@MMUv2_MTLB_SHIFT = common dso_local global i64 0, align 8
@MMUv2_STLB_MASK = common dso_local global i64 0, align 8
@MMUv2_STLB_SHIFT = common dso_local global i64 0, align 8
@MMUv2_PTE_EXCEPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.etnaviv_iommu_context*, i64, i64)* @etnaviv_iommuv2_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @etnaviv_iommuv2_unmap(%struct.etnaviv_iommu_context* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.etnaviv_iommu_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.etnaviv_iommuv2_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.etnaviv_iommu_context* %0, %struct.etnaviv_iommu_context** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  %12 = call %struct.etnaviv_iommuv2_context* @to_v2_context(%struct.etnaviv_iommu_context* %11)
  store %struct.etnaviv_iommuv2_context* %12, %struct.etnaviv_iommuv2_context** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @SZ_4K, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* @EINVAL, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %4, align 8
  br label %44

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @MMUv2_MTLB_MASK, align 8
  %22 = and i64 %20, %21
  %23 = load i64, i64* @MMUv2_MTLB_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @MMUv2_STLB_MASK, align 8
  %28 = and i64 %26, %27
  %29 = load i64, i64* @MMUv2_STLB_SHIFT, align 8
  %30 = lshr i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @MMUv2_PTE_EXCEPTION, align 4
  %33 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %8, align 8
  %34 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %32, i32* %42, align 4
  %43 = load i64, i64* @SZ_4K, align 8
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %19, %16
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local %struct.etnaviv_iommuv2_context* @to_v2_context(%struct.etnaviv_iommu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
