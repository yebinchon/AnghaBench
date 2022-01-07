; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_cma_helper.c_drm_fb_cma_get_gem_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_cma_helper.c_drm_fb_cma_get_gem_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_cma_object = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_gem_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_gem_cma_object*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.drm_gem_object* @drm_gem_fb_get_obj(%struct.drm_framebuffer* %7, i32 %8)
  store %struct.drm_gem_object* %9, %struct.drm_gem_object** %6, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %11 = icmp ne %struct.drm_gem_object* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.drm_gem_cma_object* null, %struct.drm_gem_cma_object** %3, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %15 = call %struct.drm_gem_cma_object* @to_drm_gem_cma_obj(%struct.drm_gem_object* %14)
  store %struct.drm_gem_cma_object* %15, %struct.drm_gem_cma_object** %3, align 8
  br label %16

16:                                               ; preds = %13, %12
  %17 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  ret %struct.drm_gem_cma_object* %17
}

declare dso_local %struct.drm_gem_object* @drm_gem_fb_get_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local %struct.drm_gem_cma_object* @to_drm_gem_cma_obj(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
