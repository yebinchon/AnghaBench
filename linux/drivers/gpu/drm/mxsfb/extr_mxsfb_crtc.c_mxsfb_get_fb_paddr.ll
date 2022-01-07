; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_crtc.c_mxsfb_get_fb_paddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_crtc.c_mxsfb_get_fb_paddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxsfb_drm_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32 }
%struct.drm_gem_cma_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxsfb_drm_private*)* @mxsfb_get_fb_paddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxsfb_get_fb_paddr(%struct.mxsfb_drm_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxsfb_drm_private*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_gem_cma_object*, align 8
  store %struct.mxsfb_drm_private* %0, %struct.mxsfb_drm_private** %3, align 8
  %6 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %3, align 8
  %7 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  store %struct.drm_framebuffer* %12, %struct.drm_framebuffer** %4, align 8
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %14 = icmp ne %struct.drm_framebuffer* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %18 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %17, i32 0)
  store %struct.drm_gem_cma_object* %18, %struct.drm_gem_cma_object** %5, align 8
  %19 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %5, align 8
  %20 = icmp ne %struct.drm_gem_cma_object* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %26

22:                                               ; preds = %16
  %23 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %5, align 8
  %24 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %21, %15
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
