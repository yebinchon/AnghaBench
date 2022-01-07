; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu.c_etnaviv_iommuv1_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu.c_etnaviv_iommuv1_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { i32 }
%struct.etnaviv_iommuv1_context = type { i32* }

@GPU_MEM_START = common dso_local global i64 0, align 8
@SZ_4K = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_iommu_context*, i64, i32, i64, i32)* @etnaviv_iommuv1_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_iommuv1_map(%struct.etnaviv_iommu_context* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.etnaviv_iommu_context*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.etnaviv_iommuv1_context*, align 8
  %13 = alloca i32, align 4
  store %struct.etnaviv_iommu_context* %0, %struct.etnaviv_iommu_context** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %7, align 8
  %15 = call %struct.etnaviv_iommuv1_context* @to_v1_context(%struct.etnaviv_iommu_context* %14)
  store %struct.etnaviv_iommuv1_context* %15, %struct.etnaviv_iommuv1_context** %12, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @GPU_MEM_START, align 8
  %18 = sub i64 %16, %17
  %19 = load i64, i64* @SZ_4K, align 8
  %20 = udiv i64 %18, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %13, align 4
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @SZ_4K, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %36

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.etnaviv_iommuv1_context*, %struct.etnaviv_iommuv1_context** %12, align 8
  %31 = getelementptr inbounds %struct.etnaviv_iommuv1_context, %struct.etnaviv_iommuv1_context* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %13, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %28, %25
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.etnaviv_iommuv1_context* @to_v1_context(%struct.etnaviv_iommu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
