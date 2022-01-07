; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_user_framebuffer_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_user_framebuffer_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_clip_rect = type { i32 }
%struct.drm_i915_gem_object = type { i32 }

@ORIGIN_DIRTYFB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)* @intel_user_framebuffer_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_user_framebuffer_dirty(%struct.drm_framebuffer* %0, %struct.drm_file* %1, i32 %2, i32 %3, %struct.drm_clip_rect* %4, i32 %5) #0 {
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_clip_rect*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.drm_clip_rect* %4, %struct.drm_clip_rect** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %15 = call %struct.drm_i915_gem_object* @intel_fb_obj(%struct.drm_framebuffer* %14)
  store %struct.drm_i915_gem_object* %15, %struct.drm_i915_gem_object** %13, align 8
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %17 = call i32 @i915_gem_object_flush_if_display(%struct.drm_i915_gem_object* %16)
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %19 = call i32 @to_intel_frontbuffer(%struct.drm_framebuffer* %18)
  %20 = load i32, i32* @ORIGIN_DIRTYFB, align 4
  %21 = call i32 @intel_frontbuffer_flush(i32 %19, i32 %20)
  ret i32 0
}

declare dso_local %struct.drm_i915_gem_object* @intel_fb_obj(%struct.drm_framebuffer*) #1

declare dso_local i32 @i915_gem_object_flush_if_display(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @intel_frontbuffer_flush(i32, i32) #1

declare dso_local i32 @to_intel_frontbuffer(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
