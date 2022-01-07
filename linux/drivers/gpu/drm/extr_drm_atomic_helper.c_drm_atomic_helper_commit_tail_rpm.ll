; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_commit_tail_rpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_commit_tail_rpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@DRM_PLANE_COMMIT_ACTIVE_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_atomic_helper_commit_tail_rpm(%struct.drm_atomic_state* %0) #0 {
  %2 = alloca %struct.drm_atomic_state*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %2, align 8
  %4 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %5 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %4, i32 0, i32 0
  %6 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %9 = call i32 @drm_atomic_helper_commit_modeset_disables(%struct.drm_device* %7, %struct.drm_atomic_state* %8)
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %12 = call i32 @drm_atomic_helper_commit_modeset_enables(%struct.drm_device* %10, %struct.drm_atomic_state* %11)
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %15 = load i32, i32* @DRM_PLANE_COMMIT_ACTIVE_ONLY, align 4
  %16 = call i32 @drm_atomic_helper_commit_planes(%struct.drm_device* %13, %struct.drm_atomic_state* %14, i32 %15)
  %17 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %18 = call i32 @drm_atomic_helper_fake_vblank(%struct.drm_atomic_state* %17)
  %19 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %20 = call i32 @drm_atomic_helper_commit_hw_done(%struct.drm_atomic_state* %19)
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %23 = call i32 @drm_atomic_helper_wait_for_vblanks(%struct.drm_device* %21, %struct.drm_atomic_state* %22)
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %26 = call i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device* %24, %struct.drm_atomic_state* %25)
  ret void
}

declare dso_local i32 @drm_atomic_helper_commit_modeset_disables(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_commit_modeset_enables(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_commit_planes(%struct.drm_device*, %struct.drm_atomic_state*, i32) #1

declare dso_local i32 @drm_atomic_helper_fake_vblank(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_commit_hw_done(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_wait_for_vblanks(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
