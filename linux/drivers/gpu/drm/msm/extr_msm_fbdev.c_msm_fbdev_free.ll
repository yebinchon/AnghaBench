; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fbdev.c_msm_fbdev_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fbdev.c_msm_fbdev_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.drm_fb_helper* }
%struct.drm_fb_helper = type { i32 }
%struct.msm_fbdev = type { i64 }
%struct.drm_gem_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_fbdev_free(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.msm_drm_private*, align 8
  %4 = alloca %struct.drm_fb_helper*, align 8
  %5 = alloca %struct.msm_fbdev*, align 8
  %6 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  store %struct.msm_drm_private* %9, %struct.msm_drm_private** %3, align 8
  %10 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %11 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %10, i32 0, i32 0
  %12 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %11, align 8
  store %struct.drm_fb_helper* %12, %struct.drm_fb_helper** %4, align 8
  %13 = call i32 (...) @DBG()
  %14 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %15 = call i32 @drm_fb_helper_unregister_fbi(%struct.drm_fb_helper* %14)
  %16 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %17 = call i32 @drm_fb_helper_fini(%struct.drm_fb_helper* %16)
  %18 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %19 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %18, i32 0, i32 0
  %20 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %19, align 8
  %21 = call %struct.msm_fbdev* @to_msm_fbdev(%struct.drm_fb_helper* %20)
  store %struct.msm_fbdev* %21, %struct.msm_fbdev** %5, align 8
  %22 = load %struct.msm_fbdev*, %struct.msm_fbdev** %5, align 8
  %23 = getelementptr inbounds %struct.msm_fbdev, %struct.msm_fbdev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load %struct.msm_fbdev*, %struct.msm_fbdev** %5, align 8
  %28 = getelementptr inbounds %struct.msm_fbdev, %struct.msm_fbdev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.drm_gem_object* @msm_framebuffer_bo(i64 %29, i32 0)
  store %struct.drm_gem_object* %30, %struct.drm_gem_object** %6, align 8
  %31 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %32 = call i32 @msm_gem_put_vaddr(%struct.drm_gem_object* %31)
  %33 = load %struct.msm_fbdev*, %struct.msm_fbdev** %5, align 8
  %34 = getelementptr inbounds %struct.msm_fbdev, %struct.msm_fbdev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @drm_framebuffer_remove(i64 %35)
  br label %37

37:                                               ; preds = %26, %1
  %38 = load %struct.msm_fbdev*, %struct.msm_fbdev** %5, align 8
  %39 = call i32 @kfree(%struct.msm_fbdev* %38)
  %40 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %41 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %40, i32 0, i32 0
  store %struct.drm_fb_helper* null, %struct.drm_fb_helper** %41, align 8
  ret void
}

declare dso_local i32 @DBG(...) #1

declare dso_local i32 @drm_fb_helper_unregister_fbi(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.drm_fb_helper*) #1

declare dso_local %struct.msm_fbdev* @to_msm_fbdev(%struct.drm_fb_helper*) #1

declare dso_local %struct.drm_gem_object* @msm_framebuffer_bo(i64, i32) #1

declare dso_local i32 @msm_gem_put_vaddr(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_framebuffer_remove(i64) #1

declare dso_local i32 @kfree(%struct.msm_fbdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
