; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fbdev.c_exynos_drm_fbdev_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fbdev.c_exynos_drm_fbdev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_fb_helper = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i64 }
%struct.exynos_drm_fbdev = type { %struct.exynos_drm_gem* }
%struct.exynos_drm_gem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_fb_helper*)* @exynos_drm_fbdev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_drm_fbdev_destroy(%struct.drm_device* %0, %struct.drm_fb_helper* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_fb_helper*, align 8
  %5 = alloca %struct.exynos_drm_fbdev*, align 8
  %6 = alloca %struct.exynos_drm_gem*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_fb_helper* %1, %struct.drm_fb_helper** %4, align 8
  %8 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %9 = call %struct.exynos_drm_fbdev* @to_exynos_fbdev(%struct.drm_fb_helper* %8)
  store %struct.exynos_drm_fbdev* %9, %struct.exynos_drm_fbdev** %5, align 8
  %10 = load %struct.exynos_drm_fbdev*, %struct.exynos_drm_fbdev** %5, align 8
  %11 = getelementptr inbounds %struct.exynos_drm_fbdev, %struct.exynos_drm_fbdev* %10, i32 0, i32 0
  %12 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %11, align 8
  store %struct.exynos_drm_gem* %12, %struct.exynos_drm_gem** %6, align 8
  %13 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %6, align 8
  %14 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @vunmap(i32 %15)
  %17 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %18 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %17, i32 0, i32 0
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %18, align 8
  %20 = icmp ne %struct.drm_framebuffer* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  %22 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %23 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %22, i32 0, i32 0
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  %25 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %30 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %29, i32 0, i32 0
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %30, align 8
  store %struct.drm_framebuffer* %31, %struct.drm_framebuffer** %7, align 8
  %32 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %33 = icmp ne %struct.drm_framebuffer* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %36 = call i32 @drm_framebuffer_remove(%struct.drm_framebuffer* %35)
  br label %37

37:                                               ; preds = %34, %28
  br label %38

38:                                               ; preds = %37, %21, %2
  %39 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %40 = call i32 @drm_fb_helper_unregister_fbi(%struct.drm_fb_helper* %39)
  %41 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %42 = call i32 @drm_fb_helper_fini(%struct.drm_fb_helper* %41)
  ret void
}

declare dso_local %struct.exynos_drm_fbdev* @to_exynos_fbdev(%struct.drm_fb_helper*) #1

declare dso_local i32 @vunmap(i32) #1

declare dso_local i32 @drm_framebuffer_remove(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_fb_helper_unregister_fbi(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.drm_fb_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
