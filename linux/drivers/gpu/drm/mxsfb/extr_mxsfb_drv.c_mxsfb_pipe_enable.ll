; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_drv.c_mxsfb_pipe_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_drv.c_mxsfb_pipe_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.mxsfb_drm_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_crtc_state*, %struct.drm_plane_state*)* @mxsfb_pipe_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxsfb_pipe_enable(%struct.drm_simple_display_pipe* %0, %struct.drm_crtc_state* %1, %struct.drm_plane_state* %2) #0 {
  %4 = alloca %struct.drm_simple_display_pipe*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.mxsfb_drm_private*, align 8
  %8 = alloca %struct.drm_device*, align 8
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %6, align 8
  %9 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %10 = call %struct.mxsfb_drm_private* @drm_pipe_to_mxsfb_drm_private(%struct.drm_simple_display_pipe* %9)
  store %struct.mxsfb_drm_private* %10, %struct.mxsfb_drm_private** %7, align 8
  %11 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %12 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %8, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  %19 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %20 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @drm_panel_prepare(i32 %21)
  %23 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %24 = call i32 @mxsfb_crtc_enable(%struct.mxsfb_drm_private* %23)
  %25 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %7, align 8
  %26 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @drm_panel_enable(i32 %27)
  ret void
}

declare dso_local %struct.mxsfb_drm_private* @drm_pipe_to_mxsfb_drm_private(%struct.drm_simple_display_pipe*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @drm_panel_prepare(i32) #1

declare dso_local i32 @mxsfb_crtc_enable(%struct.mxsfb_drm_private*) #1

declare dso_local i32 @drm_panel_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
