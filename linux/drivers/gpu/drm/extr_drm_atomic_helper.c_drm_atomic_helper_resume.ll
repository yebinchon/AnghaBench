; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_atomic_helper_resume(%struct.drm_device* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %4, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = call i32 @drm_mode_config_reset(%struct.drm_device* %7)
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = load i32, i32* %6, align 4
  %11 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, %struct.drm_modeset_acquire_ctx* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @DRM_MODESET_LOCK_ALL_BEGIN(%struct.drm_device* %9, i32 %12, i32 0, i32 %10)
  %14 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %15 = call i32 @drm_atomic_helper_commit_duplicated_state(%struct.drm_atomic_state* %14, %struct.drm_modeset_acquire_ctx* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, %struct.drm_modeset_acquire_ctx* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DRM_MODESET_LOCK_ALL_END(i32 %18, i32 %16)
  %20 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %21 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %20)
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @DRM_MODESET_LOCK_ALL_BEGIN(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @drm_atomic_helper_commit_duplicated_state(%struct.drm_atomic_state*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @DRM_MODESET_LOCK_ALL_END(i32, i32) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
