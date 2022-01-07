; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"PSR disabled by flag\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_psr_enable(%struct.intel_dp* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %6 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %7 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %6)
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %5, align 8
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %9 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %49

13:                                               ; preds = %2
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %15 = call i32 @CAN_PSR(%struct.drm_i915_private* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %49

22:                                               ; preds = %13
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @psr_global_enabled(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %22
  %39 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %44

40:                                               ; preds = %22
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %43 = call i32 @intel_psr_enable_locked(%struct.drm_i915_private* %41, %struct.intel_crtc_state* %42)
  br label %44

44:                                               ; preds = %40, %38
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %46 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  br label %49

49:                                               ; preds = %44, %21, %12
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @CAN_PSR(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @psr_global_enabled(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_psr_enable_locked(%struct.drm_i915_private*, %struct.intel_crtc_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
