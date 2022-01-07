; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_context_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_context_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@SZ_4K = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"unaligned: iova 0x%lx pa %pa size 0x%zx min_pagesz 0x%zx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_iommu_context*, i64, i64, i64, i32)* @etnaviv_context_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_context_map(%struct.etnaviv_iommu_context* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.etnaviv_iommu_context*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.etnaviv_iommu_context* %0, %struct.etnaviv_iommu_context** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* @SZ_4K, align 8
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %10, align 8
  store i64 %18, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* %10, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* %13, align 8
  %25 = call i32 @IS_ALIGNED(i64 %23, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %5
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %28, i64* %9, i64 %29, i64 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %78

34:                                               ; preds = %5
  br label %35

35:                                               ; preds = %56, %34
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %7, align 8
  %40 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = bitcast {}** %44 to i32 (%struct.etnaviv_iommu_context*, i64, i64, i64, i32)**
  %46 = load i32 (%struct.etnaviv_iommu_context*, i64, i64, i64, i32)*, i32 (%struct.etnaviv_iommu_context*, i64, i64, i64, i32)** %45, align 8
  %47 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 %46(%struct.etnaviv_iommu_context* %47, i64 %48, i64 %49, i64 %50, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  br label %66

56:                                               ; preds = %38
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %10, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %10, align 8
  br label %35

66:                                               ; preds = %55, %35
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %7, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %10, align 8
  %74 = sub i64 %72, %73
  %75 = call i32 @etnaviv_context_unmap(%struct.etnaviv_iommu_context* %70, i64 %71, i64 %74)
  br label %76

76:                                               ; preds = %69, %66
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %76, %27
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i32 @pr_err(i8*, i64, i64*, i64, i64) #1

declare dso_local i32 @etnaviv_context_unmap(%struct.etnaviv_iommu_context*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
