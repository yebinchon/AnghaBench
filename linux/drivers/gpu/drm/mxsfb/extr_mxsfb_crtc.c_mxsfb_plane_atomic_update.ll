; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_crtc.c_mxsfb_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_crtc.c_mxsfb_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxsfb_drm_private = type { %struct.TYPE_6__*, i64, %struct.drm_simple_display_pipe }
%struct.TYPE_6__ = type { i64 }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc }
%struct.drm_crtc = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.drm_pending_vblank_event* }
%struct.drm_pending_vblank_event = type { i32 }
%struct.drm_plane_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mxsfb_plane_atomic_update(%struct.mxsfb_drm_private* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.mxsfb_drm_private*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_simple_display_pipe*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_pending_vblank_event*, align 8
  %8 = alloca i64, align 8
  store %struct.mxsfb_drm_private* %0, %struct.mxsfb_drm_private** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %9 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %3, align 8
  %10 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %9, i32 0, i32 2
  store %struct.drm_simple_display_pipe* %10, %struct.drm_simple_display_pipe** %5, align 8
  %11 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %5, align 8
  %12 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %11, i32 0, i32 0
  store %struct.drm_crtc* %12, %struct.drm_crtc** %6, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %21, align 8
  store %struct.drm_pending_vblank_event* %22, %struct.drm_pending_vblank_event** %7, align 8
  %23 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %24 = icmp ne %struct.drm_pending_vblank_event* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %27 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %29, align 8
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %31 = call i64 @drm_crtc_vblank_get(%struct.drm_crtc* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %35 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %36 = call i32 @drm_crtc_arm_vblank_event(%struct.drm_crtc* %34, %struct.drm_pending_vblank_event* %35)
  br label %41

37:                                               ; preds = %25
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %39 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %40 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %38, %struct.drm_pending_vblank_event* %39)
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %44 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_irq(i32* %46)
  %48 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %3, align 8
  %49 = call i64 @mxsfb_get_fb_paddr(%struct.mxsfb_drm_private* %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %42
  %53 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %3, align 8
  %54 = call i32 @mxsfb_enable_axi_clk(%struct.mxsfb_drm_private* %53)
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %3, align 8
  %57 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %3, align 8
  %60 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %58, %63
  %65 = call i32 @writel(i64 %55, i64 %64)
  %66 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %3, align 8
  %67 = call i32 @mxsfb_disable_axi_clk(%struct.mxsfb_drm_private* %66)
  br label %68

68:                                               ; preds = %52, %42
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_arm_vblank_event(%struct.drm_crtc*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @mxsfb_get_fb_paddr(%struct.mxsfb_drm_private*) #1

declare dso_local i32 @mxsfb_enable_axi_clk(%struct.mxsfb_drm_private*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @mxsfb_disable_axi_clk(%struct.mxsfb_drm_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
