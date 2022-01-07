; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_i9xx_load_luts_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_i9xx_load_luts_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_property_blob = type { %struct.drm_color_lut* }
%struct.drm_color_lut = type { i32, i32, i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@INTEL_OUTPUT_DSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.drm_property_blob*)* @i9xx_load_luts_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_load_luts_internal(%struct.intel_crtc_state* %0, %struct.drm_property_blob* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.drm_property_blob*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_color_lut*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.drm_property_blob* %1, %struct.drm_property_blob** %4, align 8
  %11 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %12 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.intel_crtc* @to_intel_crtc(i32 %14)
  store %struct.intel_crtc* %15, %struct.intel_crtc** %5, align 8
  %16 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.drm_i915_private* @to_i915(i32 %19)
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %6, align 8
  %21 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %22 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %25 = call i64 @HAS_GMCH(%struct.drm_i915_private* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %29 = load i32, i32* @INTEL_OUTPUT_DSI, align 4
  %30 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %34 = call i32 @assert_dsi_pll_enabled(%struct.drm_i915_private* %33)
  br label %39

35:                                               ; preds = %27
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @assert_pll_enabled(%struct.drm_i915_private* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  %42 = icmp ne %struct.drm_property_blob* %41, null
  br i1 %42, label %43, label %96

43:                                               ; preds = %40
  %44 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  %45 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %44, i32 0, i32 0
  %46 = load %struct.drm_color_lut*, %struct.drm_color_lut** %45, align 8
  store %struct.drm_color_lut* %46, %struct.drm_color_lut** %9, align 8
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %92, %43
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 256
  br i1 %49, label %50, label %95

50:                                               ; preds = %47
  %51 = load %struct.drm_color_lut*, %struct.drm_color_lut** %9, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %51, i64 %53
  %55 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @drm_color_lut_extract(i32 %56, i32 8)
  %58 = shl i32 %57, 16
  %59 = load %struct.drm_color_lut*, %struct.drm_color_lut** %9, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %59, i64 %61
  %63 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @drm_color_lut_extract(i32 %64, i32 8)
  %66 = shl i32 %65, 8
  %67 = or i32 %58, %66
  %68 = load %struct.drm_color_lut*, %struct.drm_color_lut** %9, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %68, i64 %70
  %72 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @drm_color_lut_extract(i32 %73, i32 8)
  %75 = or i32 %67, %74
  store i32 %75, i32* %10, align 4
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %77 = call i64 @HAS_GMCH(%struct.drm_i915_private* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %50
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @PALETTE(i32 %80, i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @I915_WRITE(i32 %82, i32 %83)
  br label %91

85:                                               ; preds = %50
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @LGC_PALETTE(i32 %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @I915_WRITE(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %79
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %47

95:                                               ; preds = %47
  br label %96

96:                                               ; preds = %95, %40
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @assert_dsi_pll_enabled(%struct.drm_i915_private*) #1

declare dso_local i32 @assert_pll_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @drm_color_lut_extract(i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PALETTE(i32, i32) #1

declare dso_local i32 @LGC_PALETTE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
