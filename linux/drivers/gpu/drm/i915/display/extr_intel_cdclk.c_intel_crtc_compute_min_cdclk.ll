; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_crtc_compute_min_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_crtc_compute_min_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@INTEL_OUTPUT_DSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"required cdclk (%d kHz) exceeds max (%d kHz)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_crtc_compute_min_cdclk(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  %6 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %7 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %4, align 8
  %13 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %14 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %154

19:                                               ; preds = %1
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %21 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %22 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @intel_pixel_rate_to_cdclk(%struct.drm_i915_private* %20, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %26 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %30 = call i64 @hsw_crtc_state_ips_capable(%struct.intel_crtc_state* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 100
  %35 = call i32 @DIV_ROUND_UP(i32 %34, i32 95)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %28, %19
  %37 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %38 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %36
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %42 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %40
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %47 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 540000
  br i1 %49, label %50, label %79

50:                                               ; preds = %45
  %51 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %52 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %55, label %79

55:                                               ; preds = %50
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %57 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %61 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @max(i32 316800, i32 %64)
  store i32 %65, i32* %5, align 4
  br label %78

66:                                               ; preds = %59
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %68 = call i64 @IS_GEN(%struct.drm_i915_private* %67, i32 9)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %72 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %66
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @max(i32 432000, i32 %75)
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %70
  br label %78

78:                                               ; preds = %77, %63
  br label %79

79:                                               ; preds = %78, %50, %45, %40, %36
  %80 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %81 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %86 = call i32 @INTEL_GEN(%struct.drm_i915_private* %85)
  %87 = icmp sge i32 %86, 9
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @max(i32 192000, i32 %89)
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %84, %79
  %92 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %93 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %97 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %95, %91
  %100 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %101 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %105 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %110 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @max(i32 %111, i32 %112)
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %108, %103, %99, %95
  %115 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %116 = load i32, i32* @INTEL_OUTPUT_DSI, align 4
  %117 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %121 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @max(i32 320000, i32 %124)
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %123, %119, %114
  %127 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %128 = load i32, i32* @INTEL_OUTPUT_DSI, align 4
  %129 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %133 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @max(i32 158400, i32 %136)
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %135, %131, %126
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %141 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %139, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %138
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %147 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %145, i32 %148)
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %154

152:                                              ; preds = %138
  %153 = load i32, i32* %5, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %152, %144, %18
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_pixel_rate_to_cdclk(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @hsw_crtc_state_ips_capable(%struct.intel_crtc_state*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
