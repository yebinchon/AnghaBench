; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_prepare_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_prepare_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.drm_i915_private = type { %struct.drm_atomic_state*, %struct.TYPE_9__, %struct.TYPE_7__, %struct.drm_modeset_acquire_ctx, %struct.drm_device }
%struct.drm_atomic_state = type { %struct.drm_modeset_acquire_ctx* }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@i915_modparams = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@I915_RESET_MODESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Modeset potentially stuck, unbreaking through wedging\0A\00", align 1
@EDEADLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Duplicating state failed with %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Suspending crtc's failed with %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_prepare_reset(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 4
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 3
  store %struct.drm_modeset_acquire_ctx* %10, %struct.drm_modeset_acquire_ctx** %4, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @i915_modparams, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %15 = call i32 @gpu_reset_clobbers_display(%struct.drm_i915_private* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %91

18:                                               ; preds = %13, %1
  %19 = load i32, i32* @I915_RESET_MODESET, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i32 @set_bit(i32 %19, i32* %23)
  %25 = call i32 (...) @smp_mb__after_atomic()
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* @I915_RESET_MODESET, align 4
  %31 = call i32 @wake_up_bit(i32* %29, i32 %30)
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = call i64 @atomic_read(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %18
  %38 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 1
  %41 = call i32 @intel_gt_set_wedged(%struct.TYPE_9__* %40)
  br label %42

42:                                               ; preds = %37, %18
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %48 = call i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %47, i32 0)
  br label %49

49:                                               ; preds = %42, %58
  %50 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %51 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %52 = call i32 @drm_modeset_lock_all_ctx(%struct.drm_device* %50, %struct.drm_modeset_acquire_ctx* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @EDEADLK, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %61

58:                                               ; preds = %49
  %59 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %60 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %59)
  br label %49

61:                                               ; preds = %57
  %62 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %63 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %64 = call %struct.drm_atomic_state* @drm_atomic_helper_duplicate_state(%struct.drm_device* %62, %struct.drm_modeset_acquire_ctx* %63)
  store %struct.drm_atomic_state* %64, %struct.drm_atomic_state** %5, align 8
  %65 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %66 = call i64 @IS_ERR(%struct.drm_atomic_state* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %70 = call i32 @PTR_ERR(%struct.drm_atomic_state* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %91

73:                                               ; preds = %61
  %74 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %75 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %76 = call i32 @drm_atomic_helper_disable_all(%struct.drm_device* %74, %struct.drm_modeset_acquire_ctx* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %83 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %82)
  br label %91

84:                                               ; preds = %73
  %85 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %87 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %86, i32 0, i32 0
  store %struct.drm_atomic_state* %85, %struct.drm_atomic_state** %87, align 8
  %88 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %89 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %90 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %89, i32 0, i32 0
  store %struct.drm_modeset_acquire_ctx* %88, %struct.drm_modeset_acquire_ctx** %90, align 8
  br label %91

91:                                               ; preds = %84, %79, %68, %17
  ret void
}

declare dso_local i32 @gpu_reset_clobbers_display(%struct.drm_i915_private*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_gt_set_wedged(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx*, i32) #1

declare dso_local i32 @drm_modeset_lock_all_ctx(%struct.drm_device*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local %struct.drm_atomic_state* @drm_atomic_helper_duplicate_state(%struct.drm_device*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i64 @IS_ERR(%struct.drm_atomic_state*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_atomic_state*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_atomic_helper_disable_all(%struct.drm_device*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
