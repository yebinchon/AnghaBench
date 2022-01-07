; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fb.c_radeon_fbdev_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fb.c_radeon_fbdev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.radeon_fbdev = type { i32, %struct.drm_framebuffer }
%struct.drm_framebuffer = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.radeon_fbdev*)* @radeon_fbdev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_fbdev_destroy(%struct.drm_device* %0, %struct.radeon_fbdev* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_fbdev*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.radeon_fbdev* %1, %struct.radeon_fbdev** %4, align 8
  %6 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %7 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %6, i32 0, i32 1
  store %struct.drm_framebuffer* %7, %struct.drm_framebuffer** %5, align 8
  %8 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %9 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %8, i32 0, i32 0
  %10 = call i32 @drm_fb_helper_unregister_fbi(i32* %9)
  %11 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %12 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %19 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @radeonfb_destroy_pinned_object(i32* %22)
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %25 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %29 = call i32 @drm_framebuffer_unregister_private(%struct.drm_framebuffer* %28)
  %30 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %31 = call i32 @drm_framebuffer_cleanup(%struct.drm_framebuffer* %30)
  br label %32

32:                                               ; preds = %17, %2
  %33 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %4, align 8
  %34 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %33, i32 0, i32 0
  %35 = call i32 @drm_fb_helper_fini(i32* %34)
  ret i32 0
}

declare dso_local i32 @drm_fb_helper_unregister_fbi(i32*) #1

declare dso_local i32 @radeonfb_destroy_pinned_object(i32*) #1

declare dso_local i32 @drm_framebuffer_unregister_private(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_framebuffer_cleanup(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_fb_helper_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
