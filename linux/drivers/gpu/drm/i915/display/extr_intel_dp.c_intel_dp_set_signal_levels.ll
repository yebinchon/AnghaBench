; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_set_signal_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_set_signal_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32*, i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DDI_BUF_EMP_MASK = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4
@EDP_LINK_TRAIN_VOL_EMP_MASK_IVB = common dso_local global i32 0, align 4
@EDP_LINK_TRAIN_VOL_EMP_MASK_SNB = common dso_local global i32 0, align 4
@DP_VOLTAGE_MASK = common dso_local global i32 0, align 4
@DP_PRE_EMPHASIS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Using signal levels %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Using vswing level %d\0A\00", align 1
@DP_TRAIN_VOLTAGE_SWING_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Using pre-emphasis level %d\0A\00", align 1
@DP_TRAIN_PRE_EMPHASIS_MASK = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPHASIS_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dp_set_signal_levels(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %9 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %10 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %3, align 8
  %11 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %12 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %11)
  store %struct.intel_digital_port* %12, %struct.intel_digital_port** %4, align 8
  %13 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %14 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %18 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %1
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %27 = call i32 @INTEL_GEN(%struct.drm_i915_private* %26)
  %28 = icmp sge i32 %27, 10
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %1
  %30 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %31 = call i32 @bxt_signal_levels(%struct.intel_dp* %30)
  store i32 %31, i32* %6, align 4
  br label %89

32:                                               ; preds = %25
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = call i64 @HAS_DDI(%struct.drm_i915_private* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %38 = call i32 @ddi_signal_levels(%struct.intel_dp* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @DDI_BUF_EMP_MASK, align 4
  store i32 %39, i32* %7, align 4
  br label %88

40:                                               ; preds = %32
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %46 = call i32 @chv_signal_levels(%struct.intel_dp* %45)
  store i32 %46, i32* %6, align 4
  br label %87

47:                                               ; preds = %40
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %49 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %53 = call i32 @vlv_signal_levels(%struct.intel_dp* %52)
  store i32 %53, i32* %6, align 4
  br label %86

54:                                               ; preds = %47
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %56 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @PORT_A, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @ivb_cpu_edp_signal_levels(i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* @EDP_LINK_TRAIN_VOL_EMP_MASK_IVB, align 4
  store i32 %65, i32* %7, align 4
  br label %85

66:                                               ; preds = %58, %54
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %68 = call i64 @IS_GEN(%struct.drm_i915_private* %67, i32 6)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @PORT_A, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @snb_cpu_edp_signal_levels(i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @EDP_LINK_TRAIN_VOL_EMP_MASK_SNB, align 4
  store i32 %77, i32* %7, align 4
  br label %84

78:                                               ; preds = %70, %66
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @g4x_signal_levels(i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* @DP_VOLTAGE_MASK, align 4
  %82 = load i32, i32* @DP_PRE_EMPHASIS_MASK, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %78, %74
  br label %85

85:                                               ; preds = %84, %62
  br label %86

86:                                               ; preds = %85, %51
  br label %87

87:                                               ; preds = %86, %44
  br label %88

88:                                               ; preds = %87, %36
  br label %89

89:                                               ; preds = %88, %29
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %98 = and i32 %96, %97
  %99 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_SHIFT, align 4
  %104 = ashr i32 %102, %103
  %105 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %107 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %115 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %117 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %120 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @I915_WRITE(i32 %118, i32 %121)
  %123 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %124 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @POSTING_READ(i32 %125)
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_signal_levels(%struct.intel_dp*) #1

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i32 @ddi_signal_levels(%struct.intel_dp*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @chv_signal_levels(%struct.intel_dp*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_signal_levels(%struct.intel_dp*) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i32 @ivb_cpu_edp_signal_levels(i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @snb_cpu_edp_signal_levels(i32) #1

declare dso_local i32 @g4x_signal_levels(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
