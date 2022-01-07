; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_ioctl.c_virtio_gpu_transfer_from_host_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_ioctl.c_virtio_gpu_transfer_from_host_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.drm_device = type { %struct.virtio_gpu_device* }
%struct.virtio_gpu_device = type { i32 }
%struct.drm_file = type { %struct.virtio_gpu_fpriv* }
%struct.virtio_gpu_fpriv = type { i32 }
%struct.drm_virtgpu_3d_transfer_from_host = type { i32, i32, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.virtio_gpu_object = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.virtio_gpu_fence = type { i32 }
%struct.virtio_gpu_box = type { i32 }

@__const.virtio_gpu_transfer_from_host_ioctl.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @virtio_gpu_transfer_from_host_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_gpu_transfer_from_host_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.virtio_gpu_device*, align 8
  %9 = alloca %struct.virtio_gpu_fpriv*, align 8
  %10 = alloca %struct.drm_virtgpu_3d_transfer_from_host*, align 8
  %11 = alloca %struct.ttm_operation_ctx, align 4
  %12 = alloca %struct.drm_gem_object*, align 8
  %13 = alloca %struct.virtio_gpu_object*, align 8
  %14 = alloca %struct.virtio_gpu_fence*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.virtio_gpu_box, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %19, align 8
  store %struct.virtio_gpu_device* %20, %struct.virtio_gpu_device** %8, align 8
  %21 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %22 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %21, i32 0, i32 0
  %23 = load %struct.virtio_gpu_fpriv*, %struct.virtio_gpu_fpriv** %22, align 8
  store %struct.virtio_gpu_fpriv* %23, %struct.virtio_gpu_fpriv** %9, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to %struct.drm_virtgpu_3d_transfer_from_host*
  store %struct.drm_virtgpu_3d_transfer_from_host* %25, %struct.drm_virtgpu_3d_transfer_from_host** %10, align 8
  %26 = bitcast %struct.ttm_operation_ctx* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.virtio_gpu_transfer_from_host_ioctl.ctx to i8*), i64 8, i1 false)
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %12, align 8
  store %struct.virtio_gpu_object* null, %struct.virtio_gpu_object** %13, align 8
  %27 = load %struct.drm_virtgpu_3d_transfer_from_host*, %struct.drm_virtgpu_3d_transfer_from_host** %10, align 8
  %28 = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_from_host, %struct.drm_virtgpu_3d_transfer_from_host* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %16, align 4
  %30 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %8, align 8
  %31 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @ENOSYS, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %109

37:                                               ; preds = %3
  %38 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %39 = load %struct.drm_virtgpu_3d_transfer_from_host*, %struct.drm_virtgpu_3d_transfer_from_host** %10, align 8
  %40 = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_from_host, %struct.drm_virtgpu_3d_transfer_from_host* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %38, i32 %41)
  store %struct.drm_gem_object* %42, %struct.drm_gem_object** %12, align 8
  %43 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %44 = icmp eq %struct.drm_gem_object* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %109

48:                                               ; preds = %37
  %49 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %50 = call %struct.virtio_gpu_object* @gem_to_virtio_gpu_obj(%struct.drm_gem_object* %49)
  store %struct.virtio_gpu_object* %50, %struct.virtio_gpu_object** %13, align 8
  %51 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %13, align 8
  %52 = call i32 @virtio_gpu_object_reserve(%struct.virtio_gpu_object* %51, i32 0)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %105

56:                                               ; preds = %48
  %57 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %13, align 8
  %58 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %57, i32 0, i32 0
  %59 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %13, align 8
  %60 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %59, i32 0, i32 2
  %61 = call i32 @ttm_bo_validate(%struct.TYPE_4__* %58, i32* %60, %struct.ttm_operation_ctx* %11)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %102

66:                                               ; preds = %56
  %67 = load %struct.drm_virtgpu_3d_transfer_from_host*, %struct.drm_virtgpu_3d_transfer_from_host** %10, align 8
  %68 = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_from_host, %struct.drm_virtgpu_3d_transfer_from_host* %67, i32 0, i32 1
  %69 = call i32 @convert_to_hw_box(%struct.virtio_gpu_box* %17, i32* %68)
  %70 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %8, align 8
  %71 = call %struct.virtio_gpu_fence* @virtio_gpu_fence_alloc(%struct.virtio_gpu_device* %70)
  store %struct.virtio_gpu_fence* %71, %struct.virtio_gpu_fence** %14, align 8
  %72 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %14, align 8
  %73 = icmp ne %struct.virtio_gpu_fence* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %15, align 4
  br label %102

77:                                               ; preds = %66
  %78 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %8, align 8
  %79 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %13, align 8
  %80 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.virtio_gpu_fpriv*, %struct.virtio_gpu_fpriv** %9, align 8
  %83 = getelementptr inbounds %struct.virtio_gpu_fpriv, %struct.virtio_gpu_fpriv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.drm_virtgpu_3d_transfer_from_host*, %struct.drm_virtgpu_3d_transfer_from_host** %10, align 8
  %87 = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_from_host, %struct.drm_virtgpu_3d_transfer_from_host* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %14, align 8
  %90 = call i32 @virtio_gpu_cmd_transfer_from_host_3d(%struct.virtio_gpu_device* %78, i32 %81, i32 %84, i32 %85, i32 %88, %struct.virtio_gpu_box* %17, %struct.virtio_gpu_fence* %89)
  %91 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %13, align 8
  %92 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %14, align 8
  %97 = getelementptr inbounds %struct.virtio_gpu_fence, %struct.virtio_gpu_fence* %96, i32 0, i32 0
  %98 = call i32 @dma_resv_add_excl_fence(i32 %95, i32* %97)
  %99 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %14, align 8
  %100 = getelementptr inbounds %struct.virtio_gpu_fence, %struct.virtio_gpu_fence* %99, i32 0, i32 0
  %101 = call i32 @dma_fence_put(i32* %100)
  br label %102

102:                                              ; preds = %77, %74, %65
  %103 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %13, align 8
  %104 = call i32 @virtio_gpu_object_unreserve(%struct.virtio_gpu_object* %103)
  br label %105

105:                                              ; preds = %102, %55
  %106 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %107 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %106)
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %105, %45, %34
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #2

declare dso_local %struct.virtio_gpu_object* @gem_to_virtio_gpu_obj(%struct.drm_gem_object*) #2

declare dso_local i32 @virtio_gpu_object_reserve(%struct.virtio_gpu_object*, i32) #2

declare dso_local i32 @ttm_bo_validate(%struct.TYPE_4__*, i32*, %struct.ttm_operation_ctx*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @convert_to_hw_box(%struct.virtio_gpu_box*, i32*) #2

declare dso_local %struct.virtio_gpu_fence* @virtio_gpu_fence_alloc(%struct.virtio_gpu_device*) #2

declare dso_local i32 @virtio_gpu_cmd_transfer_from_host_3d(%struct.virtio_gpu_device*, i32, i32, i32, i32, %struct.virtio_gpu_box*, %struct.virtio_gpu_fence*) #2

declare dso_local i32 @dma_resv_add_excl_fence(i32, i32*) #2

declare dso_local i32 @dma_fence_put(i32*) #2

declare dso_local i32 @virtio_gpu_object_unreserve(%struct.virtio_gpu_object*) #2

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
