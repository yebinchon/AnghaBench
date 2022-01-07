; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_crtc_compute_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_crtc_compute_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { i32, i64, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i64, i64 }
%struct.drm_i915_private = type { i32, i32 }

@.str = private unnamed_addr constant [72 x i8] c"requested pixel clock (%d kHz) too high (max: %d kHz, double wide: %s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_YCBCR420 = common dso_local global i64 0, align 8
@INTEL_OUTPUT_FORMAT_YCBCR444 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"YCBCR420 and CTM together are not possible\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Odd pipe source width not supported with double wide pipe\0A\00", align 1
@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"Odd pipe source width not supported with dual link LVDS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc*, %struct.intel_crtc_state*)* @intel_crtc_compute_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_crtc_compute_config(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  %9 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %10 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %6, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store %struct.drm_display_mode* %16, %struct.drm_display_mode** %7, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %21 = call i32 @INTEL_GEN(%struct.drm_i915_private* %20)
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %45

23:                                               ; preds = %2
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 9
  %28 = sdiv i32 %27, 10
  store i32 %28, i32* %8, align 4
  %29 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %30 = call i64 @intel_crtc_supports_double_wide(%struct.intel_crtc* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %23
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %43 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %38, %32, %23
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %57 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @yesno(i32 %58)
  %60 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %145

63:                                               ; preds = %45
  %64 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %65 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @INTEL_OUTPUT_FORMAT_YCBCR420, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %71 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @INTEL_OUTPUT_FORMAT_YCBCR444, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %69, %63
  %76 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %77 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %145

85:                                               ; preds = %75, %69
  %86 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %87 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, 1
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %85
  %92 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %93 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %145

100:                                              ; preds = %91
  %101 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %102 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %103 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %107 = call i64 @intel_is_dual_link_lvds(%struct.drm_i915_private* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %145

113:                                              ; preds = %105, %100
  br label %114

114:                                              ; preds = %113, %85
  %115 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %116 = call i32 @INTEL_GEN(%struct.drm_i915_private* %115)
  %117 = icmp sgt i32 %116, 4
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %120 = call i64 @IS_G4X(%struct.drm_i915_private* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %118, %114
  %123 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %124 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %127 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %125, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %145

133:                                              ; preds = %122, %118
  %134 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %135 = call i32 @intel_crtc_compute_pixel_rate(%struct.intel_crtc_state* %134)
  %136 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %137 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %142 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %143 = call i32 @ironlake_fdi_compute_config(%struct.intel_crtc* %141, %struct.intel_crtc_state* %142)
  store i32 %143, i32* %3, align 4
  br label %145

144:                                              ; preds = %133
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %140, %130, %109, %96, %81, %51
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_crtc_supports_double_wide(%struct.intel_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i64 @intel_is_dual_link_lvds(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_crtc_compute_pixel_rate(%struct.intel_crtc_state*) #1

declare dso_local i32 @ironlake_fdi_compute_config(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
