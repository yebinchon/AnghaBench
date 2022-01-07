; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_async_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_async_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_plane*, %struct.drm_device* }
%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_framebuffer* }
%struct.drm_device = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_pending_vblank_event = type { i32 }
%struct.vc4_dev = type { i32 }
%struct.vc4_async_flip_state = type { i32, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, %struct.drm_crtc*, %struct.drm_framebuffer* }
%struct.drm_gem_cma_object = type { i32 }
%struct.vc4_bo = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vc4_async_page_flip_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*, i32)* @vc4_async_page_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_async_page_flip(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, %struct.drm_pending_vblank_event* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.drm_pending_vblank_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.vc4_dev*, align 8
  %12 = alloca %struct.drm_plane*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vc4_async_flip_state*, align 8
  %15 = alloca %struct.drm_gem_cma_object*, align 8
  %16 = alloca %struct.vc4_bo*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %6, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %7, align 8
  store %struct.drm_pending_vblank_event* %2, %struct.drm_pending_vblank_event** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %18 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %17, i32 0, i32 1
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %10, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %21 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %20)
  store %struct.vc4_dev* %21, %struct.vc4_dev** %11, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 0
  %24 = load %struct.drm_plane*, %struct.drm_plane** %23, align 8
  store %struct.drm_plane* %24, %struct.drm_plane** %12, align 8
  store i32 0, i32* %13, align 4
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %26 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %25, i32 0)
  store %struct.drm_gem_cma_object* %26, %struct.drm_gem_cma_object** %15, align 8
  %27 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %15, align 8
  %28 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %27, i32 0, i32 0
  %29 = call %struct.vc4_bo* @to_vc4_bo(i32* %28)
  store %struct.vc4_bo* %29, %struct.vc4_bo** %16, align 8
  %30 = load %struct.vc4_bo*, %struct.vc4_bo** %16, align 8
  %31 = call i32 @vc4_bo_inc_usecnt(%struct.vc4_bo* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %5, align 4
  br label %107

36:                                               ; preds = %4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.vc4_async_flip_state* @kzalloc(i32 40, i32 %37)
  store %struct.vc4_async_flip_state* %38, %struct.vc4_async_flip_state** %14, align 8
  %39 = load %struct.vc4_async_flip_state*, %struct.vc4_async_flip_state** %14, align 8
  %40 = icmp ne %struct.vc4_async_flip_state* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.vc4_bo*, %struct.vc4_bo** %16, align 8
  %43 = call i32 @vc4_bo_dec_usecnt(%struct.vc4_bo* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %107

46:                                               ; preds = %36
  %47 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %48 = call i32 @drm_framebuffer_get(%struct.drm_framebuffer* %47)
  %49 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %50 = load %struct.vc4_async_flip_state*, %struct.vc4_async_flip_state** %14, align 8
  %51 = getelementptr inbounds %struct.vc4_async_flip_state, %struct.vc4_async_flip_state* %50, i32 0, i32 4
  store %struct.drm_framebuffer* %49, %struct.drm_framebuffer** %51, align 8
  %52 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %53 = load %struct.vc4_async_flip_state*, %struct.vc4_async_flip_state** %14, align 8
  %54 = getelementptr inbounds %struct.vc4_async_flip_state, %struct.vc4_async_flip_state* %53, i32 0, i32 3
  store %struct.drm_crtc* %52, %struct.drm_crtc** %54, align 8
  %55 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %56 = load %struct.vc4_async_flip_state*, %struct.vc4_async_flip_state** %14, align 8
  %57 = getelementptr inbounds %struct.vc4_async_flip_state, %struct.vc4_async_flip_state* %56, i32 0, i32 2
  store %struct.drm_pending_vblank_event* %55, %struct.drm_pending_vblank_event** %57, align 8
  %58 = load %struct.vc4_dev*, %struct.vc4_dev** %11, align 8
  %59 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %58, i32 0, i32 0
  %60 = call i32 @down_interruptible(i32* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %46
  %64 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %65 = call i32 @drm_framebuffer_put(%struct.drm_framebuffer* %64)
  %66 = load %struct.vc4_bo*, %struct.vc4_bo** %16, align 8
  %67 = call i32 @vc4_bo_dec_usecnt(%struct.vc4_bo* %66)
  %68 = load %struct.vc4_async_flip_state*, %struct.vc4_async_flip_state** %14, align 8
  %69 = call i32 @kfree(%struct.vc4_async_flip_state* %68)
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %5, align 4
  br label %107

71:                                               ; preds = %46
  %72 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %73 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %75, align 8
  %77 = load %struct.vc4_async_flip_state*, %struct.vc4_async_flip_state** %14, align 8
  %78 = getelementptr inbounds %struct.vc4_async_flip_state, %struct.vc4_async_flip_state* %77, i32 0, i32 1
  store %struct.drm_framebuffer* %76, %struct.drm_framebuffer** %78, align 8
  %79 = load %struct.vc4_async_flip_state*, %struct.vc4_async_flip_state** %14, align 8
  %80 = getelementptr inbounds %struct.vc4_async_flip_state, %struct.vc4_async_flip_state* %79, i32 0, i32 1
  %81 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %80, align 8
  %82 = icmp ne %struct.drm_framebuffer* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %71
  %84 = load %struct.vc4_async_flip_state*, %struct.vc4_async_flip_state** %14, align 8
  %85 = getelementptr inbounds %struct.vc4_async_flip_state, %struct.vc4_async_flip_state* %84, i32 0, i32 1
  %86 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %85, align 8
  %87 = call i32 @drm_framebuffer_get(%struct.drm_framebuffer* %86)
  br label %88

88:                                               ; preds = %83, %71
  %89 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %90 = call i64 @drm_crtc_vblank_get(%struct.drm_crtc* %89)
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @WARN_ON(i32 %92)
  %94 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %95 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %98 = call i32 @drm_atomic_set_fb_for_plane(%struct.TYPE_2__* %96, %struct.drm_framebuffer* %97)
  %99 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %100 = load %struct.vc4_async_flip_state*, %struct.vc4_async_flip_state** %14, align 8
  %101 = getelementptr inbounds %struct.vc4_async_flip_state, %struct.vc4_async_flip_state* %100, i32 0, i32 0
  %102 = load %struct.vc4_bo*, %struct.vc4_bo** %16, align 8
  %103 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @vc4_async_page_flip_complete, align 4
  %106 = call i32 @vc4_queue_seqno_cb(%struct.drm_device* %99, i32* %101, i32 %104, i32 %105)
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %88, %63, %41, %34
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local %struct.vc4_bo* @to_vc4_bo(i32*) #1

declare dso_local i32 @vc4_bo_inc_usecnt(%struct.vc4_bo*) #1

declare dso_local %struct.vc4_async_flip_state* @kzalloc(i32, i32) #1

declare dso_local i32 @vc4_bo_dec_usecnt(%struct.vc4_bo*) #1

declare dso_local i32 @drm_framebuffer_get(%struct.drm_framebuffer*) #1

declare dso_local i32 @down_interruptible(i32*) #1

declare dso_local i32 @drm_framebuffer_put(%struct.drm_framebuffer*) #1

declare dso_local i32 @kfree(%struct.vc4_async_flip_state*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @drm_atomic_set_fb_for_plane(%struct.TYPE_2__*, %struct.drm_framebuffer*) #1

declare dso_local i32 @vc4_queue_seqno_cb(%struct.drm_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
