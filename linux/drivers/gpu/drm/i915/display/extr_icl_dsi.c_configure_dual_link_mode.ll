; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_icl_dsi.c_configure_dual_link_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_icl_dsi.c_configure_dual_link_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_dsi = type { i32, i64 }

@DSS_CTL1 = common dso_local global i32 0, align 4
@SPLITTER_ENABLE = common dso_local global i32 0, align 4
@OVERLAP_PIXELS_MASK = common dso_local global i32 0, align 4
@DSI_DUAL_LINK_FRONT_BACK = common dso_local global i64 0, align 8
@DUAL_LINK_MODE_INTERLEAVE = common dso_local global i32 0, align 4
@MAX_DL_BUFFER_TARGET_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"DL buffer depth exceed max value\0A\00", align 1
@LEFT_DL_BUF_TARGET_DEPTH_MASK = common dso_local global i32 0, align 4
@DSS_CTL2 = common dso_local global i32 0, align 4
@RIGHT_DL_BUF_TARGET_DEPTH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @configure_dual_link_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_dual_link_mode(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_dsi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %5, align 8
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %18 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %17, i32 0, i32 0
  %19 = call %struct.intel_dsi* @enc_to_intel_dsi(%struct.TYPE_4__* %18)
  store %struct.intel_dsi* %19, %struct.intel_dsi** %6, align 8
  %20 = load i32, i32* @DSS_CTL1, align 4
  %21 = call i32 @I915_READ(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @SPLITTER_ENABLE, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @OVERLAP_PIXELS_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load %struct.intel_dsi*, %struct.intel_dsi** %6, align 8
  %30 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @OVERLAP_PIXELS(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.intel_dsi*, %struct.intel_dsi** %6, align 8
  %36 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DSI_DUAL_LINK_FRONT_BACK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %2
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %42 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store %struct.drm_display_mode* %43, %struct.drm_display_mode** %8, align 8
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @DUAL_LINK_MODE_INTERLEAVE, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sdiv i32 %51, 2
  %53 = load %struct.intel_dsi*, %struct.intel_dsi** %6, align 8
  %54 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @MAX_DL_BUFFER_TARGET_DEPTH, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %40
  %61 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %40
  %63 = load i32, i32* @LEFT_DL_BUF_TARGET_DEPTH_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @LEFT_DL_BUF_TARGET_DEPTH(i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* @DSS_CTL2, align 4
  %72 = call i32 @I915_READ(i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* @RIGHT_DL_BUF_TARGET_DEPTH_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @RIGHT_DL_BUF_TARGET_DEPTH(i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* @DSS_CTL2, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @I915_WRITE(i32 %81, i32 %82)
  br label %88

84:                                               ; preds = %2
  %85 = load i32, i32* @DUAL_LINK_MODE_INTERLEAVE, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %84, %62
  %89 = load i32, i32* @DSS_CTL1, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @I915_WRITE(i32 %89, i32 %90)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_dsi* @enc_to_intel_dsi(%struct.TYPE_4__*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @OVERLAP_PIXELS(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @LEFT_DL_BUF_TARGET_DEPTH(i32) #1

declare dso_local i32 @RIGHT_DL_BUF_TARGET_DEPTH(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
