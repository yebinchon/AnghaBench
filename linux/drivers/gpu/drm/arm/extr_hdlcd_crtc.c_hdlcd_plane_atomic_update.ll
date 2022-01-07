; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_crtc.c_hdlcd_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_crtc.c_hdlcd_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.hdlcd_drm_private* }
%struct.hdlcd_drm_private = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i64* }
%struct.drm_plane_state = type { i32 }

@HDLCD_REG_FB_LINE_LENGTH = common dso_local global i32 0, align 4
@HDLCD_REG_FB_LINE_PITCH = common dso_local global i32 0, align 4
@HDLCD_REG_FB_LINE_COUNT = common dso_local global i32 0, align 4
@HDLCD_REG_FB_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @hdlcd_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlcd_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca %struct.hdlcd_drm_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %9 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %10 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  store %struct.drm_framebuffer* %13, %struct.drm_framebuffer** %5, align 8
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %15 = icmp ne %struct.drm_framebuffer* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %19 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i64 @drm_rect_height(i32* %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %24 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %25 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i64 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer* %23, %struct.TYPE_4__* %26, i32 0)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %29 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %31, align 8
  store %struct.hdlcd_drm_private* %32, %struct.hdlcd_drm_private** %6, align 8
  %33 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  %34 = load i32, i32* @HDLCD_REG_FB_LINE_LENGTH, align 4
  %35 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %36 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %33, i32 %34, i64 %39)
  %41 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  %42 = load i32, i32* @HDLCD_REG_FB_LINE_PITCH, align 4
  %43 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %44 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %41, i32 %42, i64 %47)
  %49 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  %50 = load i32, i32* @HDLCD_REG_FB_LINE_COUNT, align 4
  %51 = load i64, i64* %7, align 8
  %52 = sub nsw i64 %51, 1
  %53 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %49, i32 %50, i64 %52)
  %54 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  %55 = load i32, i32* @HDLCD_REG_FB_BASE, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %54, i32 %55, i64 %56)
  br label %58

58:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @drm_rect_height(i32*) #1

declare dso_local i64 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @hdlcd_write(%struct.hdlcd_drm_private*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
