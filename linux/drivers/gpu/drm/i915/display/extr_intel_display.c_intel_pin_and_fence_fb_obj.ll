; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_pin_and_fence_fb_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_pin_and_fence_fb_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i64 }
%struct.drm_framebuffer = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.i915_ggtt_view = type { i32 }
%struct.drm_i915_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_gem_object = type { i32 }

@PIN_MAPPABLE = common dso_local global i32 0, align 4
@PLANE_HAS_FENCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i915_vma* @intel_pin_and_fence_fb_obj(%struct.drm_framebuffer* %0, %struct.i915_ggtt_view* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca %struct.i915_ggtt_view*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca %struct.drm_i915_gem_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.i915_vma*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %5, align 8
  store %struct.i915_ggtt_view* %1, %struct.i915_ggtt_view** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %18 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %9, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %21 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %10, align 8
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %23 = call %struct.drm_i915_gem_object* @intel_fb_obj(%struct.drm_framebuffer* %22)
  store %struct.drm_i915_gem_object* %23, %struct.drm_i915_gem_object** %11, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = call i32 @mutex_is_locked(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %32 = call i32 @intel_surf_alignment(%struct.drm_framebuffer* %31, i32 0)
  store i32 %32, i32* %15, align 4
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %34 = call i64 @intel_scanout_needs_vtd_wa(%struct.drm_i915_private* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 262144
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 262144, i32* %15, align 4
  br label %40

40:                                               ; preds = %39, %36, %4
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %42 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %41, i32 0, i32 0
  %43 = call i32 @intel_runtime_pm_get(i32* %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %45 = call i32 @i915_gem_object_lock(%struct.drm_i915_gem_object* %44)
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @atomic_inc(i32* %48)
  store i32 0, i32* %14, align 4
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %51 = call i64 @HAS_GMCH(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load i32, i32* @PIN_MAPPABLE, align 4
  %55 = load i32, i32* %14, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %53, %40
  %58 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %6, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call %struct.i915_vma* @i915_gem_object_pin_to_display_plane(%struct.drm_i915_gem_object* %58, i32 %59, %struct.i915_ggtt_view* %60, i32 %61)
  store %struct.i915_vma* %62, %struct.i915_vma** %13, align 8
  %63 = load %struct.i915_vma*, %struct.i915_vma** %13, align 8
  %64 = call i64 @IS_ERR(%struct.i915_vma* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %105

67:                                               ; preds = %57
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %67
  %71 = load %struct.i915_vma*, %struct.i915_vma** %13, align 8
  %72 = call i64 @i915_vma_is_map_and_fenceable(%struct.i915_vma* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %70
  %75 = load %struct.i915_vma*, %struct.i915_vma** %13, align 8
  %76 = call i32 @i915_vma_pin_fence(%struct.i915_vma* %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %81 = call i32 @INTEL_GEN(%struct.drm_i915_private* %80)
  %82 = icmp slt i32 %81, 4
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load %struct.i915_vma*, %struct.i915_vma** %13, align 8
  %85 = call i32 @i915_gem_object_unpin_from_display_plane(%struct.i915_vma* %84)
  %86 = load i32, i32* %16, align 4
  %87 = call %struct.i915_vma* @ERR_PTR(i32 %86)
  store %struct.i915_vma* %87, %struct.i915_vma** %13, align 8
  br label %105

88:                                               ; preds = %79, %74
  %89 = load i32, i32* %16, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load %struct.i915_vma*, %struct.i915_vma** %13, align 8
  %93 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i64, i64* @PLANE_HAS_FENCE, align 8
  %98 = load i64*, i64** %8, align 8
  %99 = load i64, i64* %98, align 8
  %100 = or i64 %99, %97
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %96, %91, %88
  br label %102

102:                                              ; preds = %101, %70, %67
  %103 = load %struct.i915_vma*, %struct.i915_vma** %13, align 8
  %104 = call i32 @i915_vma_get(%struct.i915_vma* %103)
  br label %105

105:                                              ; preds = %102, %83, %66
  %106 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %107 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = call i32 @atomic_dec(i32* %108)
  %110 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %111 = call i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object* %110)
  %112 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %113 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %112, i32 0, i32 0
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @intel_runtime_pm_put(i32* %113, i32 %114)
  %116 = load %struct.i915_vma*, %struct.i915_vma** %13, align 8
  ret %struct.i915_vma* %116
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.drm_i915_gem_object* @intel_fb_obj(%struct.drm_framebuffer*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @intel_surf_alignment(%struct.drm_framebuffer*, i32) #1

declare dso_local i64 @intel_scanout_needs_vtd_wa(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_runtime_pm_get(i32*) #1

declare dso_local i32 @i915_gem_object_lock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local %struct.i915_vma* @i915_gem_object_pin_to_display_plane(%struct.drm_i915_gem_object*, i32, %struct.i915_ggtt_view*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i64 @i915_vma_is_map_and_fenceable(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_pin_fence(%struct.i915_vma*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_object_unpin_from_display_plane(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @ERR_PTR(i32) #1

declare dso_local i32 @i915_vma_get(%struct.i915_vma*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @intel_runtime_pm_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
