; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_check_fdi_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_check_fdi_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_atomic_state* }
%struct.drm_atomic_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"checking fdi config on pipe %c, lanes %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"invalid fdi lane config on pipe %c: %i lanes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"only 2 lanes on haswell, required: %i lanes\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"invalid shared fdi lane config on pipe %c: %i lanes\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"only 2 lanes on pipe %c: required %i lanes\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"fdi link B uses too many lanes to enable link C\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, %struct.intel_crtc_state*)* @ironlake_check_fdi_lanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ironlake_check_fdi_lanes(%struct.drm_device* %0, i32 %1, %struct.intel_crtc_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_atomic_state*, align 8
  %10 = alloca %struct.intel_crtc*, align 8
  %11 = alloca %struct.intel_crtc_state*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.intel_crtc_state* %2, %struct.intel_crtc_state** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %8, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %16, align 8
  store %struct.drm_atomic_state* %17, %struct.drm_atomic_state** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pipe_name(i32 %18)
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 4
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pipe_name(i32 %29)
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %32 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %137

37:                                               ; preds = %3
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %39 = call i64 @IS_HASWELL(%struct.drm_i915_private* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %43 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41, %37
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %47 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 2
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %52 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %137

57:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %137

58:                                               ; preds = %41
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %60 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_i915_private* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %137

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  switch i32 %66, label %135 [
    i32 130, label %67
    i32 129, label %68
    i32 128, label %100
  ]

67:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %137

68:                                               ; preds = %65
  %69 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %70 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sle i32 %71, 2
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %137

74:                                               ; preds = %68
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %76 = call %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private* %75, i32 128)
  store %struct.intel_crtc* %76, %struct.intel_crtc** %10, align 8
  %77 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %9, align 8
  %78 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %79 = call %struct.intel_crtc_state* @intel_atomic_get_crtc_state(%struct.drm_atomic_state* %77, %struct.intel_crtc* %78)
  store %struct.intel_crtc_state* %79, %struct.intel_crtc_state** %11, align 8
  %80 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %11, align 8
  %81 = call i32 @IS_ERR(%struct.intel_crtc_state* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %11, align 8
  %85 = call i32 @PTR_ERR(%struct.intel_crtc_state* %84)
  store i32 %85, i32* %4, align 4
  br label %137

86:                                               ; preds = %74
  %87 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %11, align 8
  %88 = call i32 @pipe_required_fdi_lanes(%struct.intel_crtc_state* %87)
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @pipe_name(i32 %91)
  %93 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %94 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %137

99:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %137

100:                                              ; preds = %65
  %101 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %102 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %103, 2
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @pipe_name(i32 %106)
  %108 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %109 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %137

114:                                              ; preds = %100
  %115 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %116 = call %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private* %115, i32 129)
  store %struct.intel_crtc* %116, %struct.intel_crtc** %10, align 8
  %117 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %9, align 8
  %118 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %119 = call %struct.intel_crtc_state* @intel_atomic_get_crtc_state(%struct.drm_atomic_state* %117, %struct.intel_crtc* %118)
  store %struct.intel_crtc_state* %119, %struct.intel_crtc_state** %11, align 8
  %120 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %11, align 8
  %121 = call i32 @IS_ERR(%struct.intel_crtc_state* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %11, align 8
  %125 = call i32 @PTR_ERR(%struct.intel_crtc_state* %124)
  store i32 %125, i32* %4, align 4
  br label %137

126:                                              ; preds = %114
  %127 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %11, align 8
  %128 = call i32 @pipe_required_fdi_lanes(%struct.intel_crtc_state* %127)
  %129 = icmp sgt i32 %128, 2
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %137

134:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %137

135:                                              ; preds = %65
  %136 = call i32 (...) @BUG()
  br label %137

137:                                              ; preds = %28, %50, %57, %64, %67, %73, %83, %90, %99, %105, %123, %130, %134, %135
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_crtc_state(%struct.drm_atomic_state*, %struct.intel_crtc*) #1

declare dso_local i32 @IS_ERR(%struct.intel_crtc_state*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_crtc_state*) #1

declare dso_local i32 @pipe_required_fdi_lanes(%struct.intel_crtc_state*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
