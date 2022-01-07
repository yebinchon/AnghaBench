; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_gem.c_mtk_drm_gem_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_gem.c_mtk_drm_gem_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_drm_gem_obj = type { i32, i64, i64, i32, %struct.drm_gem_object }
%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { %struct.mtk_drm_private* }
%struct.mtk_drm_private = type { i32 }

@DMA_ATTR_WRITE_COMBINE = common dso_local global i32 0, align 4
@DMA_ATTR_NO_KERNEL_MAPPING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to allocate %zx byte dma buffer\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"cookie = %p dma_addr = %pad size = %zu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mtk_drm_gem_obj* @mtk_drm_gem_create(%struct.drm_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mtk_drm_gem_obj*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_drm_private*, align 8
  %9 = alloca %struct.mtk_drm_gem_obj*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %13, align 8
  store %struct.mtk_drm_private* %14, %struct.mtk_drm_private** %8, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call %struct.mtk_drm_gem_obj* @mtk_drm_gem_init(%struct.drm_device* %15, i64 %16)
  store %struct.mtk_drm_gem_obj* %17, %struct.mtk_drm_gem_obj** %9, align 8
  %18 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %9, align 8
  %19 = call i64 @IS_ERR(%struct.mtk_drm_gem_obj* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %9, align 8
  %23 = call %struct.mtk_drm_gem_obj* @ERR_CAST(%struct.mtk_drm_gem_obj* %22)
  store %struct.mtk_drm_gem_obj* %23, %struct.mtk_drm_gem_obj** %4, align 8
  br label %90

24:                                               ; preds = %3
  %25 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %9, align 8
  %26 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %25, i32 0, i32 4
  store %struct.drm_gem_object* %26, %struct.drm_gem_object** %10, align 8
  %27 = load i32, i32* @DMA_ATTR_WRITE_COMBINE, align 4
  %28 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %9, align 8
  %29 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @DMA_ATTR_NO_KERNEL_MAPPING, align 4
  %34 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %9, align 8
  %35 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %24
  %39 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %8, align 8
  %40 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %43 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %9, align 8
  %46 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %45, i32 0, i32 0
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %9, align 8
  %49 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @dma_alloc_attrs(i32 %41, i32 %44, i32* %46, i32 %47, i32 %50)
  %52 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %9, align 8
  %53 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %9, align 8
  %55 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %38
  %59 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %60 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %83

65:                                               ; preds = %38
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %9, align 8
  %70 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %9, align 8
  %73 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %68, %65
  %75 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %9, align 8
  %76 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %9, align 8
  %79 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %78, i32 0, i32 0
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %77, i32* %79, i64 %80)
  %82 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %9, align 8
  store %struct.mtk_drm_gem_obj* %82, %struct.mtk_drm_gem_obj** %4, align 8
  br label %90

83:                                               ; preds = %58
  %84 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %85 = call i32 @drm_gem_object_release(%struct.drm_gem_object* %84)
  %86 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %9, align 8
  %87 = call i32 @kfree(%struct.mtk_drm_gem_obj* %86)
  %88 = load i32, i32* %11, align 4
  %89 = call %struct.mtk_drm_gem_obj* @ERR_PTR(i32 %88)
  store %struct.mtk_drm_gem_obj* %89, %struct.mtk_drm_gem_obj** %4, align 8
  br label %90

90:                                               ; preds = %83, %74, %21
  %91 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %4, align 8
  ret %struct.mtk_drm_gem_obj* %91
}

declare dso_local %struct.mtk_drm_gem_obj* @mtk_drm_gem_init(%struct.drm_device*, i64) #1

declare dso_local i64 @IS_ERR(%struct.mtk_drm_gem_obj*) #1

declare dso_local %struct.mtk_drm_gem_obj* @ERR_CAST(%struct.mtk_drm_gem_obj*) #1

declare dso_local i64 @dma_alloc_attrs(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i64, i32*, i64) #1

declare dso_local i32 @drm_gem_object_release(%struct.drm_gem_object*) #1

declare dso_local i32 @kfree(%struct.mtk_drm_gem_obj*) #1

declare dso_local %struct.mtk_drm_gem_obj* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
