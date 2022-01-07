; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_display_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_display_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.drm_plane, %struct.drm_crtc }
%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_crtc = type { %struct.drm_device*, %struct.TYPE_2__* }
%struct.drm_device = type { i32, %struct.pl111_drm_dev_private* }
%struct.pl111_drm_dev_private = type { i64 }
%struct.TYPE_2__ = type { i64, %struct.drm_pending_vblank_event* }
%struct.drm_pending_vblank_event = type { i32 }
%struct.drm_plane_state = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32 }

@CLCD_UBAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_plane_state*)* @pl111_display_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl111_display_update(%struct.drm_simple_display_pipe* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_simple_display_pipe*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.pl111_drm_dev_private*, align 8
  %8 = alloca %struct.drm_pending_vblank_event*, align 8
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca %struct.drm_plane_state*, align 8
  %11 = alloca %struct.drm_framebuffer*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %13 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %14 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %13, i32 0, i32 1
  store %struct.drm_crtc* %14, %struct.drm_crtc** %5, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %6, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 1
  %20 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %19, align 8
  store %struct.pl111_drm_dev_private* %20, %struct.pl111_drm_dev_private** %7, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %24, align 8
  store %struct.drm_pending_vblank_event* %25, %struct.drm_pending_vblank_event** %8, align 8
  %26 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %27 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %26, i32 0, i32 0
  store %struct.drm_plane* %27, %struct.drm_plane** %9, align 8
  %28 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %29 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %28, i32 0, i32 0
  %30 = load %struct.drm_plane_state*, %struct.drm_plane_state** %29, align 8
  store %struct.drm_plane_state* %30, %struct.drm_plane_state** %10, align 8
  %31 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  %32 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %31, i32 0, i32 0
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %32, align 8
  store %struct.drm_framebuffer* %33, %struct.drm_framebuffer** %11, align 8
  %34 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %35 = icmp ne %struct.drm_framebuffer* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %2
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %38 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  %39 = call i32 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer* %37, %struct.drm_plane_state* %38, i32 0)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %7, align 8
  %42 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CLCD_UBAS, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  br label %47

47:                                               ; preds = %36, %2
  %48 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %49 = icmp ne %struct.drm_pending_vblank_event* %48, null
  br i1 %49, label %50, label %84

50:                                               ; preds = %47
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %52 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %54, align 8
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %56 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %55, i32 0, i32 0
  %57 = load %struct.drm_device*, %struct.drm_device** %56, align 8
  %58 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %57, i32 0, i32 0
  %59 = call i32 @spin_lock_irq(i32* %58)
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %61 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %50
  %67 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %68 = call i64 @drm_crtc_vblank_get(%struct.drm_crtc* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %72 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %73 = call i32 @drm_crtc_arm_vblank_event(%struct.drm_crtc* %71, %struct.drm_pending_vblank_event* %72)
  br label %78

74:                                               ; preds = %66, %50
  %75 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %76 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %8, align 8
  %77 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %75, %struct.drm_pending_vblank_event* %76)
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %80 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %79, i32 0, i32 0
  %81 = load %struct.drm_device*, %struct.drm_device** %80, align 8
  %82 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock_irq(i32* %82)
  br label %84

84:                                               ; preds = %78, %47
  ret void
}

declare dso_local i32 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer*, %struct.drm_plane_state*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_arm_vblank_event(%struct.drm_crtc*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
