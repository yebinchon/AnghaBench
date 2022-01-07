; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bo = type { i32, %struct.TYPE_2__, %struct.tegra_bo*, i32, i32 }
%struct.TYPE_2__ = type { %struct.tegra_bo* }
%struct.drm_device = type { i32, %struct.tegra_drm* }
%struct.tegra_drm = type { i64 }
%struct.dma_buf = type { i32 }
%struct.dma_buf_attachment = type { i32, %struct.TYPE_2__, %struct.dma_buf_attachment*, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_bo* (%struct.drm_device*, %struct.dma_buf*)* @tegra_bo_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_bo* @tegra_bo_import(%struct.drm_device* %0, %struct.dma_buf* %1) #0 {
  %3 = alloca %struct.tegra_bo*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.dma_buf*, align 8
  %6 = alloca %struct.tegra_drm*, align 8
  %7 = alloca %struct.dma_buf_attachment*, align 8
  %8 = alloca %struct.tegra_bo*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.dma_buf* %1, %struct.dma_buf** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load %struct.tegra_drm*, %struct.tegra_drm** %11, align 8
  store %struct.tegra_drm* %12, %struct.tegra_drm** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %15 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.tegra_bo* @tegra_bo_alloc_object(%struct.drm_device* %13, i32 %16)
  store %struct.tegra_bo* %17, %struct.tegra_bo** %8, align 8
  %18 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %19 = call i64 @IS_ERR(%struct.tegra_bo* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  store %struct.tegra_bo* %22, %struct.tegra_bo** %3, align 8
  br label %125

23:                                               ; preds = %2
  %24 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.tegra_bo* @dma_buf_attach(%struct.dma_buf* %24, i32 %27)
  %29 = bitcast %struct.tegra_bo* %28 to %struct.dma_buf_attachment*
  store %struct.dma_buf_attachment* %29, %struct.dma_buf_attachment** %7, align 8
  %30 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %7, align 8
  %31 = bitcast %struct.dma_buf_attachment* %30 to %struct.tegra_bo*
  %32 = call i64 @IS_ERR(%struct.tegra_bo* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %7, align 8
  %36 = bitcast %struct.dma_buf_attachment* %35 to %struct.tegra_bo*
  %37 = call i32 @PTR_ERR(%struct.tegra_bo* %36)
  store i32 %37, i32* %9, align 4
  br label %117

38:                                               ; preds = %23
  %39 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %40 = call i32 @get_dma_buf(%struct.dma_buf* %39)
  %41 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %7, align 8
  %42 = bitcast %struct.dma_buf_attachment* %41 to %struct.tegra_bo*
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = call %struct.tegra_bo* @dma_buf_map_attachment(%struct.tegra_bo* %42, i32 %43)
  %45 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %46 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %45, i32 0, i32 2
  store %struct.tegra_bo* %44, %struct.tegra_bo** %46, align 8
  %47 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %48 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %47, i32 0, i32 2
  %49 = load %struct.tegra_bo*, %struct.tegra_bo** %48, align 8
  %50 = call i64 @IS_ERR(%struct.tegra_bo* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %38
  %53 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %54 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %53, i32 0, i32 2
  %55 = load %struct.tegra_bo*, %struct.tegra_bo** %54, align 8
  %56 = call i32 @PTR_ERR(%struct.tegra_bo* %55)
  store i32 %56, i32* %9, align 4
  br label %96

57:                                               ; preds = %38
  %58 = load %struct.tegra_drm*, %struct.tegra_drm** %6, align 8
  %59 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.tegra_drm*, %struct.tegra_drm** %6, align 8
  %64 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %65 = call i32 @tegra_bo_iommu_map(%struct.tegra_drm* %63, %struct.tegra_bo* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %96

69:                                               ; preds = %62
  br label %89

70:                                               ; preds = %57
  %71 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %72 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %71, i32 0, i32 2
  %73 = load %struct.tegra_bo*, %struct.tegra_bo** %72, align 8
  %74 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %96

80:                                               ; preds = %70
  %81 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %82 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %81, i32 0, i32 2
  %83 = load %struct.tegra_bo*, %struct.tegra_bo** %82, align 8
  %84 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @sg_dma_address(i32 %85)
  %87 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %88 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %80, %69
  %90 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %7, align 8
  %91 = bitcast %struct.dma_buf_attachment* %90 to %struct.tegra_bo*
  %92 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %93 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store %struct.tegra_bo* %91, %struct.tegra_bo** %94, align 8
  %95 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  store %struct.tegra_bo* %95, %struct.tegra_bo** %3, align 8
  br label %125

96:                                               ; preds = %77, %68, %52
  %97 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %98 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %97, i32 0, i32 2
  %99 = load %struct.tegra_bo*, %struct.tegra_bo** %98, align 8
  %100 = call i32 @IS_ERR_OR_NULL(%struct.tegra_bo* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %96
  %103 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %7, align 8
  %104 = bitcast %struct.dma_buf_attachment* %103 to %struct.tegra_bo*
  %105 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %106 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %105, i32 0, i32 2
  %107 = load %struct.tegra_bo*, %struct.tegra_bo** %106, align 8
  %108 = load i32, i32* @DMA_TO_DEVICE, align 4
  %109 = call i32 @dma_buf_unmap_attachment(%struct.tegra_bo* %104, %struct.tegra_bo* %107, i32 %108)
  br label %110

110:                                              ; preds = %102, %96
  %111 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %112 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %7, align 8
  %113 = bitcast %struct.dma_buf_attachment* %112 to %struct.tegra_bo*
  %114 = call i32 @dma_buf_detach(%struct.dma_buf* %111, %struct.tegra_bo* %113)
  %115 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %116 = call i32 @dma_buf_put(%struct.dma_buf* %115)
  br label %117

117:                                              ; preds = %110, %34
  %118 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %119 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %118, i32 0, i32 1
  %120 = call i32 @drm_gem_object_release(%struct.TYPE_2__* %119)
  %121 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %122 = call i32 @kfree(%struct.tegra_bo* %121)
  %123 = load i32, i32* %9, align 4
  %124 = call %struct.tegra_bo* @ERR_PTR(i32 %123)
  store %struct.tegra_bo* %124, %struct.tegra_bo** %3, align 8
  br label %125

125:                                              ; preds = %117, %89, %21
  %126 = load %struct.tegra_bo*, %struct.tegra_bo** %3, align 8
  ret %struct.tegra_bo* %126
}

declare dso_local %struct.tegra_bo* @tegra_bo_alloc_object(%struct.drm_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.tegra_bo*) #1

declare dso_local %struct.tegra_bo* @dma_buf_attach(%struct.dma_buf*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.tegra_bo*) #1

declare dso_local i32 @get_dma_buf(%struct.dma_buf*) #1

declare dso_local %struct.tegra_bo* @dma_buf_map_attachment(%struct.tegra_bo*, i32) #1

declare dso_local i32 @tegra_bo_iommu_map(%struct.tegra_drm*, %struct.tegra_bo*) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.tegra_bo*) #1

declare dso_local i32 @dma_buf_unmap_attachment(%struct.tegra_bo*, %struct.tegra_bo*, i32) #1

declare dso_local i32 @dma_buf_detach(%struct.dma_buf*, %struct.tegra_bo*) #1

declare dso_local i32 @dma_buf_put(%struct.dma_buf*) #1

declare dso_local i32 @drm_gem_object_release(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.tegra_bo*) #1

declare dso_local %struct.tegra_bo* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
