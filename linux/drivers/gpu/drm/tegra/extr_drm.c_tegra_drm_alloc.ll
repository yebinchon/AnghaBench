; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_drm.c_tegra_drm_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_drm.c_tegra_drm_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_drm = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.iova = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IOMMU_READ = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tegra_drm_alloc(%struct.tegra_drm* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tegra_drm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.iova*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tegra_drm* %0, %struct.tegra_drm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %13 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %18 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @iova_align(i32* %19, i64 %20)
  store i64 %21, i64* %6, align 8
  br label %25

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @PAGE_ALIGN(i64 %23)
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i32, i32* @__GFP_ZERO, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %30 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @GFP_DMA, align 4
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %33, %25
  %38 = load i32, i32* %10, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @get_order(i64 %39)
  %41 = call i64 @__get_free_pages(i32 %38, i32 %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = call i8* @ERR_PTR(i32 %47)
  store i8* %48, i8** %4, align 8
  br label %117

49:                                               ; preds = %37
  %50 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %51 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @virt_to_phys(i8* %55)
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i8*, i8** %9, align 8
  store i8* %58, i8** %4, align 8
  br label %117

59:                                               ; preds = %49
  %60 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %61 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %65 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = lshr i64 %63, %67
  %69 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %70 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.iova* @alloc_iova(i32* %62, i64 %68, i32 %72, i32 1)
  store %struct.iova* %73, %struct.iova** %8, align 8
  %74 = load %struct.iova*, %struct.iova** %8, align 8
  %75 = icmp ne %struct.iova* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %59
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %109

79:                                               ; preds = %59
  %80 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %81 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load %struct.iova*, %struct.iova** %8, align 8
  %84 = call i32 @iova_dma_addr(i32* %82, %struct.iova* %83)
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  %86 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %87 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @virt_to_phys(i8* %91)
  %93 = load i64, i64* %6, align 8
  %94 = load i32, i32* @IOMMU_READ, align 4
  %95 = load i32, i32* @IOMMU_WRITE, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @iommu_map(i64 %88, i32 %90, i32 %92, i64 %93, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %79
  br label %103

101:                                              ; preds = %79
  %102 = load i8*, i8** %9, align 8
  store i8* %102, i8** %4, align 8
  br label %117

103:                                              ; preds = %100
  %104 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %105 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load %struct.iova*, %struct.iova** %8, align 8
  %108 = call i32 @__free_iova(i32* %106, %struct.iova* %107)
  br label %109

109:                                              ; preds = %103, %76
  %110 = load i8*, i8** %9, align 8
  %111 = ptrtoint i8* %110 to i64
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @get_order(i64 %112)
  %114 = call i32 @free_pages(i64 %111, i32 %113)
  %115 = load i32, i32* %11, align 4
  %116 = call i8* @ERR_PTR(i32 %115)
  store i8* %116, i8** %4, align 8
  br label %117

117:                                              ; preds = %109, %101, %54, %45
  %118 = load i8*, i8** %4, align 8
  ret i8* %118
}

declare dso_local i64 @iova_align(i32*, i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local %struct.iova* @alloc_iova(i32*, i64, i32, i32) #1

declare dso_local i32 @iova_dma_addr(i32*, %struct.iova*) #1

declare dso_local i32 @iommu_map(i64, i32, i32, i64, i32) #1

declare dso_local i32 @__free_iova(i32*, %struct.iova*) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
