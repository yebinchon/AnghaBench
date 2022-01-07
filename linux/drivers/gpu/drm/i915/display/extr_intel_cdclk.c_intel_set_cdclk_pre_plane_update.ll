; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_set_cdclk_pre_plane_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_set_cdclk_pre_plane_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_cdclk_state = type { i64 }

@INVALID_PIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_set_cdclk_pre_plane_update(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state* %2, i32 %3) #0 {
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_cdclk_state*, align 8
  %7 = alloca %struct.intel_cdclk_state*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %6, align 8
  store %struct.intel_cdclk_state* %2, %struct.intel_cdclk_state** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @INVALID_PIPE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %4
  %13 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %6, align 8
  %14 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %7, align 8
  %17 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %15, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %12, %4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %22 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @intel_set_cdclk(%struct.drm_i915_private* %21, %struct.intel_cdclk_state* %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %12
  ret void
}

declare dso_local i32 @intel_set_cdclk(%struct.drm_i915_private*, %struct.intel_cdclk_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
