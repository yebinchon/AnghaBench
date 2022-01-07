; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_dmabuf.c_intel_vgpu_get_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_dmabuf.c_intel_vgpu_get_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_device }
%struct.drm_device = type { i32 }
%struct.intel_vgpu_dmabuf_obj = type { i32, i32, i32, i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.dma_buf = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"invalid dmabuf id:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"create gvt gem obj failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DRM_CLOEXEC = common dso_local global i32 0, align 4
@DRM_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"export dma-buf failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"create dma-buf fd failed ret:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"vgpu%d: dmabuf:%d, dmabuf ref %d, fd:%d\0A        file count: %ld, GEM ref: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_vgpu_get_dmabuf(%struct.intel_vgpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.intel_vgpu_dmabuf_obj*, align 8
  %8 = alloca %struct.drm_i915_gem_object*, align 8
  %9 = alloca %struct.dma_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %13 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.drm_device* %17, %struct.drm_device** %6, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %19 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.intel_vgpu_dmabuf_obj* @pick_dmabuf_by_num(%struct.intel_vgpu* %21, i32 %22)
  store %struct.intel_vgpu_dmabuf_obj* %23, %struct.intel_vgpu_dmabuf_obj** %7, align 8
  %24 = load %struct.intel_vgpu_dmabuf_obj*, %struct.intel_vgpu_dmabuf_obj** %7, align 8
  %25 = icmp eq %struct.intel_vgpu_dmabuf_obj* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  br label %118

31:                                               ; preds = %2
  %32 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %33 = load %struct.intel_vgpu_dmabuf_obj*, %struct.intel_vgpu_dmabuf_obj** %7, align 8
  %34 = getelementptr inbounds %struct.intel_vgpu_dmabuf_obj, %struct.intel_vgpu_dmabuf_obj* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.drm_i915_gem_object* @vgpu_create_gem(%struct.drm_device* %32, i32 %35)
  store %struct.drm_i915_gem_object* %36, %struct.drm_i915_gem_object** %8, align 8
  %37 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %38 = icmp eq %struct.drm_i915_gem_object* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %118

43:                                               ; preds = %31
  %44 = load %struct.intel_vgpu_dmabuf_obj*, %struct.intel_vgpu_dmabuf_obj** %7, align 8
  %45 = getelementptr inbounds %struct.intel_vgpu_dmabuf_obj, %struct.intel_vgpu_dmabuf_obj* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %48 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %50 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %49, i32 0, i32 0
  %51 = load i32, i32* @DRM_CLOEXEC, align 4
  %52 = load i32, i32* @DRM_RDWR, align 4
  %53 = or i32 %51, %52
  %54 = call %struct.dma_buf* @i915_gem_prime_export(%struct.TYPE_6__* %50, i32 %53)
  store %struct.dma_buf* %54, %struct.dma_buf** %9, align 8
  %55 = load %struct.dma_buf*, %struct.dma_buf** %9, align 8
  %56 = call i64 @IS_ERR(%struct.dma_buf* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %43
  %59 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.dma_buf*, %struct.dma_buf** %9, align 8
  %61 = call i32 @PTR_ERR(%struct.dma_buf* %60)
  store i32 %61, i32* %11, align 4
  br label %115

62:                                               ; preds = %43
  %63 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %64 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %63)
  %65 = load %struct.dma_buf*, %struct.dma_buf** %9, align 8
  %66 = load i32, i32* @DRM_CLOEXEC, align 4
  %67 = load i32, i32* @DRM_RDWR, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @dma_buf_fd(%struct.dma_buf* %65, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32, i32* %11, align 4
  %74 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %112

75:                                               ; preds = %62
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %10, align 4
  %77 = load %struct.intel_vgpu_dmabuf_obj*, %struct.intel_vgpu_dmabuf_obj** %7, align 8
  %78 = call i32 @dmabuf_obj_get(%struct.intel_vgpu_dmabuf_obj* %77)
  %79 = load %struct.intel_vgpu_dmabuf_obj*, %struct.intel_vgpu_dmabuf_obj** %7, align 8
  %80 = getelementptr inbounds %struct.intel_vgpu_dmabuf_obj, %struct.intel_vgpu_dmabuf_obj* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.intel_vgpu_dmabuf_obj*, %struct.intel_vgpu_dmabuf_obj** %7, align 8
  %85 = getelementptr inbounds %struct.intel_vgpu_dmabuf_obj, %struct.intel_vgpu_dmabuf_obj* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  %86 = load %struct.intel_vgpu_dmabuf_obj*, %struct.intel_vgpu_dmabuf_obj** %7, align 8
  %87 = call i32 @dmabuf_obj_put(%struct.intel_vgpu_dmabuf_obj* %86)
  br label %88

88:                                               ; preds = %83, %75
  %89 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %90 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %93 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.intel_vgpu_dmabuf_obj*, %struct.intel_vgpu_dmabuf_obj** %7, align 8
  %96 = getelementptr inbounds %struct.intel_vgpu_dmabuf_obj, %struct.intel_vgpu_dmabuf_obj* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.intel_vgpu_dmabuf_obj*, %struct.intel_vgpu_dmabuf_obj** %7, align 8
  %99 = getelementptr inbounds %struct.intel_vgpu_dmabuf_obj, %struct.intel_vgpu_dmabuf_obj* %98, i32 0, i32 1
  %100 = call i32 @kref_read(i32* %99)
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.dma_buf*, %struct.dma_buf** %9, align 8
  %103 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @file_count(i32 %104)
  %106 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %107 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = call i32 @kref_read(i32* %108)
  %110 = call i32 @gvt_dbg_dpy(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i32 %94, i32 %97, i32 %100, i32 %101, i32 %105, i32 %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %3, align 4
  br label %123

112:                                              ; preds = %72
  %113 = load %struct.dma_buf*, %struct.dma_buf** %9, align 8
  %114 = call i32 @dma_buf_put(%struct.dma_buf* %113)
  br label %115

115:                                              ; preds = %112, %58
  %116 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %117 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %116)
  br label %118

118:                                              ; preds = %115, %39, %26
  %119 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %120 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %119, i32 0, i32 0
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %118, %88
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.intel_vgpu_dmabuf_obj* @pick_dmabuf_by_num(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*, ...) #1

declare dso_local %struct.drm_i915_gem_object* @vgpu_create_gem(%struct.drm_device*, i32) #1

declare dso_local %struct.dma_buf* @i915_gem_prime_export(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_buf*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_buf*) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @dma_buf_fd(%struct.dma_buf*, i32) #1

declare dso_local i32 @dmabuf_obj_get(%struct.intel_vgpu_dmabuf_obj*) #1

declare dso_local i32 @dmabuf_obj_put(%struct.intel_vgpu_dmabuf_obj*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gvt_dbg_dpy(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @file_count(i32) #1

declare dso_local i32 @dma_buf_put(%struct.dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
