; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_check_luts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_check_luts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_property_blob*, %struct.drm_property_blob*, %struct.TYPE_5__* }
%struct.drm_property_blob = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"C8 pixelformat requires the legacy LUT\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*)* @check_luts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_luts(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_property_blob*, align 8
  %6 = alloca %struct.drm_property_blob*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  %11 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %12 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %4, align 8
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %19 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.drm_property_blob*, %struct.drm_property_blob** %20, align 8
  store %struct.drm_property_blob* %21, %struct.drm_property_blob** %5, align 8
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %23 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.drm_property_blob*, %struct.drm_property_blob** %24, align 8
  store %struct.drm_property_blob* %25, %struct.drm_property_blob** %6, align 8
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %27 = call i64 @crtc_state_is_legacy_gamma(%struct.intel_crtc_state* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

30:                                               ; preds = %1
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %32 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %86

39:                                               ; preds = %30
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %41 = call %struct.TYPE_8__* @INTEL_INFO(%struct.drm_i915_private* %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %46 = call %struct.TYPE_8__* @INTEL_INFO(%struct.drm_i915_private* %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %51 = call %struct.TYPE_8__* @INTEL_INFO(%struct.drm_i915_private* %50)
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %56 = call %struct.TYPE_8__* @INTEL_INFO(%struct.drm_i915_private* %55)
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  %60 = load %struct.drm_property_blob*, %struct.drm_property_blob** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @check_lut_size(%struct.drm_property_blob* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %39
  %65 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @check_lut_size(%struct.drm_property_blob* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64, %39
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %86

72:                                               ; preds = %64
  %73 = load %struct.drm_property_blob*, %struct.drm_property_blob** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i64 @drm_color_lut_check(%struct.drm_property_blob* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @drm_color_lut_check(%struct.drm_property_blob* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77, %72
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %86

85:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %82, %69, %35, %29
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @crtc_state_is_legacy_gamma(%struct.intel_crtc_state*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local %struct.TYPE_8__* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local i64 @check_lut_size(%struct.drm_property_blob*, i32) #1

declare dso_local i64 @drm_color_lut_check(%struct.drm_property_blob*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
