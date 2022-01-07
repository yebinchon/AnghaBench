; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_pin_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_pin_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.i915_vma*, i32, i32, %struct.TYPE_7__ }
%struct.i915_vma = type { i32 }
%struct.TYPE_7__ = type { %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { i32 }
%struct.intel_plane = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@PLANE_CURSOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_plane_state*)* @intel_plane_pin_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_plane_pin_fb(%struct.intel_plane_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_plane_state*, align 8
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.i915_vma*, align 8
  %8 = alloca %struct.drm_i915_gem_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %3, align 8
  %11 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %12 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.intel_plane* @to_intel_plane(i32 %14)
  store %struct.intel_plane* %15, %struct.intel_plane** %4, align 8
  %16 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %17 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.drm_i915_private* @to_i915(i32 %19)
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %5, align 8
  %21 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %22 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %6, align 8
  %25 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %26 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PLANE_CURSOR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %1
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %32 = call %struct.TYPE_8__* @INTEL_INFO(%struct.drm_i915_private* %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %39 = call %struct.drm_i915_gem_object* @intel_fb_obj(%struct.drm_framebuffer* %38)
  store %struct.drm_i915_gem_object* %39, %struct.drm_i915_gem_object** %8, align 8
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %41 = call i32 @intel_cursor_alignment(%struct.drm_i915_private* %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @i915_gem_object_attach_phys(%struct.drm_i915_gem_object* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %2, align 4
  br label %69

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %30, %1
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %52 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %53 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %52, i32 0, i32 2
  %54 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %55 = call i32 @intel_plane_uses_fence(%struct.intel_plane_state* %54)
  %56 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %57 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %56, i32 0, i32 1
  %58 = call %struct.i915_vma* @intel_pin_and_fence_fb_obj(%struct.drm_framebuffer* %51, i32* %53, i32 %55, i32* %57)
  store %struct.i915_vma* %58, %struct.i915_vma** %7, align 8
  %59 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %60 = call i64 @IS_ERR(%struct.i915_vma* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %64 = call i32 @PTR_ERR(%struct.i915_vma* %63)
  store i32 %64, i32* %2, align 4
  br label %69

65:                                               ; preds = %50
  %66 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %67 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %68 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %67, i32 0, i32 0
  store %struct.i915_vma* %66, %struct.i915_vma** %68, align 8
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %62, %47
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.TYPE_8__* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local %struct.drm_i915_gem_object* @intel_fb_obj(%struct.drm_framebuffer*) #1

declare dso_local i32 @intel_cursor_alignment(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_object_attach_phys(%struct.drm_i915_gem_object*, i32) #1

declare dso_local %struct.i915_vma* @intel_pin_and_fence_fb_obj(%struct.drm_framebuffer*, i32*, i32, i32*) #1

declare dso_local i32 @intel_plane_uses_fence(%struct.intel_plane_state*) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
