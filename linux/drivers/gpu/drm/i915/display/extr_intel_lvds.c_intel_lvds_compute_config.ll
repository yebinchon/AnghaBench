; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_intel_lvds_compute_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_intel_lvds_compute_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_lvds_encoder = type { i64, %struct.intel_connector* }
%struct.intel_connector = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"Can't support LVDS on pipe A\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LVDS_A3_POWER_UP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"forcing display bpp (was %d) to LVDS (%d)\0A\00", align 1
@INTEL_OUTPUT_FORMAT_RGB = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_lvds_compute_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_lvds_compute_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_lvds_encoder*, align 8
  %10 = alloca %struct.intel_connector*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca %struct.intel_crtc*, align 8
  %13 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %8, align 8
  %19 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %20 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %19, i32 0, i32 0
  %21 = call %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_6__* %20)
  store %struct.intel_lvds_encoder* %21, %struct.intel_lvds_encoder** %9, align 8
  %22 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %9, align 8
  %23 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %22, i32 0, i32 1
  %24 = load %struct.intel_connector*, %struct.intel_connector** %23, align 8
  store %struct.intel_connector* %24, %struct.intel_connector** %10, align 8
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %26 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store %struct.drm_display_mode* %27, %struct.drm_display_mode** %11, align 8
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %29 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.intel_crtc* @to_intel_crtc(i32 %31)
  store %struct.intel_crtc* %32, %struct.intel_crtc** %12, align 8
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %34 = call i32 @INTEL_GEN(%struct.drm_i915_private* %33)
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %45

36:                                               ; preds = %3
  %37 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %38 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %113

45:                                               ; preds = %36, %3
  %46 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %9, align 8
  %47 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @LVDS_A3_POWER_UP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 24, i32* %13, align 4
  br label %53

52:                                               ; preds = %45
  store i32 18, i32* %13, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %56 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %61 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %59
  %65 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %66 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %72 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %64, %59, %53
  %74 = load i32, i32* @INTEL_OUTPUT_FORMAT_RGB, align 4
  %75 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %76 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.intel_connector*, %struct.intel_connector** %10, align 8
  %78 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %82 = call i32 @intel_fixed_panel_mode(i32 %80, %struct.drm_display_mode* %81)
  %83 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %84 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %73
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %113

92:                                               ; preds = %73
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %94 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %98 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %100 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %101 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %102 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @intel_pch_panel_fitting(%struct.intel_crtc* %99, %struct.intel_crtc_state* %100, i32 %103)
  br label %112

105:                                              ; preds = %92
  %106 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %107 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %108 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %109 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @intel_gmch_panel_fitting(%struct.intel_crtc* %106, %struct.intel_crtc_state* %107, i32 %110)
  br label %112

112:                                              ; preds = %105, %96
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %89, %41
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_6__*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @intel_fixed_panel_mode(i32, %struct.drm_display_mode*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_pch_panel_fitting(%struct.intel_crtc*, %struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_gmch_panel_fitting(%struct.intel_crtc*, %struct.intel_crtc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
