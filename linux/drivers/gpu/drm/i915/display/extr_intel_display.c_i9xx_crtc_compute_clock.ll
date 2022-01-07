; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_crtc_compute_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_crtc_compute_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_limit = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"using SSC reference clock of %d kHz\0A\00", align 1
@intel_limits_i9xx_lvds = common dso_local global %struct.intel_limit zeroinitializer, align 4
@intel_limits_i9xx_sdvo = common dso_local global %struct.intel_limit zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Couldn't find PLL settings for mode!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc*, %struct.intel_crtc_state*)* @i9xx_crtc_compute_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_crtc_compute_clock(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_limit*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  %10 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %11 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %6, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %7, align 8
  store i32 96000, i32* %9, align 4
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 3
  %18 = call i32 @memset(i32* %17, i32 0, i32 4)
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %20 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %21 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %25 = call i64 @intel_panel_use_ssc(%struct.drm_i915_private* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %27, %23
  store %struct.intel_limit* @intel_limits_i9xx_lvds, %struct.intel_limit** %8, align 8
  br label %36

35:                                               ; preds = %2
  store %struct.intel_limit* @intel_limits_i9xx_sdvo, %struct.intel_limit** %8, align 8
  br label %36

36:                                               ; preds = %35, %34
  %37 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %38 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %36
  %42 = load %struct.intel_limit*, %struct.intel_limit** %8, align 8
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %44 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %45 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %49 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %48, i32 0, i32 0
  %50 = call i32 @i9xx_find_best_dpll(%struct.intel_limit* %42, %struct.intel_crtc_state* %43, i32 %46, i32 %47, i32* null, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %41
  %53 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %41, %36
  %57 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %58 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %59 = call i32 @i9xx_compute_dpll(%struct.intel_crtc* %57, %struct.intel_crtc_state* %58, i32* null)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i64 @intel_panel_use_ssc(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @i9xx_find_best_dpll(%struct.intel_limit*, %struct.intel_crtc_state*, i32, i32, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @i9xx_compute_dpll(%struct.intel_crtc*, %struct.intel_crtc_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
