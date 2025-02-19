; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bw.c_intel_atomic_get_bw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bw.c_intel_atomic_get_bw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_bw_state = type { i32 }
%struct.intel_atomic_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_private_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_bw_state* (%struct.intel_atomic_state*)* @intel_atomic_get_bw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_bw_state* @intel_atomic_get_bw_state(%struct.intel_atomic_state* %0) #0 {
  %2 = alloca %struct.intel_bw_state*, align 8
  %3 = alloca %struct.intel_atomic_state*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_private_state*, align 8
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %3, align 8
  %6 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %7 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.drm_i915_private* @to_i915(i32 %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %4, align 8
  %11 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %12 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = call %struct.drm_private_state* @drm_atomic_get_private_obj_state(%struct.TYPE_2__* %12, i32* %14)
  store %struct.drm_private_state* %15, %struct.drm_private_state** %5, align 8
  %16 = load %struct.drm_private_state*, %struct.drm_private_state** %5, align 8
  %17 = call i64 @IS_ERR(%struct.drm_private_state* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.drm_private_state*, %struct.drm_private_state** %5, align 8
  %21 = call %struct.intel_bw_state* @ERR_CAST(%struct.drm_private_state* %20)
  store %struct.intel_bw_state* %21, %struct.intel_bw_state** %2, align 8
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.drm_private_state*, %struct.drm_private_state** %5, align 8
  %24 = call %struct.intel_bw_state* @to_intel_bw_state(%struct.drm_private_state* %23)
  store %struct.intel_bw_state* %24, %struct.intel_bw_state** %2, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.intel_bw_state*, %struct.intel_bw_state** %2, align 8
  ret %struct.intel_bw_state* %26
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.drm_private_state* @drm_atomic_get_private_obj_state(%struct.TYPE_2__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_private_state*) #1

declare dso_local %struct.intel_bw_state* @ERR_CAST(%struct.drm_private_state*) #1

declare dso_local %struct.intel_bw_state* @to_intel_bw_state(%struct.drm_private_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
