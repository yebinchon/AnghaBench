; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_framebuffer_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_framebuffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32 }
%struct.intel_framebuffer = type { %struct.drm_framebuffer }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_framebuffer* @intel_framebuffer_create(%struct.drm_i915_gem_object* %0, %struct.drm_mode_fb_cmd2* %1) #0 {
  %3 = alloca %struct.drm_framebuffer*, align 8
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %6 = alloca %struct.intel_framebuffer*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %4, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.intel_framebuffer* @kzalloc(i32 4, i32 %8)
  store %struct.intel_framebuffer* %9, %struct.intel_framebuffer** %6, align 8
  %10 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %11 = icmp ne %struct.intel_framebuffer* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.drm_framebuffer* @ERR_PTR(i32 %14)
  store %struct.drm_framebuffer* %15, %struct.drm_framebuffer** %3, align 8
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %19 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %5, align 8
  %20 = call i32 @intel_framebuffer_init(%struct.intel_framebuffer* %17, %struct.drm_i915_gem_object* %18, %struct.drm_mode_fb_cmd2* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %27

24:                                               ; preds = %16
  %25 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %26 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %25, i32 0, i32 0
  store %struct.drm_framebuffer* %26, %struct.drm_framebuffer** %3, align 8
  br label %32

27:                                               ; preds = %23
  %28 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %6, align 8
  %29 = call i32 @kfree(%struct.intel_framebuffer* %28)
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.drm_framebuffer* @ERR_PTR(i32 %30)
  store %struct.drm_framebuffer* %31, %struct.drm_framebuffer** %3, align 8
  br label %32

32:                                               ; preds = %27, %24, %12
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  ret %struct.drm_framebuffer* %33
}

declare dso_local %struct.intel_framebuffer* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local i32 @intel_framebuffer_init(%struct.intel_framebuffer*, %struct.drm_i915_gem_object*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @kfree(%struct.intel_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
