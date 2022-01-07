; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_iommu_global_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_iommu_global_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.etnaviv_drm_private* }
%struct.etnaviv_drm_private = type { %struct.etnaviv_iommu_global* }
%struct.etnaviv_iommu_global = type { i64, i32, i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@ETNAVIV_PTA_SIZE = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @etnaviv_iommu_global_fini(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca %struct.etnaviv_gpu*, align 8
  %3 = alloca %struct.etnaviv_drm_private*, align 8
  %4 = alloca %struct.etnaviv_iommu_global*, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %2, align 8
  %5 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %6 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %8, align 8
  store %struct.etnaviv_drm_private* %9, %struct.etnaviv_drm_private** %3, align 8
  %10 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %3, align 8
  %11 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %10, i32 0, i32 0
  %12 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %11, align 8
  store %struct.etnaviv_iommu_global* %12, %struct.etnaviv_iommu_global** %4, align 8
  %13 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %14 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %64

19:                                               ; preds = %1
  %20 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %21 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %27 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ETNAVIV_PTA_SIZE, align 4
  %30 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %31 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %35 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dma_free_wc(i32 %28, i32 %29, i64 %33, i32 %37)
  br label %39

39:                                               ; preds = %25, %19
  %40 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %41 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %46 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SZ_4K, align 4
  %49 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %50 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %53 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dma_free_wc(i32 %47, i32 %48, i64 %51, i32 %54)
  br label %56

56:                                               ; preds = %44, %39
  %57 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %58 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %57, i32 0, i32 1
  %59 = call i32 @mutex_destroy(i32* %58)
  %60 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %4, align 8
  %61 = call i32 @kfree(%struct.etnaviv_iommu_global* %60)
  %62 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %3, align 8
  %63 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %62, i32 0, i32 0
  store %struct.etnaviv_iommu_global* null, %struct.etnaviv_iommu_global** %63, align 8
  br label %64

64:                                               ; preds = %56, %18
  ret void
}

declare dso_local i32 @dma_free_wc(i32, i32, i64, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.etnaviv_iommu_global*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
