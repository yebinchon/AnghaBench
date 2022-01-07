; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_ioctl.c_virtio_gpu_transfer_to_host_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_ioctl.c_virtio_gpu_transfer_to_host_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.drm_device = type { %struct.virtio_gpu_device* }
%struct.virtio_gpu_device = type { i32 }
%struct.drm_file = type { %struct.virtio_gpu_fpriv* }
%struct.virtio_gpu_fpriv = type { i32 }
%struct.drm_virtgpu_3d_transfer_to_host = type { i32, i32, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.virtio_gpu_object = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.virtio_gpu_fence = type { i32 }
%struct.virtio_gpu_box = type { i32, i32, i32, i32 }

@__const.virtio_gpu_transfer_to_host_ioctl.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @virtio_gpu_transfer_to_host_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_gpu_transfer_to_host_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.virtio_gpu_device*, align 8
  %9 = alloca %struct.virtio_gpu_fpriv*, align 8
  %10 = alloca %struct.drm_virtgpu_3d_transfer_to_host*, align 8
  %11 = alloca %struct.ttm_operation_ctx, align 4
  %12 = alloca %struct.drm_gem_object*, align 8
  %13 = alloca %struct.virtio_gpu_object*, align 8
  %14 = alloca %struct.virtio_gpu_fence*, align 8
  %15 = alloca %struct.virtio_gpu_box, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
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
  %25 = bitcast i8* %24 to %struct.drm_virtgpu_3d_transfer_to_host*
  store %struct.drm_virtgpu_3d_transfer_to_host* %25, %struct.drm_virtgpu_3d_transfer_to_host** %10, align 8
  %26 = bitcast %struct.ttm_operation_ctx* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.virtio_gpu_transfer_to_host_ioctl.ctx to i8*), i64 8, i1 false)
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %12, align 8
  store %struct.virtio_gpu_object* null, %struct.virtio_gpu_object** %13, align 8
  %27 = load %struct.drm_virtgpu_3d_transfer_to_host*, %struct.drm_virtgpu_3d_transfer_to_host** %10, align 8
  %28 = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_to_host, %struct.drm_virtgpu_3d_transfer_to_host* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %17, align 4
  %30 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %31 = load %struct.drm_virtgpu_3d_transfer_to_host*, %struct.drm_virtgpu_3d_transfer_to_host** %10, align 8
  %32 = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_to_host, %struct.drm_virtgpu_3d_transfer_to_host* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %30, i32 %33)
  store %struct.drm_gem_object* %34, %struct.drm_gem_object** %12, align 8
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %36 = icmp eq %struct.drm_gem_object* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %124

40:                                               ; preds = %3
  %41 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %42 = call %struct.virtio_gpu_object* @gem_to_virtio_gpu_obj(%struct.drm_gem_object* %41)
  store %struct.virtio_gpu_object* %42, %struct.virtio_gpu_object** %13, align 8
  %43 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %13, align 8
  %44 = call i32 @virtio_gpu_object_reserve(%struct.virtio_gpu_object* %43, i32 0)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %120

48:                                               ; preds = %40
  %49 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %13, align 8
  %50 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %49, i32 0, i32 0
  %51 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %13, align 8
  %52 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %51, i32 0, i32 1
  %53 = call i32 @ttm_bo_validate(%struct.TYPE_4__* %50, i32* %52, %struct.ttm_operation_ctx* %11)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %117

58:                                               ; preds = %48
  %59 = load %struct.drm_virtgpu_3d_transfer_to_host*, %struct.drm_virtgpu_3d_transfer_to_host** %10, align 8
  %60 = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_to_host, %struct.drm_virtgpu_3d_transfer_to_host* %59, i32 0, i32 1
  %61 = call i32 @convert_to_hw_box(%struct.virtio_gpu_box* %15, i32* %60)
  %62 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %8, align 8
  %63 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %58
  %67 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %8, align 8
  %68 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %13, align 8
  %69 = load i32, i32* %17, align 4
  %70 = getelementptr inbounds %struct.virtio_gpu_box, %struct.virtio_gpu_box* %15, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.virtio_gpu_box, %struct.virtio_gpu_box* %15, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.virtio_gpu_box, %struct.virtio_gpu_box* %15, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.virtio_gpu_box, %struct.virtio_gpu_box* %15, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @virtio_gpu_cmd_transfer_to_host_2d(%struct.virtio_gpu_device* %67, %struct.virtio_gpu_object* %68, i32 %69, i32 %71, i32 %73, i32 %75, i32 %77, i32* null)
  br label %116

