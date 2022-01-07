; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_hsw_ddi_dp_get_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_hsw_ddi_dp_get_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_shared_dpll = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DPLL_ID_LCPLL_810 = common dso_local global i32 0, align 4
@DPLL_ID_LCPLL_1350 = common dso_local global i32 0, align 4
@DPLL_ID_LCPLL_2700 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid clock for DP: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_shared_dpll* (%struct.intel_crtc_state*)* @hsw_ddi_dp_get_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_shared_dpll* @hsw_ddi_dp_get_dpll(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_shared_dpll*, align 8
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_shared_dpll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %9 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %4, align 8
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sdiv i32 %18, 2
  switch i32 %19, label %26 [
    i32 81000, label %20
    i32 135000, label %22
    i32 270000, label %24
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @DPLL_ID_LCPLL_810, align 4
  store i32 %21, i32* %6, align 4
  br label %29

22:                                               ; preds = %1
  %23 = load i32, i32* @DPLL_ID_LCPLL_1350, align 4
  store i32 %23, i32* %6, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @DPLL_ID_LCPLL_2700, align 4
  store i32 %25, i32* %6, align 4
  br label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  store %struct.intel_shared_dpll* null, %struct.intel_shared_dpll** %2, align 8
  br label %38

29:                                               ; preds = %24, %22, %20
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.intel_shared_dpll* @intel_get_shared_dpll_by_id(%struct.drm_i915_private* %30, i32 %31)
  store %struct.intel_shared_dpll* %32, %struct.intel_shared_dpll** %5, align 8
  %33 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %34 = icmp ne %struct.intel_shared_dpll* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store %struct.intel_shared_dpll* null, %struct.intel_shared_dpll** %2, align 8
  br label %38

36:                                               ; preds = %29
  %37 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  store %struct.intel_shared_dpll* %37, %struct.intel_shared_dpll** %2, align 8
  br label %38

38:                                               ; preds = %36, %35, %26
  %39 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %2, align 8
  ret %struct.intel_shared_dpll* %39
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local %struct.intel_shared_dpll* @intel_get_shared_dpll_by_id(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
