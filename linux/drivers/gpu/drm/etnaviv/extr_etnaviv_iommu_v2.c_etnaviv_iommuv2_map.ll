; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { i32 }
%struct.etnaviv_iommuv2_context = type { i32** }

@MMUv2_PTE_PRESENT = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CONFIG_PHYS_ADDR_T_64BIT = common dso_local global i32 0, align 4
@ETNAVIV_PROT_WRITE = common dso_local global i32 0, align 4
@MMUv2_PTE_WRITEABLE = common dso_local global i32 0, align 4
@MMUv2_MTLB_MASK = common dso_local global i64 0, align 8
@MMUv2_MTLB_SHIFT = common dso_local global i64 0, align 8
@MMUv2_STLB_MASK = common dso_local global i64 0, align 8
@MMUv2_STLB_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_iommu_context*, i64, i32, i64, i32)* @etnaviv_iommuv2_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_iommuv2_map(%struct.etnaviv_iommu_context* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.etnaviv_iommu_context*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.etnaviv_iommuv2_context*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.etnaviv_iommu_context* %0, %struct.etnaviv_iommu_context** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %7, align 8
  %18 = call %struct.etnaviv_iommuv2_context* @to_v2_context(%struct.etnaviv_iommu_context* %17)
  store %struct.etnaviv_iommuv2_context* %18, %struct.etnaviv_iommuv2_context** %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @lower_32_bits(i32 %19)
  %21 = load i32, i32* @MMUv2_PTE_PRESENT, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %16, align 4
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @SZ_4K, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %81

29:                                               ; preds = %5
  %30 = load i32, i32* @CONFIG_PHYS_ADDR_T_64BIT, align 4
  %31 = call i64 @IS_ENABLED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @upper_32_bits(i32 %34)
  %36 = and i32 %35, 255
  %37 = shl i32 %36, 4
  %38 = load i32, i32* %16, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %33, %29
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @ETNAVIV_PROT_WRITE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @MMUv2_PTE_WRITEABLE, align 4
  %47 = load i32, i32* %16, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @MMUv2_MTLB_MASK, align 8
  %52 = and i64 %50, %51
  %53 = load i64, i64* @MMUv2_MTLB_SHIFT, align 8
  %54 = lshr i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %13, align 4
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @MMUv2_STLB_MASK, align 8
  %58 = and i64 %56, %57
  %59 = load i64, i64* @MMUv2_STLB_SHIFT, align 8
  %60 = lshr i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %14, align 4
  %62 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @etnaviv_iommuv2_ensure_stlb(%struct.etnaviv_iommuv2_context* %62, i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %49
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %6, align 4
  br label %81

69:                                               ; preds = %49
  %70 = load i32, i32* %16, align 4
  %71 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %12, align 8
  %72 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %71, i32 0, i32 0
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %70, i32* %80, align 4
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %69, %67, %26
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.etnaviv_iommuv2_context* @to_v2_context(%struct.etnaviv_iommu_context*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @etnaviv_iommuv2_ensure_stlb(%struct.etnaviv_iommuv2_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
