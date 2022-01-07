; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_dmabuf.c_vgpu_gem_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_dmabuf.c_vgpu_gem_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_2__, %struct.intel_vgpu_fb_info* }
%struct.TYPE_2__ = type { i32* }
%struct.intel_vgpu_fb_info = type { %struct.intel_vgpu_dmabuf_obj* }
%struct.intel_vgpu_dmabuf_obj = type { %struct.intel_vgpu* }
%struct.intel_vgpu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_gem_object*)* @vgpu_gem_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgpu_gem_release(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca %struct.drm_i915_gem_object*, align 8
  %3 = alloca %struct.intel_vgpu_fb_info*, align 8
  %4 = alloca %struct.intel_vgpu_dmabuf_obj*, align 8
  %5 = alloca %struct.intel_vgpu*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %2, align 8
  %6 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %7 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %6, i32 0, i32 1
  %8 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %7, align 8
  store %struct.intel_vgpu_fb_info* %8, %struct.intel_vgpu_fb_info** %3, align 8
  %9 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %9, i32 0, i32 0
  %11 = load %struct.intel_vgpu_dmabuf_obj*, %struct.intel_vgpu_dmabuf_obj** %10, align 8
  store %struct.intel_vgpu_dmabuf_obj* %11, %struct.intel_vgpu_dmabuf_obj** %4, align 8
  %12 = load %struct.intel_vgpu_dmabuf_obj*, %struct.intel_vgpu_dmabuf_obj** %4, align 8
  %13 = getelementptr inbounds %struct.intel_vgpu_dmabuf_obj, %struct.intel_vgpu_dmabuf_obj* %12, i32 0, i32 0
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %13, align 8
  store %struct.intel_vgpu* %14, %struct.intel_vgpu** %5, align 8
  %15 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %16 = icmp ne %struct.intel_vgpu* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %19 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %22 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.intel_vgpu_dmabuf_obj*, %struct.intel_vgpu_dmabuf_obj** %4, align 8
  %25 = call i32 @dmabuf_obj_put(%struct.intel_vgpu_dmabuf_obj* %24)
  %26 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %27 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %31 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.intel_vgpu_dmabuf_obj*, %struct.intel_vgpu_dmabuf_obj** %4, align 8
  %34 = call i32 @dmabuf_obj_put(%struct.intel_vgpu_dmabuf_obj* %33)
  br label %35

35:                                               ; preds = %29, %17
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dmabuf_obj_put(%struct.intel_vgpu_dmabuf_obj*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
