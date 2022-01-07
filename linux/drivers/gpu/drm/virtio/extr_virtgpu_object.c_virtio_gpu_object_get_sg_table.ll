; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_object.c_virtio_gpu_object_get_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_object.c_virtio_gpu_object_get_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_gpu_device = type { i32 }
%struct.virtio_gpu_object = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__*, %struct.page** }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*, %struct.ttm_operation_ctx*)* }
%struct.ttm_operation_ctx = type { i32, i32 }
%struct.page = type { i32 }

@tt_unpopulated = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@SCATTERLIST_MAX_SEGMENT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtio_gpu_object_get_sg_table(%struct.virtio_gpu_device* %0, %struct.virtio_gpu_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtio_gpu_device*, align 8
  %5 = alloca %struct.virtio_gpu_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_operation_ctx, align 4
  %10 = alloca i64, align 8
  store %struct.virtio_gpu_device* %0, %struct.virtio_gpu_device** %4, align 8
  store %struct.virtio_gpu_object* %1, %struct.virtio_gpu_object** %5, align 8
  %11 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %5, align 8
  %12 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load %struct.page**, %struct.page*** %15, align 8
  store %struct.page** %16, %struct.page*** %7, align 8
  %17 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %5, align 8
  %18 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = bitcast %struct.ttm_operation_ctx* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 8, i1 false)
  %22 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %5, align 8
  %23 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %100

27:                                               ; preds = %2
  %28 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %5, align 8
  %29 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @tt_unpopulated, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %27
  %37 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %5, align 8
  %38 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_8__*, %struct.ttm_operation_ctx*)*, i32 (%struct.TYPE_8__*, %struct.ttm_operation_ctx*)** %45, align 8
  %47 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %5, align 8
  %48 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = call i32 %46(%struct.TYPE_8__* %50, %struct.ttm_operation_ctx* %9)
  br label %52

52:                                               ; preds = %36, %27
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32* @kmalloc(i32 4, i32 %53)
  %55 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %5, align 8
  %56 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  %57 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %5, align 8
  %58 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %91

62:                                               ; preds = %52
  %63 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %4, align 8
  %64 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @virtio_max_dma_size(i32 %65)
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* @PAGE_MASK, align 8
  %68 = load i64, i64* %10, align 8
  %69 = and i64 %68, %67
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @SCATTERLIST_MAX_SEGMENT, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i64, i64* @SCATTERLIST_MAX_SEGMENT, align 8
  store i64 %74, i64* %10, align 8
  br label %75

75:                                               ; preds = %73, %62
  %76 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %5, align 8
  %77 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.page**, %struct.page*** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @PAGE_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i64, i64* %10, align 8
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i32 @__sg_alloc_table_from_pages(i32* %78, %struct.page** %79, i32 %80, i32 0, i32 %83, i64 %84, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %91

90:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %100

91:                                               ; preds = %89, %61
  %92 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %5, align 8
  %93 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @kfree(i32* %94)
  %96 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %5, align 8
  %97 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %96, i32 0, i32 0
  store i32* null, i32** %97, align 8
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %91, %90, %26
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @kmalloc(i32, i32) #2

declare dso_local i64 @virtio_max_dma_size(i32) #2

declare dso_local i32 @__sg_alloc_table_from_pages(i32*, %struct.page**, i32, i32, i32, i64, i32) #2

declare dso_local i32 @kfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
