; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fb.c_amdgpu_fbdev_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fb.c_amdgpu_fbdev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.amdgpu_fbdev = type { i32, %struct.amdgpu_framebuffer }
%struct.amdgpu_framebuffer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.amdgpu_fbdev*)* @amdgpu_fbdev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_fbdev_destroy(%struct.drm_device* %0, %struct.amdgpu_fbdev* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.amdgpu_fbdev*, align 8
  %5 = alloca %struct.amdgpu_framebuffer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.amdgpu_fbdev* %1, %struct.amdgpu_fbdev** %4, align 8
  %6 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %4, align 8
  %7 = getelementptr inbounds %struct.amdgpu_fbdev, %struct.amdgpu_fbdev* %6, i32 0, i32 1
  store %struct.amdgpu_framebuffer* %7, %struct.amdgpu_framebuffer** %5, align 8
  %8 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_fbdev, %struct.amdgpu_fbdev* %8, i32 0, i32 0
  %10 = call i32 @drm_fb_helper_unregister_fbi(i32* %9)
  %11 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_framebuffer, %struct.amdgpu_framebuffer* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32**, i32*** %13, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_framebuffer, %struct.amdgpu_framebuffer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @amdgpufb_destroy_pinned_object(i32* %24)
  %26 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %5, align 8
  %27 = getelementptr inbounds %struct.amdgpu_framebuffer, %struct.amdgpu_framebuffer* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %5, align 8
  %32 = getelementptr inbounds %struct.amdgpu_framebuffer, %struct.amdgpu_framebuffer* %31, i32 0, i32 0
  %33 = call i32 @drm_framebuffer_unregister_private(%struct.TYPE_3__* %32)
  %34 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %5, align 8
  %35 = getelementptr inbounds %struct.amdgpu_framebuffer, %struct.amdgpu_framebuffer* %34, i32 0, i32 0
  %36 = call i32 @drm_framebuffer_cleanup(%struct.TYPE_3__* %35)
  br label %37

37:                                               ; preds = %18, %2
  %38 = load %struct.amdgpu_fbdev*, %struct.amdgpu_fbdev** %4, align 8
  %39 = getelementptr inbounds %struct.amdgpu_fbdev, %struct.amdgpu_fbdev* %38, i32 0, i32 0
  %40 = call i32 @drm_fb_helper_fini(i32* %39)
  ret i32 0
}

declare dso_local i32 @drm_fb_helper_unregister_fbi(i32*) #1

declare dso_local i32 @amdgpufb_destroy_pinned_object(i32*) #1

declare dso_local i32 @drm_framebuffer_unregister_private(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_framebuffer_cleanup(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_fb_helper_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
