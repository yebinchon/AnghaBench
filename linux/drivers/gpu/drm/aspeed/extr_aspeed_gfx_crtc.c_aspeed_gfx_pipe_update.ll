; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_crtc.c_aspeed_gfx_pipe_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_crtc.c_aspeed_gfx_pipe_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_6__, %struct.drm_crtc }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32 }
%struct.drm_crtc = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.drm_pending_vblank_event* }
%struct.drm_pending_vblank_event = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.aspeed_gfx = type { i64 }
%struct.drm_gem_cma_object = type { i32 }

@CRT_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_plane_state*)* @aspeed_gfx_pipe_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_gfx_pipe_update(%struct.drm_simple_display_pipe* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_simple_display_pipe*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.aspeed_gfx*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.drm_pending_vblank_event*, align 8
  %9 = alloca %struct.drm_gem_cma_object*, align 8
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %10 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %11 = call %struct.aspeed_gfx* @drm_pipe_to_aspeed_gfx(%struct.drm_simple_display_pipe* %10)
  store %struct.aspeed_gfx* %11, %struct.aspeed_gfx** %5, align 8
  %12 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %13 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %12, i32 0, i32 1
  store %struct.drm_crtc* %13, %struct.drm_crtc** %6, align 8
  %14 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %15 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %18, align 8
  store %struct.drm_framebuffer* %19, %struct.drm_framebuffer** %7, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %26 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %28, align 8
  store %struct.drm_pending_vblank_event* %29, %struct.drm_pending_vblank_event** %8, align 8
  %30 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %31 = icmp ne %struct.drm_pending_vblank_event* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %2
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %34 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %36, align 8
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %38 = call i64 @drm_crtc_vblank_get(%struct.drm_crtc* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %42 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %43 = call i32 @drm_crtc_arm_vblank_event(%struct.drm_crtc* %41, %struct.drm_pending_vblank_event* %42)
  br label %48

44:                                               ; preds = %32
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %46 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %47 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %45, %struct.drm_pending_vblank_event* %46)
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %2
  %50 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %51 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock_irq(i32* %53)
  %55 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %56 = icmp ne %struct.drm_framebuffer* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %74

58:                                               ; preds = %49
  %59 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %60 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %59, i32 0)
  store %struct.drm_gem_cma_object* %60, %struct.drm_gem_cma_object** %9, align 8
  %61 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %9, align 8
  %62 = icmp ne %struct.drm_gem_cma_object* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %74

64:                                               ; preds = %58
  %65 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %9, align 8
  %66 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %5, align 8
  %69 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CRT_ADDR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  br label %74

74:                                               ; preds = %64, %63, %57
  ret void
}

declare dso_local %struct.aspeed_gfx* @drm_pipe_to_aspeed_gfx(%struct.drm_simple_display_pipe*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_arm_vblank_event(%struct.drm_crtc*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
