; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_get_crtc_ycbcr_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_get_crtc_ycbcr_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32 }
%struct.drm_i915_private = type { i32 }

@INTEL_OUTPUT_FORMAT_RGB = common dso_local global i32 0, align 4
@PIPEMISC_OUTPUT_COLORSPACE_YUV = common dso_local global i32 0, align 4
@PIPEMISC_YUV420_ENABLE = common dso_local global i32 0, align 4
@PIPEMISC_YUV420_MODE_FULL_BLEND = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_INVALID = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_YCBCR420 = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_YCBCR444 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @intel_get_crtc_ycbcr_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_get_crtc_ycbcr_config(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %10 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %5, align 8
  %15 = load i32, i32* @INTEL_OUTPUT_FORMAT_RGB, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %19 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %23 = call i32 @INTEL_GEN(%struct.drm_i915_private* %22)
  %24 = icmp sge i32 %23, 9
  br i1 %24, label %25, label %69

25:                                               ; preds = %21, %2
  %26 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %27 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PIPEMISC(i32 %28)
  %30 = call i32 @I915_READ(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @PIPEMISC_OUTPUT_COLORSPACE_YUV, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @PIPEMISC_YUV420_ENABLE, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @PIPEMISC_YUV420_MODE_FULL_BLEND, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %35
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @INTEL_OUTPUT_FORMAT_INVALID, align 4
  store i32 %48, i32* %6, align 4
  br label %62

49:                                               ; preds = %44
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %51 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %55 = call i32 @INTEL_GEN(%struct.drm_i915_private* %54)
  %56 = icmp sge i32 %55, 10
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @INTEL_OUTPUT_FORMAT_INVALID, align 4
  store i32 %58, i32* %6, align 4
  br label %61

59:                                               ; preds = %53, %49
  %60 = load i32, i32* @INTEL_OUTPUT_FORMAT_YCBCR420, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %57
  br label %62

62:                                               ; preds = %61, %47
  br label %67

63:                                               ; preds = %35
  %64 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %65 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load i32, i32* @INTEL_OUTPUT_FORMAT_YCBCR444, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %62
  br label %68

68:                                               ; preds = %67, %25
  br label %69

69:                                               ; preds = %68, %21
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %72 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPEMISC(i32) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
