; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_framebuffer_helper.c_drm_gem_fb_get_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_framebuffer_helper.c_drm_gem_fb_get_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_framebuffer = type { %struct.drm_gem_object** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @drm_gem_fb_get_obj(%struct.drm_framebuffer* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp uge i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %3, align 8
  br label %17

9:                                                ; preds = %2
  %10 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %11 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %10, i32 0, i32 0
  %12 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %12, i64 %14
  %16 = load %struct.drm_gem_object*, %struct.drm_gem_object** %15, align 8
  store %struct.drm_gem_object* %16, %struct.drm_gem_object** %3, align 8
  br label %17

17:                                               ; preds = %9, %8
  %18 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  ret %struct.drm_gem_object* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
