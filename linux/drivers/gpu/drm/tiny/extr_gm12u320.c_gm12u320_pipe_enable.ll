; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_pipe_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_pipe_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.gm12u320_device* }
%struct.gm12u320_device = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.drm_rect = type { i32, i32, i32, i32 }

@GM12U320_USER_WIDTH = common dso_local global i32 0, align 4
@GM12U320_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_crtc_state*, %struct.drm_plane_state*)* @gm12u320_pipe_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gm12u320_pipe_enable(%struct.drm_simple_display_pipe* %0, %struct.drm_crtc_state* %1, %struct.drm_plane_state* %2) #0 {
  %4 = alloca %struct.drm_simple_display_pipe*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.gm12u320_device*, align 8
  %8 = alloca %struct.drm_rect, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %6, align 8
  %9 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %10 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.gm12u320_device*, %struct.gm12u320_device** %13, align 8
  store %struct.gm12u320_device* %14, %struct.gm12u320_device** %7, align 8
  %15 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %8, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %8, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %8, i32 0, i32 2
  %18 = load i32, i32* @GM12U320_USER_WIDTH, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %8, i32 0, i32 3
  %20 = load i32, i32* @GM12U320_HEIGHT, align 4
  store i32 %20, i32* %19, align 4
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gm12u320_fb_mark_dirty(i32 %23, %struct.drm_rect* %8)
  %25 = load %struct.gm12u320_device*, %struct.gm12u320_device** %7, align 8
  %26 = call i32 @gm12u320_start_fb_update(%struct.gm12u320_device* %25)
  %27 = load %struct.gm12u320_device*, %struct.gm12u320_device** %7, align 8
  %28 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  ret void
}

declare dso_local i32 @gm12u320_fb_mark_dirty(i32, %struct.drm_rect*) #1

declare dso_local i32 @gm12u320_start_fb_update(%struct.gm12u320_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
