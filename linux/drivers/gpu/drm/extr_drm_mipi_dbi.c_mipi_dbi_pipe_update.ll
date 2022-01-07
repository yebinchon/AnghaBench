; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_pipe_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_pipe_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.TYPE_6__ }
%struct.drm_crtc = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32 }
%struct.drm_rect = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mipi_dbi_pipe_update(%struct.drm_simple_display_pipe* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_simple_display_pipe*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_rect, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %8 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %9 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  store %struct.drm_plane_state* %11, %struct.drm_plane_state** %5, align 8
  %12 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %13 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %12, i32 0, i32 0
  store %struct.drm_crtc* %13, %struct.drm_crtc** %6, align 8
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %16 = call i64 @drm_atomic_helper_damage_merged(%struct.drm_plane_state* %14, %struct.drm_plane_state* %15, %struct.drm_rect* %7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %20 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mipi_dbi_fb_dirty(i32 %21, %struct.drm_rect* %7)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %25 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %52

30:                                               ; preds = %23
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %32 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %38 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %36, i32* %41)
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %44 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_irq(i32* %46)
  %48 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %49 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %30, %23
  ret void
}

declare dso_local i64 @drm_atomic_helper_damage_merged(%struct.drm_plane_state*, %struct.drm_plane_state*, %struct.drm_rect*) #1

declare dso_local i32 @mipi_dbi_fb_dirty(i32, %struct.drm_rect*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
