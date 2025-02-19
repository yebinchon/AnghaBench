; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_pipe_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_pipe_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_6__, %struct.drm_crtc }
%struct.TYPE_6__ = type { %struct.drm_plane_state* }
%struct.drm_crtc = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.drm_plane_state = type { i32 }
%struct.drm_rect = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_plane_state*)* @gm12u320_pipe_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gm12u320_pipe_update(%struct.drm_simple_display_pipe* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_simple_display_pipe*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_rect, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %8 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %9 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  store %struct.drm_plane_state* %11, %struct.drm_plane_state** %5, align 8
  %12 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %13 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %12, i32 0, i32 1
  store %struct.drm_crtc* %13, %struct.drm_crtc** %6, align 8
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %16 = call i64 @drm_atomic_helper_damage_merged(%struct.drm_plane_state* %14, %struct.drm_plane_state* %15, %struct.drm_rect* %7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %20 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %21, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gm12u320_fb_mark_dirty(i32 %24, %struct.drm_rect* %7)
  br label %26

26:                                               ; preds = %18, %2
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %28 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %26
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_irq(i32* %37)
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %39, i32* %44)
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %47 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %51 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock_irq(i32* %53)
  br label %55

55:                                               ; preds = %33, %26
  ret void
}

declare dso_local i64 @drm_atomic_helper_damage_merged(%struct.drm_plane_state*, %struct.drm_plane_state*, %struct.drm_rect*) #1

declare dso_local i32 @gm12u320_fb_mark_dirty(i32, %struct.drm_rect*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
