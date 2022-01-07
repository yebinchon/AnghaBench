; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_glk_force_audio_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_glk_force_audio_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_atomic_state = type { %struct.drm_modeset_acquire_ctx* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @glk_force_audio_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glk_force_audio_cdclk(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %6 = alloca %struct.drm_atomic_state*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %5, i32 0)
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = call %struct.drm_atomic_state* @drm_atomic_state_alloc(%struct.TYPE_8__* %10)
  store %struct.drm_atomic_state* %11, %struct.drm_atomic_state** %6, align 8
  %12 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %13 = icmp ne %struct.drm_atomic_state* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %61

19:                                               ; preds = %2
  %20 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %21 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %20, i32 0, i32 0
  store %struct.drm_modeset_acquire_ctx* %5, %struct.drm_modeset_acquire_ctx** %21, align 8
  br label %22

22:                                               ; preds = %50, %19
  %23 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %24 = call %struct.TYPE_7__* @to_intel_atomic_state(%struct.drm_atomic_state* %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 192000, i32 0
  %31 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %32 = call %struct.TYPE_7__* @to_intel_atomic_state(%struct.drm_atomic_state* %31)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 4
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @drm_modeset_lock(i32* %38, %struct.drm_modeset_acquire_ctx* %5)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %22
  %43 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %44 = call i32 @drm_atomic_commit(%struct.drm_atomic_state* %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %22
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @EDEADLK, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %52 = call i32 @drm_atomic_state_clear(%struct.drm_atomic_state* %51)
  %53 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %5)
  br label %22

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @WARN_ON(i32 %55)
  %57 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %58 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %57)
  %59 = call i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %5)
  %60 = call i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %5)
  br label %61

61:                                               ; preds = %54, %18
  ret void
}

declare dso_local i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx*, i32) #1

declare dso_local %struct.drm_atomic_state* @drm_atomic_state_alloc(%struct.TYPE_8__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_7__* @to_intel_atomic_state(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_modeset_lock(i32*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_atomic_commit(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_state_clear(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
