; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_finish_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_finish_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_8__, i32, %struct.TYPE_5__, i32, %struct.drm_modeset_acquire_ctx, %struct.drm_device }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.drm_i915_private.0*)* }
%struct.drm_i915_private.0 = type opaque
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_atomic_state = type { i32 }

@I915_RESET_MODESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Restoring old state failed with %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_finish_reset(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 5
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 4
  store %struct.drm_modeset_acquire_ctx* %10, %struct.drm_modeset_acquire_ctx** %4, align 8
  %11 = load i32, i32* @I915_RESET_MODESET, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = call i32 @test_bit(i32 %11, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %98

19:                                               ; preds = %1
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 3
  %22 = call %struct.drm_atomic_state* @fetch_and_zero(i32* %21)
  store %struct.drm_atomic_state* %22, %struct.drm_atomic_state** %5, align 8
  %23 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %24 = icmp ne %struct.drm_atomic_state* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %83

26:                                               ; preds = %19
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = call i32 @gpu_reset_clobbers_display(%struct.drm_i915_private* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %32 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %33 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %34 = call i32 @__intel_display_resume(%struct.drm_device* %31, %struct.drm_atomic_state* %32, %struct.drm_modeset_acquire_ctx* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %30
  br label %80

41:                                               ; preds = %26
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = call i32 @intel_pps_unlock_regs_wa(%struct.drm_i915_private* %42)
  %44 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %45 = call i32 @intel_modeset_init_hw(%struct.drm_device* %44)
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = call i32 @intel_init_clock_gating(%struct.drm_i915_private* %46)
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %49 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %48, i32 0, i32 1
  %50 = call i32 @spin_lock_irq(i32* %49)
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %52 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32 (%struct.drm_i915_private.0*)*, i32 (%struct.drm_i915_private.0*)** %53, align 8
  %55 = icmp ne i32 (%struct.drm_i915_private.0*)* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %41
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %58 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32 (%struct.drm_i915_private.0*)*, i32 (%struct.drm_i915_private.0*)** %59, align 8
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %62 = bitcast %struct.drm_i915_private* %61 to %struct.drm_i915_private.0*
  %63 = call i32 %60(%struct.drm_i915_private.0* %62)
  br label %64

64:                                               ; preds = %56, %41
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %66 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %65, i32 0, i32 1
  %67 = call i32 @spin_unlock_irq(i32* %66)
  %68 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %69 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %70 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %71 = call i32 @__intel_display_resume(%struct.drm_device* %68, %struct.drm_atomic_state* %69, %struct.drm_modeset_acquire_ctx* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %74, %64
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %79 = call i32 @intel_hpd_init(%struct.drm_i915_private* %78)
  br label %80

80:                                               ; preds = %77, %40
  %81 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %82 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %81)
  br label %83

83:                                               ; preds = %80, %25
  %84 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %85 = call i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %84)
  %86 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %4, align 8
  %87 = call i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %86)
  %88 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %89 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* @I915_RESET_MODESET, align 4
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %94 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = call i32 @clear_bit_unlock(i32 %92, i32* %96)
  br label %98

98:                                               ; preds = %83, %18
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.drm_atomic_state* @fetch_and_zero(i32*) #1

declare dso_local i32 @gpu_reset_clobbers_display(%struct.drm_i915_private*) #1

declare dso_local i32 @__intel_display_resume(%struct.drm_device*, %struct.drm_atomic_state*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @intel_pps_unlock_regs_wa(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_modeset_init_hw(%struct.drm_device*) #1

declare dso_local i32 @intel_init_clock_gating(%struct.drm_i915_private*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @intel_hpd_init(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
