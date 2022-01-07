; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_state_helper.c___drm_atomic_helper_plane_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_state_helper.c___drm_atomic_helper_plane_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32, i32, i32, %struct.drm_plane* }

@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_BLEND_ALPHA_OPAQUE = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_PREMULTI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__drm_atomic_helper_plane_reset(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %5 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %6 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %7 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %6, i32 0, i32 3
  store %struct.drm_plane* %5, %struct.drm_plane** %7, align 8
  %8 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %9 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %10 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @DRM_BLEND_ALPHA_OPAQUE, align 4
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %13 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @DRM_MODE_BLEND_PREMULTI, align 4
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %16 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %18 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %19 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %18, i32 0, i32 0
  store %struct.drm_plane_state* %17, %struct.drm_plane_state** %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