79:                                               ; preds = %58
  %80 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %8, align 8
  %81 = call %struct.virtio_gpu_fence* @virtio_gpu_fence_alloc(%struct.virtio_gpu_device* %80)
  store %struct.virtio_gpu_fence* %81, %struct.virtio_gpu_fence** %14, align 8
  %82 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %14, align 8
  %83 = icmp ne %struct.virtio_gpu_fence* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %16, align 4
  br label %117

87:                                               ; preds = %79
  %88 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %8, align 8
  %89 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %13, align 8
  %90 = load %struct.virtio_gpu_fpriv*, %struct.virtio_gpu_fpriv** %9, align 8
  %91 = icmp ne %struct.virtio_gpu_fpriv* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.virtio_gpu_fpriv*, %struct.virtio_gpu_fpriv** %9, align 8
  %94 = getelementptr inbounds %struct.virtio_gpu_fpriv, %struct.virtio_gpu_fpriv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  br label %97

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %92
  %98 = phi i32 [ %95, %92 ], [ 0, %96 ]
  %99 = load i32, i32* %17, align 4
  %100 = load %struct.drm_virtgpu_3d_transfer_to_host*, %struct.drm_virtgpu_3d_transfer_to_host** %10, align 8
  %101 = getelementptr inbounds %struct.drm_virtgpu_3d_transfer_to_host, %struct.drm_virtgpu_3d_transfer_to_host* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %14, align 8
  %104 = call i32 @virtio_gpu_cmd_transfer_to_host_3d(%struct.virtio_gpu_device* %88, %struct.virtio_gpu_object* %89, i32 %98, i32 %99, i32 %102, %struct.virtio_gpu_box* %15, %struct.virtio_gpu_fence* %103)
  %105 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %13, align 8
  %106 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %14, align 8
  %111 = getelementptr inbounds %struct.virtio_gpu_fence, %struct.virtio_gpu_fence* %110, i32 0, i32 0
  %112 = call i32 @dma_resv_add_excl_fence(i32 %109, i32* %111)
  %113 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %14, align 8
  %114 = getelementptr inbounds %struct.virtio_gpu_fence, %struct.virtio_gpu_fence* %113, i32 0, i32 0
  %115 = call i32 @dma_fence_put(i32* %114)
  br label %116

116:                                              ; preds = %97, %66
  br label %117

117:                                              ; preds = %116, %84, %57
  %118 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %13, align 8
  %119 = call i32 @virtio_gpu_object_unreserve(%struct.virtio_gpu_object* %118)
  br label %120

120:                                              ; preds = %117, %47
  %121 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %122 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %121)
  %123 = load i32, i32* %16, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %120, %37
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #2

declare dso_local %struct.virtio_gpu_object* @gem_to_virtio_gpu_obj(%struct.drm_gem_object*) #2

declare dso_local i32 @virtio_gpu_object_reserve(%struct.virtio_gpu_object*, i32) #2

declare dso_local i32 @ttm_bo_validate(%struct.TYPE_4__*, i32*, %struct.ttm_operation_ctx*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @convert_to_hw_box(%struct.virtio_gpu_box*, i32*) #2

declare dso_local i32 @virtio_gpu_cmd_transfer_to_host_2d(%struct.virtio_gpu_device*, %struct.virtio_gpu_object*, i32, i32, i32, i32, i32, i32*) #2

declare dso_local %struct.virtio_gpu_fence* @virtio_gpu_fence_alloc(%struct.virtio_gpu_device*) #2

declare dso_local i32 @virtio_gpu_cmd_transfer_to_host_3d(%struct.virtio_gpu_device*, %struct.virtio_gpu_object*, i32, i32, i32, %struct.virtio_gpu_box*, %struct.virtio_gpu_fence*) #2

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
