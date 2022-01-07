; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_ioctl.c_virtio_gpu_resource_create_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_ioctl.c_virtio_gpu_resource_create_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.virtio_gpu_device* }
%struct.virtio_gpu_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_virtgpu_resource_create = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.virtio_gpu_fence = type { i32 }
%struct.virtio_gpu_object = type { i32, %struct.drm_gem_object }
%struct.drm_gem_object = type { i32 }
%struct.virtio_gpu_object_params = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @virtio_gpu_resource_create_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_gpu_resource_create_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.virtio_gpu_device*, align 8
  %9 = alloca %struct.drm_virtgpu_resource_create*, align 8
  %10 = alloca %struct.virtio_gpu_fence*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.virtio_gpu_object*, align 8
  %13 = alloca %struct.drm_gem_object*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.virtio_gpu_object_params, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %17, align 8
  store %struct.virtio_gpu_device* %18, %struct.virtio_gpu_device** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.drm_virtgpu_resource_create*
  store %struct.drm_virtgpu_resource_create* %20, %struct.drm_virtgpu_resource_create** %9, align 8
  store i32 0, i32* %14, align 4
  %21 = bitcast %struct.virtio_gpu_object_params* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 56, i1 false)
  %22 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %8, align 8
  %23 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %3
  %27 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %28 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %169

34:                                               ; preds = %26
  %35 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %36 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %169

42:                                               ; preds = %34
  %43 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %44 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %169

50:                                               ; preds = %42
  %51 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %52 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 2
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %169

58:                                               ; preds = %50
  %59 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %60 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %169

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %3
  %68 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %69 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %68, i32 0, i32 12
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %15, i32 0, i32 11
  store i32 %70, i32* %71, align 8
  %72 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %73 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %15, i32 0, i32 10
  store i32 %74, i32* %75, align 4
  %76 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %77 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %15, i32 0, i32 9
  store i32 %78, i32* %79, align 8
  %80 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %81 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %15, i32 0, i32 0
  store i64 %82, i64* %83, align 8
  %84 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %8, align 8
  %85 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %118

88:                                               ; preds = %67
  %89 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %15, i32 0, i32 1
  store i32 1, i32* %89, align 8
  %90 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %91 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %15, i32 0, i32 2
  store i32 %92, i32* %93, align 4
  %94 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %95 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %15, i32 0, i32 8
  store i32 %96, i32* %97, align 4
  %98 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %99 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %15, i32 0, i32 3
  store i32 %100, i32* %101, align 8
  %102 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %103 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %15, i32 0, i32 4
  store i32 %104, i32* %105, align 4
  %106 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %107 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %15, i32 0, i32 5
  store i32 %108, i32* %109, align 8
  %110 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %111 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %15, i32 0, i32 6
  store i32 %112, i32* %113, align 4
  %114 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %115 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %15, i32 0, i32 7
  store i32 %116, i32* %117, align 8
  br label %118

118:                                              ; preds = %88, %67
  %119 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %15, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i64, i64* @PAGE_SIZE, align 8
  %124 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %15, i32 0, i32 0
  store i64 %123, i64* %124, align 8
  br label %125

125:                                              ; preds = %122, %118
  %126 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %8, align 8
  %127 = call %struct.virtio_gpu_fence* @virtio_gpu_fence_alloc(%struct.virtio_gpu_device* %126)
  store %struct.virtio_gpu_fence* %127, %struct.virtio_gpu_fence** %10, align 8
  %128 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %10, align 8
  %129 = icmp ne %struct.virtio_gpu_fence* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %169

133:                                              ; preds = %125
  %134 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %135 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %10, align 8
  %136 = call %struct.virtio_gpu_object* @virtio_gpu_alloc_object(%struct.drm_device* %134, %struct.virtio_gpu_object_params* %15, %struct.virtio_gpu_fence* %135)
  store %struct.virtio_gpu_object* %136, %struct.virtio_gpu_object** %12, align 8
  %137 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %10, align 8
  %138 = getelementptr inbounds %struct.virtio_gpu_fence, %struct.virtio_gpu_fence* %137, i32 0, i32 0
  %139 = call i32 @dma_fence_put(i32* %138)
  %140 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %12, align 8
  %141 = call i64 @IS_ERR(%struct.virtio_gpu_object* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %133
  %144 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %12, align 8
  %145 = call i32 @PTR_ERR(%struct.virtio_gpu_object* %144)
  store i32 %145, i32* %4, align 4
  br label %169

146:                                              ; preds = %133
  %147 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %12, align 8
  %148 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %147, i32 0, i32 1
  store %struct.drm_gem_object* %148, %struct.drm_gem_object** %13, align 8
  %149 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %150 = load %struct.drm_gem_object*, %struct.drm_gem_object** %13, align 8
  %151 = call i32 @drm_gem_handle_create(%struct.drm_file* %149, %struct.drm_gem_object* %150, i32* %14)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %146
  %155 = load %struct.drm_gem_object*, %struct.drm_gem_object** %13, align 8
  %156 = call i32 @drm_gem_object_release(%struct.drm_gem_object* %155)
  %157 = load i32, i32* %11, align 4
  store i32 %157, i32* %4, align 4
  br label %169

158:                                              ; preds = %146
  %159 = load %struct.drm_gem_object*, %struct.drm_gem_object** %13, align 8
  %160 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %159)
  %161 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %12, align 8
  %162 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %165 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %164, i32 0, i32 7
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.drm_virtgpu_resource_create*, %struct.drm_virtgpu_resource_create** %9, align 8
  %168 = getelementptr inbounds %struct.drm_virtgpu_resource_create, %struct.drm_virtgpu_resource_create* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 8
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %158, %154, %143, %130, %63, %55, %47, %39, %31
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.virtio_gpu_fence* @virtio_gpu_fence_alloc(%struct.virtio_gpu_device*) #2

declare dso_local %struct.virtio_gpu_object* @virtio_gpu_alloc_object(%struct.drm_device*, %struct.virtio_gpu_object_params*, %struct.virtio_gpu_fence*) #2

declare dso_local i32 @dma_fence_put(i32*) #2

declare dso_local i64 @IS_ERR(%struct.virtio_gpu_object*) #2

declare dso_local i32 @PTR_ERR(%struct.virtio_gpu_object*) #2

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #2

declare dso_local i32 @drm_gem_object_release(%struct.drm_gem_object*) #2

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
