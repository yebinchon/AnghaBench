; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psb_fbdev_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psb_fbdev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.psb_fbdev = type { i32, %struct.psb_framebuffer }
%struct.psb_framebuffer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.psb_fbdev*)* @psb_fbdev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_fbdev_destroy(%struct.drm_device* %0, %struct.psb_fbdev* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.psb_fbdev*, align 8
  %5 = alloca %struct.psb_framebuffer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.psb_fbdev* %1, %struct.psb_fbdev** %4, align 8
  %6 = load %struct.psb_fbdev*, %struct.psb_fbdev** %4, align 8
  %7 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %6, i32 0, i32 1
  store %struct.psb_framebuffer* %7, %struct.psb_framebuffer** %5, align 8
  %8 = load %struct.psb_fbdev*, %struct.psb_fbdev** %4, align 8
  %9 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %8, i32 0, i32 0
  %10 = call i32 @drm_fb_helper_unregister_fbi(i32* %9)
  %11 = load %struct.psb_fbdev*, %struct.psb_fbdev** %4, align 8
  %12 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %11, i32 0, i32 0
  %13 = call i32 @drm_fb_helper_fini(i32* %12)
  %14 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %5, align 8
  %15 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %14, i32 0, i32 0
  %16 = call i32 @drm_framebuffer_unregister_private(%struct.TYPE_3__* %15)
  %17 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %5, align 8
  %18 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %17, i32 0, i32 0
  %19 = call i32 @drm_framebuffer_cleanup(%struct.TYPE_3__* %18)
  %20 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %5, align 8
  %21 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.psb_framebuffer*, %struct.psb_framebuffer** %5, align 8
  %29 = getelementptr inbounds %struct.psb_framebuffer, %struct.psb_framebuffer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @drm_gem_object_put_unlocked(i64 %33)
  br label %35

35:                                               ; preds = %27, %2
  ret i32 0
}

declare dso_local i32 @drm_fb_helper_unregister_fbi(i32*) #1

declare dso_local i32 @drm_fb_helper_fini(i32*) #1

declare dso_local i32 @drm_framebuffer_unregister_private(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_framebuffer_cleanup(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
