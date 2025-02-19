; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_kms.c_bochs_pipe_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_kms.c_bochs_pipe_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bochs_device* }
%struct.bochs_device = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_plane_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_crtc_state*, %struct.drm_plane_state*)* @bochs_pipe_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bochs_pipe_enable(%struct.drm_simple_display_pipe* %0, %struct.drm_crtc_state* %1, %struct.drm_plane_state* %2) #0 {
  %4 = alloca %struct.drm_simple_display_pipe*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.bochs_device*, align 8
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %6, align 8
  %8 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %9 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.bochs_device*, %struct.bochs_device** %12, align 8
  store %struct.bochs_device* %13, %struct.bochs_device** %7, align 8
  %14 = load %struct.bochs_device*, %struct.bochs_device** %7, align 8
  %15 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %16 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %15, i32 0, i32 0
  %17 = call i32 @bochs_hw_setmode(%struct.bochs_device* %14, i32* %16)
  %18 = load %struct.bochs_device*, %struct.bochs_device** %7, align 8
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %20 = call i32 @bochs_plane_update(%struct.bochs_device* %18, %struct.drm_plane_state* %19)
  ret void
}

declare dso_local i32 @bochs_hw_setmode(%struct.bochs_device*, i32*) #1

declare dso_local i32 @bochs_plane_update(%struct.bochs_device*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
