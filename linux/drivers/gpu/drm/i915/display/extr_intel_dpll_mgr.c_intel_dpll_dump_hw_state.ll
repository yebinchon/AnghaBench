; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_dpll_dump_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_dpll_dump_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_i915_private*, %struct.intel_dpll_hw_state*)* }
%struct.intel_dpll_hw_state = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"dpll_hw_state: dpll: 0x%x, dpll_md: 0x%x, fp0: 0x%x, fp1: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dpll_dump_hw_state(%struct.drm_i915_private* %0, %struct.intel_dpll_hw_state* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_dpll_hw_state*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_dpll_hw_state* %1, %struct.intel_dpll_hw_state** %4, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.drm_i915_private*, %struct.intel_dpll_hw_state*)*, i32 (%struct.drm_i915_private*, %struct.intel_dpll_hw_state*)** %13, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %4, align 8
  %17 = call i32 %14(%struct.drm_i915_private* %15, %struct.intel_dpll_hw_state* %16)
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %4, align 8
  %20 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %4, align 8
  %23 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %4, align 8
  %26 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %4, align 8
  %29 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %18, %9
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
