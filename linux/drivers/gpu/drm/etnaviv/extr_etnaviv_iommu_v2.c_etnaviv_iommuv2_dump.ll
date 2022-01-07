; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { i32 }
%struct.etnaviv_iommuv2_context = type { i32*, i32** }

@SZ_4K = common dso_local global i32 0, align 4
@MMUv2_MAX_STLB_ENTRIES = common dso_local global i32 0, align 4
@MMUv2_PTE_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_iommu_context*, i8*)* @etnaviv_iommuv2_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_iommuv2_dump(%struct.etnaviv_iommu_context* %0, i8* %1) #0 {
  %3 = alloca %struct.etnaviv_iommu_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.etnaviv_iommuv2_context*, align 8
  %6 = alloca i32, align 4
  store %struct.etnaviv_iommu_context* %0, %struct.etnaviv_iommu_context** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %3, align 8
  %8 = call %struct.etnaviv_iommuv2_context* @to_v2_context(%struct.etnaviv_iommu_context* %7)
  store %struct.etnaviv_iommuv2_context* %8, %struct.etnaviv_iommuv2_context** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %5, align 8
  %11 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* @SZ_4K, align 4
  %14 = call i32 @memcpy(i8* %9, i32* %12, i32 %13)
  %15 = load i32, i32* @SZ_4K, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr i8, i8* %16, i64 %17
  store i8* %18, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %50, %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MMUv2_MAX_STLB_ENTRIES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %5, align 8
  %25 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MMUv2_PTE_PRESENT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %23
  %35 = load i8*, i8** %4, align 8
  %36 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %5, align 8
  %37 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %36, i32 0, i32 1
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @SZ_4K, align 4
  %44 = call i32 @memcpy(i8* %35, i32* %42, i32 %43)
  %45 = load i32, i32* @SZ_4K, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr i8, i8* %46, i64 %47
  store i8* %48, i8** %4, align 8
  br label %49

49:                                               ; preds = %34, %23
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %19

53:                                               ; preds = %19
  ret void
}

declare dso_local %struct.etnaviv_iommuv2_context* @to_v2_context(%struct.etnaviv_iommu_context*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
