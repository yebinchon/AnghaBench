; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_aux_backlight.c_intel_dp_aux_set_pwm_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_aux_backlight.c_intel_dp_aux_set_pwm_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.intel_dp = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"VBT defined backlight frequency %u Hz\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Use panel default backlight frequency\0A\00", align 1
@DP_EDP_BACKLIGHT_FREQ_BASE_KHZ = common dso_local global i32 0, align 4
@DP_EDP_PWMGEN_BIT_COUNT_CAP_MIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to read pwmgen bit count cap min\0A\00", align 1
@DP_EDP_PWMGEN_BIT_COUNT_CAP_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to read pwmgen bit count cap max\0A\00", align 1
@DP_EDP_PWMGEN_BIT_COUNT_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"VBT defined backlight frequency out of range\0A\00", align 1
@DP_EDP_PWMGEN_BIT_COUNT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to write aux pwmgen bit count\0A\00", align 1
@DP_EDP_BACKLIGHT_FREQ_SET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Failed to write aux backlight freq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*)* @intel_dp_aux_set_pwm_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_aux_set_pwm_freq(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_dp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %15 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %16 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %4, align 8
  %20 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %21 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call %struct.intel_dp* @enc_to_intel_dp(i32* %23)
  store %struct.intel_dp* %24, %struct.intel_dp** %5, align 8
  store i32 1, i32* %11, align 4
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %1
  %35 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %126

36:                                               ; preds = %1
  %37 = load i32, i32* @DP_EDP_BACKLIGHT_FREQ_BASE_KHZ, align 4
  %38 = call i32 @KHz(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @DIV_ROUND_CLOSEST(i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %42 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %41, i32 0, i32 0
  %43 = load i32, i32* @DP_EDP_PWMGEN_BIT_COUNT_CAP_MIN, align 4
  %44 = call i32 @drm_dp_dpcd_readb(i32* %42, i32 %43, i32* %13)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %126

48:                                               ; preds = %36
  %49 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %50 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %49, i32 0, i32 0
  %51 = load i32, i32* @DP_EDP_PWMGEN_BIT_COUNT_CAP_MAX, align 4
  %52 = call i32 @drm_dp_dpcd_readb(i32* %50, i32 %51, i32* %14)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %126

56:                                               ; preds = %48
  %57 = load i32, i32* @DP_EDP_PWMGEN_BIT_COUNT_MASK, align 4
  %58 = load i32, i32* %13, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* @DP_EDP_PWMGEN_BIT_COUNT_MASK, align 4
  %61 = load i32, i32* %14, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 %63, 3
  %65 = call i32 @DIV_ROUND_CLOSEST(i32 %64, i32 4)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 %66, 5
  %68 = call i32 @DIV_ROUND_CLOSEST(i32 %67, i32 4)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %13, align 4
  %71 = shl i32 1, %70
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %56
  %74 = load i32, i32* %14, align 4
  %75 = shl i32 255, %74
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73, %56
  %79 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %126

80:                                               ; preds = %73
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %104, %80
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %107

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %12, align 4
  %89 = shl i32 1, %88
  %90 = call i32 @DIV_ROUND_CLOSEST(i32 %87, i32 %89)
  %91 = call i32 @clamp(i32 %90, i32 1, i32 255)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = shl i32 %92, %93
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %86
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %107

103:                                              ; preds = %98, %86
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %12, align 4
  br label %82

107:                                              ; preds = %102, %82
  %108 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %109 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %108, i32 0, i32 0
  %110 = load i32, i32* @DP_EDP_PWMGEN_BIT_COUNT, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i64 @drm_dp_dpcd_writeb(i32* %109, i32 %110, i32 %111)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %126

116:                                              ; preds = %107
  %117 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %118 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %117, i32 0, i32 0
  %119 = load i32, i32* @DP_EDP_BACKLIGHT_FREQ_SET, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i64 @drm_dp_dpcd_writeb(i32* %118, i32 %119, i32 %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %126

125:                                              ; preds = %116
  store i32 1, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %123, %114, %78, %54, %46, %34
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @KHz(i32) #1

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i64 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
