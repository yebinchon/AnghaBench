; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_display_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_display_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { %struct.drm_atomic_state* }
%struct.drm_atomic_state = type { %struct.drm_modeset_acquire_ctx* }
%struct.drm_modeset_acquire_ctx = type { i32 }

@EDEADLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Restoring old state failed with %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_display_resume(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %7)
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %10, align 8
  store %struct.drm_atomic_state* %11, %struct.drm_atomic_state** %4, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  store %struct.drm_atomic_state* null, %struct.drm_atomic_state** %13, align 8
  %14 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %15 = icmp ne %struct.drm_atomic_state* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %18 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %17, i32 0, i32 0
  store %struct.drm_modeset_acquire_ctx* %5, %struct.drm_modeset_acquire_ctx** %18, align 8
  br label %19

19:                                               ; preds = %16, %1
  %20 = call i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %5, i32 0)
  br label %21

21:                                               ; preds = %19, %29
  %22 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %23 = call i32 @drm_modeset_lock_all_ctx(%struct.drm_device* %22, %struct.drm_modeset_acquire_ctx* %5)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @EDEADLK, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %31

29:                                               ; preds = %21
  %30 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %5)
  br label %21

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %36 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %37 = call i32 @__intel_display_resume(%struct.drm_device* %35, %struct.drm_atomic_state* %36, %struct.drm_modeset_acquire_ctx* %5)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = call i32 @intel_enable_ipc(%struct.drm_i915_private* %39)
  %41 = call i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %5)
  %42 = call i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %5)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %50 = icmp ne %struct.drm_atomic_state* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %53 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %52)
  br label %54

54:                                               ; preds = %51, %48
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx*, i32) #1

declare dso_local i32 @drm_modeset_lock_all_ctx(%struct.drm_device*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @__intel_display_resume(%struct.drm_device*, %struct.drm_atomic_state*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @intel_enable_ipc(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
