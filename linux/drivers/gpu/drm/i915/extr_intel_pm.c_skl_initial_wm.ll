; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_initial_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_initial_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { %struct.skl_ddb_values }
%struct.skl_ddb_values = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.intel_crtc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_atomic_state*, %struct.intel_crtc_state*)* @skl_initial_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_initial_wm(%struct.intel_atomic_state* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_atomic_state*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.skl_ddb_values*, align 8
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %9 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %10 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.intel_crtc* @to_intel_crtc(i32 %12)
  store %struct.intel_crtc* %13, %struct.intel_crtc** %5, align 8
  %14 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %15 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %6, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %7, align 8
  %20 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %21 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %20, i32 0, i32 0
  store %struct.skl_ddb_values* %21, %struct.skl_ddb_values** %8, align 8
  %22 = load %struct.skl_ddb_values*, %struct.skl_ddb_values** %8, align 8
  %23 = getelementptr inbounds %struct.skl_ddb_values, %struct.skl_ddb_values* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %26 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %25, i32 0, i32 0
  %27 = call i32 @drm_crtc_mask(%struct.TYPE_6__* %26)
  %28 = and i32 %24, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %50

31:                                               ; preds = %2
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %37 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %44 = call i32 @skl_atomic_update_crtc_wm(%struct.intel_atomic_state* %42, %struct.intel_crtc_state* %43)
  br label %45

45:                                               ; preds = %41, %31
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %45, %30
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @drm_crtc_mask(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @skl_atomic_update_crtc_wm(%struct.intel_atomic_state*, %struct.intel_crtc_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
