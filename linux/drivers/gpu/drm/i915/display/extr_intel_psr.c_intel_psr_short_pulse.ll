; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr_short_pulse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr_short_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_i915_private = type { %struct.i915_psr }
%struct.i915_psr = type { i32, i32, %struct.intel_dp*, i32 }

@DP_PSR_RFB_STORAGE_ERROR = common dso_local global i32 0, align 4
@DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR = common dso_local global i32 0, align 4
@DP_PSR_LINK_CRC_ERROR = common dso_local global i32 0, align 4
@DP_PSR_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"PSR_STATUS dpcd read failed\0A\00", align 1
@DP_PSR_SINK_STATE_MASK = common dso_local global i32 0, align 4
@DP_PSR_SINK_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"PSR sink internal error, disabling PSR\0A\00", align 1
@DP_PSR_ERROR_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"PSR_ERROR_STATUS dpcd read failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"PSR RFB storage error, disabling PSR\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"PSR VSC SDP uncorrectable error, disabling PSR\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"PSR Link CRC error, disabling PSR\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"PSR_ERROR_STATUS unhandled errors %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_psr_short_pulse(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_psr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %7 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %8 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %7)
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  store %struct.i915_psr* %10, %struct.i915_psr** %4, align 8
  %11 = load i32, i32* @DP_PSR_RFB_STORAGE_ERROR, align 4
  %12 = load i32, i32* @DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @DP_PSR_LINK_CRC_ERROR, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = call i32 @CAN_PSR(%struct.drm_i915_private* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %21 = call i32 @intel_dp_is_edp(%struct.intel_dp* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %1
  br label %120

24:                                               ; preds = %19
  %25 = load %struct.i915_psr*, %struct.i915_psr** %4, align 8
  %26 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.i915_psr*, %struct.i915_psr** %4, align 8
  %29 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.i915_psr*, %struct.i915_psr** %4, align 8
  %34 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %33, i32 0, i32 2
  %35 = load %struct.intel_dp*, %struct.intel_dp** %34, align 8
  %36 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %37 = icmp ne %struct.intel_dp* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %24
  br label %116

39:                                               ; preds = %32
  %40 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %41 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %40, i32 0, i32 0
  %42 = load i32, i32* @DP_PSR_STATUS, align 4
  %43 = call i32 @drm_dp_dpcd_readb(i32* %41, i32 %42, i32* %5)
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %116

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @DP_PSR_SINK_STATE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @DP_PSR_SINK_INTERNAL_ERROR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %56 = call i32 @intel_psr_disable_locked(%struct.intel_dp* %55)
  %57 = load %struct.i915_psr*, %struct.i915_psr** %4, align 8
  %58 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %61 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %60, i32 0, i32 0
  %62 = load i32, i32* @DP_PSR_ERROR_STATUS, align 4
  %63 = call i32 @drm_dp_dpcd_readb(i32* %61, i32 %62, i32* %5)
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %116

67:                                               ; preds = %59
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @DP_PSR_RFB_STORAGE_ERROR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %74
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @DP_PSR_LINK_CRC_ERROR, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %81
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %94, %88
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %107 = call i32 @intel_psr_disable_locked(%struct.intel_dp* %106)
  %108 = load %struct.i915_psr*, %struct.i915_psr** %4, align 8
  %109 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %105, %100
  %111 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %112 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %111, i32 0, i32 0
  %113 = load i32, i32* @DP_PSR_ERROR_STATUS, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @drm_dp_dpcd_writeb(i32* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %65, %45, %38
  %117 = load %struct.i915_psr*, %struct.i915_psr** %4, align 8
  %118 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %117, i32 0, i32 1
  %119 = call i32 @mutex_unlock(i32* %118)
  br label %120

120:                                              ; preds = %116, %23
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local i32 @CAN_PSR(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_psr_disable_locked(%struct.intel_dp*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
