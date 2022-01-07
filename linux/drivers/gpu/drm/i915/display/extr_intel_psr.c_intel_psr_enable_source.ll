; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr_enable_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr_enable_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PSR2_VSC_ENABLE_PROG_HEADER = common dso_local global i32 0, align 4
@PSR2_ADD_VERTICAL_LINE_COUNT = common dso_local global i32 0, align 4
@EDP_PSR_DEBUG_MASK_MEMUP = common dso_local global i32 0, align 4
@EDP_PSR_DEBUG_MASK_HPD = common dso_local global i32 0, align 4
@EDP_PSR_DEBUG_MASK_LPSP = common dso_local global i32 0, align 4
@EDP_PSR_DEBUG_MASK_MAX_SLEEP = common dso_local global i32 0, align 4
@EDP_PSR_DEBUG_MASK_DISP_REG_WRITE = common dso_local global i32 0, align 4
@EDP_PSR_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*, %struct.intel_crtc_state*)* @intel_psr_enable_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_psr_enable_source(%struct.intel_dp* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %10 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %11 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %5, align 8
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %16 = call i64 @IS_HASWELL(%struct.drm_i915_private* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %20 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %2
  %23 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %24 = call i32 @hsw_psr_setup_aux(%struct.intel_dp* %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %33 = call i64 @IS_GEN(%struct.drm_i915_private* %32, i32 9)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %37 = call i32 @IS_GEMINILAKE(%struct.drm_i915_private* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %35
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @gen9_chicken_trans_reg(%struct.drm_i915_private* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @I915_READ(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @PSR2_VSC_ENABLE_PROG_HEADER, align 4
  %46 = load i32, i32* @PSR2_ADD_VERTICAL_LINE_COUNT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @I915_WRITE(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %39, %35, %31, %25
  %54 = load i32, i32* @EDP_PSR_DEBUG_MASK_MEMUP, align 4
  %55 = load i32, i32* @EDP_PSR_DEBUG_MASK_HPD, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @EDP_PSR_DEBUG_MASK_LPSP, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @EDP_PSR_DEBUG_MASK_MAX_SLEEP, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %62 = call i32 @INTEL_GEN(%struct.drm_i915_private* %61)
  %63 = icmp slt i32 %62, 11
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = load i32, i32* @EDP_PSR_DEBUG_MASK_DISP_REG_WRITE, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %53
  %69 = load i32, i32* @EDP_PSR_DEBUG, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @I915_WRITE(i32 %69, i32 %70)
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @hsw_psr_setup_aux(%struct.intel_dp*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @gen9_chicken_trans_reg(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
