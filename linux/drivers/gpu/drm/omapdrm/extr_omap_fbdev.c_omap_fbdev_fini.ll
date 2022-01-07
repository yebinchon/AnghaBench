; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fbdev.c_omap_fbdev_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fbdev.c_omap_fbdev_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { %struct.drm_fb_helper* }
%struct.drm_fb_helper = type { i32 }
%struct.omap_fbdev = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_fbdev_fini(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.omap_drm_private*, align 8
  %4 = alloca %struct.drm_fb_helper*, align 8
  %5 = alloca %struct.omap_fbdev*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  store %struct.omap_drm_private* %8, %struct.omap_drm_private** %3, align 8
  %9 = load %struct.omap_drm_private*, %struct.omap_drm_private** %3, align 8
  %10 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %9, i32 0, i32 0
  %11 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %10, align 8
  store %struct.drm_fb_helper* %11, %struct.drm_fb_helper** %4, align 8
  %12 = call i32 (...) @DBG()
  %13 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %14 = icmp ne %struct.drm_fb_helper* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %18 = call i32 @drm_fb_helper_unregister_fbi(%struct.drm_fb_helper* %17)
  %19 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %20 = call i32 @drm_fb_helper_fini(%struct.drm_fb_helper* %19)
  %21 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %22 = call %struct.omap_fbdev* @to_omap_fbdev(%struct.drm_fb_helper* %21)
  store %struct.omap_fbdev* %22, %struct.omap_fbdev** %5, align 8
  %23 = load %struct.omap_fbdev*, %struct.omap_fbdev** %5, align 8
  %24 = getelementptr inbounds %struct.omap_fbdev, %struct.omap_fbdev* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.omap_fbdev*, %struct.omap_fbdev** %5, align 8
  %29 = getelementptr inbounds %struct.omap_fbdev, %struct.omap_fbdev* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @omap_gem_unpin(i64 %30)
  br label %32

32:                                               ; preds = %27, %16
  %33 = load %struct.omap_fbdev*, %struct.omap_fbdev** %5, align 8
  %34 = getelementptr inbounds %struct.omap_fbdev, %struct.omap_fbdev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.omap_fbdev*, %struct.omap_fbdev** %5, align 8
  %39 = getelementptr inbounds %struct.omap_fbdev, %struct.omap_fbdev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @drm_framebuffer_remove(i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.omap_fbdev*, %struct.omap_fbdev** %5, align 8
  %44 = call i32 @kfree(%struct.omap_fbdev* %43)
  %45 = load %struct.omap_drm_private*, %struct.omap_drm_private** %3, align 8
  %46 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %45, i32 0, i32 0
  store %struct.drm_fb_helper* null, %struct.drm_fb_helper** %46, align 8
  br label %47

47:                                               ; preds = %42, %15
  ret void
}

declare dso_local i32 @DBG(...) #1

declare dso_local i32 @drm_fb_helper_unregister_fbi(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.drm_fb_helper*) #1

declare dso_local %struct.omap_fbdev* @to_omap_fbdev(%struct.drm_fb_helper*) #1

declare dso_local i32 @omap_gem_unpin(i64) #1

declare dso_local i32 @drm_framebuffer_remove(i64) #1

declare dso_local i32 @kfree(%struct.omap_fbdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
