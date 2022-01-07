; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_set_scanout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_set_scanout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32, %struct.TYPE_4__, %struct.drm_device* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_device = type { %struct.tilcdc_drm_private* }
%struct.tilcdc_drm_private = type { i32 }
%struct.drm_framebuffer = type { i32*, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.drm_gem_cma_object = type { i32 }

@LCDC_DMA_FB_BASE_ADDR_0_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_framebuffer*)* @set_scanout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_scanout(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.tilcdc_drm_private*, align 8
  %7 = alloca %struct.drm_gem_cma_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %4, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 3
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %15, align 8
  store %struct.tilcdc_drm_private* %16, %struct.tilcdc_drm_private** %6, align 8
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %18 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %17, i32 0)
  store %struct.drm_gem_cma_object* %18, %struct.drm_gem_cma_object** %7, align 8
  %19 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %7, align 8
  %20 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %23 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %21, %26
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %29 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %32 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %30, %35
  %37 = add nsw i32 %27, %36
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %39 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %42 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %40, %47
  %49 = add nsw i32 %37, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %52 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %56 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %54, %59
  %61 = add nsw i32 %50, %60
  store i32 %61, i32* %9, align 4
  %62 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %6, align 8
  %63 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %2
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %66, %2
  %70 = load i32, i32* %9, align 4
  %71 = shl i32 %70, 32
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %10, align 4
  %74 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %75 = load i32, i32* @LCDC_DMA_FB_BASE_ADDR_0_REG, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @tilcdc_write64(%struct.drm_device* %74, i32 %75, i32 %76)
  ret void
}

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @tilcdc_write64(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
