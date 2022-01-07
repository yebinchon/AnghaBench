; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu.c_etnaviv_iommuv1_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu.c_etnaviv_iommuv1_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.etnaviv_iommuv1_context = type { i32* }

@GPU_MEM_START = common dso_local global i64 0, align 8
@SZ_4K = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.etnaviv_iommu_context*, i64, i64)* @etnaviv_iommuv1_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @etnaviv_iommuv1_unmap(%struct.etnaviv_iommu_context* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.etnaviv_iommu_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.etnaviv_iommuv1_context*, align 8
  %9 = alloca i32, align 4
  store %struct.etnaviv_iommu_context* %0, %struct.etnaviv_iommu_context** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  %11 = call %struct.etnaviv_iommuv1_context* @to_v1_context(%struct.etnaviv_iommu_context* %10)
  store %struct.etnaviv_iommuv1_context* %11, %struct.etnaviv_iommuv1_context** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @GPU_MEM_START, align 8
  %14 = sub i64 %12, %13
  %15 = load i64, i64* @SZ_4K, align 8
  %16 = udiv i64 %14, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @SZ_4K, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %37

24:                                               ; preds = %3
  %25 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %5, align 8
  %26 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.etnaviv_iommuv1_context*, %struct.etnaviv_iommuv1_context** %8, align 8
  %31 = getelementptr inbounds %struct.etnaviv_iommuv1_context, %struct.etnaviv_iommuv1_context* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  %36 = load i64, i64* @SZ_4K, align 8
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %24, %21
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local %struct.etnaviv_iommuv1_context* @to_v1_context(%struct.etnaviv_iommu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
