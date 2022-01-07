; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_ensure_stlb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_ensure_stlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommuv2_context = type { i32*, i32*, i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SZ_4K = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MMUv2_PTE_EXCEPTION = common dso_local global i32 0, align 4
@MMUv2_PTE_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_iommuv2_context*, i32)* @etnaviv_iommuv2_ensure_stlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_iommuv2_ensure_stlb(%struct.etnaviv_iommuv2_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.etnaviv_iommuv2_context*, align 8
  %5 = alloca i32, align 4
  store %struct.etnaviv_iommuv2_context* %0, %struct.etnaviv_iommuv2_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %7 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %6, i32 0, i32 2
  %8 = load i64*, i64** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

15:                                               ; preds = %2
  %16 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %17 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SZ_4K, align 4
  %23 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %24 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i64 @dma_alloc_wc(i32 %21, i32 %22, i32* %28, i32 %29)
  %31 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %32 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 %30, i64* %36, align 8
  %37 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %38 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %15
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %77

48:                                               ; preds = %15
  %49 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %50 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @MMUv2_PTE_EXCEPTION, align 4
  %57 = load i32, i32* @SZ_4K, align 4
  %58 = sext i32 %57 to i64
  %59 = udiv i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memset32(i64 %55, i32 %56, i32 %60)
  %62 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %63 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MMUv2_PTE_PRESENT, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %4, align 8
  %72 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %48, %45, %14
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @dma_alloc_wc(i32, i32, i32*, i32) #1

declare dso_local i32 @memset32(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
