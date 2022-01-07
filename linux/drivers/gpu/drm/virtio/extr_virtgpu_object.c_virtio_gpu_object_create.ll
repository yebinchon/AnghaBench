; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_object.c_virtio_gpu_object_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_object.c_virtio_gpu_object_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_gpu_device = type { %struct.virtio_gpu_fence_driver, %struct.TYPE_2__, i32 }
%struct.virtio_gpu_fence_driver = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.virtio_gpu_object_params = type { i32, i64, i32 }
%struct.virtio_gpu_object = type { i32, i32, i32, i32, i32 }
%struct.virtio_gpu_fence = type { i32 }
%struct.list_head = type { i32 }
%struct.ttm_validate_buffer = type { i32, i32* }
%struct.ww_acquire_ctx = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i32 0, align 4
@virtio_gpu_ttm_bo_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtio_gpu_object_create(%struct.virtio_gpu_device* %0, %struct.virtio_gpu_object_params* %1, %struct.virtio_gpu_object** %2, %struct.virtio_gpu_fence* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtio_gpu_device*, align 8
  %7 = alloca %struct.virtio_gpu_object_params*, align 8
  %8 = alloca %struct.virtio_gpu_object**, align 8
  %9 = alloca %struct.virtio_gpu_fence*, align 8
  %10 = alloca %struct.virtio_gpu_object*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.virtio_gpu_fence_driver*, align 8
  %14 = alloca %struct.list_head, align 4
  %15 = alloca %struct.ttm_validate_buffer, align 8
  %16 = alloca %struct.ww_acquire_ctx, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.virtio_gpu_device* %0, %struct.virtio_gpu_device** %6, align 8
  store %struct.virtio_gpu_object_params* %1, %struct.virtio_gpu_object_params** %7, align 8
  store %struct.virtio_gpu_object** %2, %struct.virtio_gpu_object*** %8, align 8
  store %struct.virtio_gpu_fence* %3, %struct.virtio_gpu_fence** %9, align 8
  %19 = load %struct.virtio_gpu_object**, %struct.virtio_gpu_object*** %8, align 8
  store %struct.virtio_gpu_object* null, %struct.virtio_gpu_object** %19, align 8
  %20 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %21 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.virtio_gpu_object_params*, %struct.virtio_gpu_object_params** %7, align 8
  %24 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @ttm_bo_dma_acc_size(i32* %22, i32 %25, i32 20)
  store i64 %26, i64* %11, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.virtio_gpu_object* @kzalloc(i32 20, i32 %27)
  store %struct.virtio_gpu_object* %28, %struct.virtio_gpu_object** %10, align 8
  %29 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %10, align 8
  %30 = icmp eq %struct.virtio_gpu_object* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %163

34:                                               ; preds = %4
  %35 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %36 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %10, align 8
  %37 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %36, i32 0, i32 4
  %38 = call i32 @virtio_gpu_resource_id_get(%struct.virtio_gpu_device* %35, i32* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %10, align 8
  %43 = call i32 @kfree(%struct.virtio_gpu_object* %42)
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %163

45:                                               ; preds = %34
  %46 = load %struct.virtio_gpu_object_params*, %struct.virtio_gpu_object_params** %7, align 8
  %47 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = call i32 @roundup(i32 %48, i32 %49)
  %51 = load %struct.virtio_gpu_object_params*, %struct.virtio_gpu_object_params** %7, align 8
  %52 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %54 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %10, align 8
  %57 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %56, i32 0, i32 1
  %58 = load %struct.virtio_gpu_object_params*, %struct.virtio_gpu_object_params** %7, align 8
  %59 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @drm_gem_object_init(i32 %55, i32* %57, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %45
  %65 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %66 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %10, align 8
  %67 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @virtio_gpu_resource_id_put(%struct.virtio_gpu_device* %65, i32 %68)
  %70 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %10, align 8
  %71 = call i32 @kfree(%struct.virtio_gpu_object* %70)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %163

73:                                               ; preds = %45
  %74 = load %struct.virtio_gpu_object_params*, %struct.virtio_gpu_object_params** %7, align 8
  %75 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %10, align 8
  %78 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.virtio_gpu_object_params*, %struct.virtio_gpu_object_params** %7, align 8
  %80 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %73
  %84 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %85 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %10, align 8
  %86 = load %struct.virtio_gpu_object_params*, %struct.virtio_gpu_object_params** %7, align 8
  %87 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %9, align 8
  %88 = call i32 @virtio_gpu_cmd_resource_create_3d(%struct.virtio_gpu_device* %84, %struct.virtio_gpu_object* %85, %struct.virtio_gpu_object_params* %86, %struct.virtio_gpu_fence* %87)
  br label %95

89:                                               ; preds = %73
  %90 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %91 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %10, align 8
  %92 = load %struct.virtio_gpu_object_params*, %struct.virtio_gpu_object_params** %7, align 8
  %93 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %9, align 8
  %94 = call i32 @virtio_gpu_cmd_create_resource(%struct.virtio_gpu_device* %90, %struct.virtio_gpu_object* %91, %struct.virtio_gpu_object_params* %92, %struct.virtio_gpu_fence* %93)
  br label %95

95:                                               ; preds = %89, %83
  %96 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %10, align 8
  %97 = call i32 @virtio_gpu_init_ttm_placement(%struct.virtio_gpu_object* %96)
  %98 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %99 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %10, align 8
  %102 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %101, i32 0, i32 0
  %103 = load %struct.virtio_gpu_object_params*, %struct.virtio_gpu_object_params** %7, align 8
  %104 = getelementptr inbounds %struct.virtio_gpu_object_params, %struct.virtio_gpu_object_params* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ttm_bo_type_device, align 4
  %107 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %10, align 8
  %108 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %107, i32 0, i32 2
  %109 = load i64, i64* %11, align 8
  %110 = call i32 @ttm_bo_init(i32* %100, i32* %102, i32 %105, i32 %106, i32* %108, i32 0, i32 1, i64 %109, i32* null, i32* null, i32* @virtio_gpu_ttm_bo_destroy)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %95
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %5, align 4
  br label %163

115:                                              ; preds = %95
  %116 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %9, align 8
  %117 = icmp ne %struct.virtio_gpu_fence* %116, null
  br i1 %117, label %118, label %160

118:                                              ; preds = %115
  %119 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %120 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %119, i32 0, i32 0
  store %struct.virtio_gpu_fence_driver* %120, %struct.virtio_gpu_fence_driver** %13, align 8
  %121 = call i32 @INIT_LIST_HEAD(%struct.list_head* %14)
  %122 = call i32 @memset(%struct.ttm_validate_buffer* %15, i32 0, i32 16)
  %123 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %10, align 8
  %124 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %123, i32 0, i32 1
  %125 = call i32 @drm_gem_object_get(i32* %124)
  %126 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %10, align 8
  %127 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %15, i32 0, i32 1
  store i32* %127, i32** %128, align 8
  %129 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %15, i32 0, i32 0
  %130 = call i32 @list_add(i32* %129, %struct.list_head* %14)
  %131 = call i32 @virtio_gpu_object_list_validate(%struct.ww_acquire_ctx* %16, %struct.list_head* %14)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %158

134:                                              ; preds = %118
  %135 = load %struct.virtio_gpu_fence_driver*, %struct.virtio_gpu_fence_driver** %13, align 8
  %136 = getelementptr inbounds %struct.virtio_gpu_fence_driver, %struct.virtio_gpu_fence_driver* %135, i32 0, i32 0
  %137 = load i64, i64* %17, align 8
  %138 = call i32 @spin_lock_irqsave(i32* %136, i64 %137)
  %139 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %9, align 8
  %140 = getelementptr inbounds %struct.virtio_gpu_fence, %struct.virtio_gpu_fence* %139, i32 0, i32 0
  %141 = call i32 @virtio_fence_signaled(i32* %140)
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %18, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %134
  %145 = load %struct.virtio_gpu_fence*, %struct.virtio_gpu_fence** %9, align 8
  %146 = getelementptr inbounds %struct.virtio_gpu_fence, %struct.virtio_gpu_fence* %145, i32 0, i32 0
  %147 = call i32 @ttm_eu_fence_buffer_objects(%struct.ww_acquire_ctx* %16, %struct.list_head* %14, i32* %146)
  br label %148

148:                                              ; preds = %144, %134
  %149 = load %struct.virtio_gpu_fence_driver*, %struct.virtio_gpu_fence_driver** %13, align 8
  %150 = getelementptr inbounds %struct.virtio_gpu_fence_driver, %struct.virtio_gpu_fence_driver* %149, i32 0, i32 0
  %151 = load i64, i64* %17, align 8
  %152 = call i32 @spin_unlock_irqrestore(i32* %150, i64 %151)
  %153 = load i32, i32* %18, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = call i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx* %16, %struct.list_head* %14)
  br label %157

157:                                              ; preds = %155, %148
  br label %158

158:                                              ; preds = %157, %118
  %159 = call i32 @virtio_gpu_unref_list(%struct.list_head* %14)
  br label %160

160:                                              ; preds = %158, %115
  %161 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %10, align 8
  %162 = load %struct.virtio_gpu_object**, %struct.virtio_gpu_object*** %8, align 8
  store %struct.virtio_gpu_object* %161, %struct.virtio_gpu_object** %162, align 8
  store i32 0, i32* %5, align 4
  br label %163

163:                                              ; preds = %160, %113, %64, %41, %31
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i64 @ttm_bo_dma_acc_size(i32*, i32, i32) #1

declare dso_local %struct.virtio_gpu_object* @kzalloc(i32, i32) #1

declare dso_local i32 @virtio_gpu_resource_id_get(%struct.virtio_gpu_device*, i32*) #1

declare dso_local i32 @kfree(%struct.virtio_gpu_object*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @drm_gem_object_init(i32, i32*, i32) #1

declare dso_local i32 @virtio_gpu_resource_id_put(%struct.virtio_gpu_device*, i32) #1

declare dso_local i32 @virtio_gpu_cmd_resource_create_3d(%struct.virtio_gpu_device*, %struct.virtio_gpu_object*, %struct.virtio_gpu_object_params*, %struct.virtio_gpu_fence*) #1

declare dso_local i32 @virtio_gpu_cmd_create_resource(%struct.virtio_gpu_device*, %struct.virtio_gpu_object*, %struct.virtio_gpu_object_params*, %struct.virtio_gpu_fence*) #1

declare dso_local i32 @virtio_gpu_init_ttm_placement(%struct.virtio_gpu_object*) #1

declare dso_local i32 @ttm_bo_init(i32*, i32*, i32, i32, i32*, i32, i32, i64, i32*, i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @memset(%struct.ttm_validate_buffer*, i32, i32) #1

declare dso_local i32 @drm_gem_object_get(i32*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @virtio_gpu_object_list_validate(%struct.ww_acquire_ctx*, %struct.list_head*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @virtio_fence_signaled(i32*) #1

declare dso_local i32 @ttm_eu_fence_buffer_objects(%struct.ww_acquire_ctx*, %struct.list_head*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx*, %struct.list_head*) #1

declare dso_local i32 @virtio_gpu_unref_list(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
