; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_set_source_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_set_source_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32*, i32 }
%struct.intel_digital_port = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ddi_vbt_port_info* }
%struct.ddi_vbt_port_info = type { i32 }

@intel_dp_set_source_rates.cnl_rates = internal constant [8 x i32] [i32 162000, i32 216000, i32 270000, i32 324000, i32 432000, i32 540000, i32 648000, i32 810000], align 16
@intel_dp_set_source_rates.bxt_rates = internal constant [7 x i32] [i32 162000, i32 216000, i32 243000, i32 270000, i32 324000, i32 432000, i32 540000], align 16
@intel_dp_set_source_rates.skl_rates = internal constant [6 x i32] [i32 162000, i32 216000, i32 270000, i32 324000, i32 432000, i32 540000], align 16
@intel_dp_set_source_rates.hsw_rates = internal constant [3 x i32] [i32 162000, i32 270000, i32 540000], align 4
@intel_dp_set_source_rates.g4x_rates = internal constant [2 x i32] [i32 162000, i32 270000], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_dp_set_source_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_set_source_rates(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.ddi_vbt_port_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %10 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %11 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %10)
  store %struct.intel_digital_port* %11, %struct.intel_digital_port** %3, align 8
  %12 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %13 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %4, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %20, align 8
  %22 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %23 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %21, i64 %25
  store %struct.ddi_vbt_port_info* %26, %struct.ddi_vbt_port_info** %5, align 8
  store i32 0, i32* %8, align 4
  %27 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %5, align 8
  %28 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %31 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %1
  %35 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %36 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %34, %1
  %40 = phi i1 [ true, %1 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %44 = call i32 @INTEL_GEN(%struct.drm_i915_private* %43)
  %45 = icmp sge i32 %44, 10
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @intel_dp_set_source_rates.cnl_rates, i64 0, i64 0), i32** %6, align 8
  %47 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @intel_dp_set_source_rates.cnl_rates, i64 0, i64 0))
  store i32 %47, i32* %7, align 4
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %49 = call i64 @IS_GEN(%struct.drm_i915_private* %48, i32 10)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %53 = call i32 @cnl_max_source_rate(%struct.intel_dp* %52)
  store i32 %53, i32* %8, align 4
  br label %57

54:                                               ; preds = %46
  %55 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %56 = call i32 @icl_max_source_rate(%struct.intel_dp* %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %89

58:                                               ; preds = %39
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %60 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @intel_dp_set_source_rates.bxt_rates, i64 0, i64 0), i32** %6, align 8
  %63 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @intel_dp_set_source_rates.bxt_rates, i64 0, i64 0))
  store i32 %63, i32* %7, align 4
  br label %88

64:                                               ; preds = %58
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %66 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @intel_dp_set_source_rates.skl_rates, i64 0, i64 0), i32** %6, align 8
  %69 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @intel_dp_set_source_rates.skl_rates, i64 0, i64 0))
  store i32 %69, i32* %7, align 4
  br label %87

70:                                               ; preds = %64
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %72 = call i64 @IS_HASWELL(%struct.drm_i915_private* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %76 = call i32 @IS_HSW_ULX(%struct.drm_i915_private* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74, %70
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %80 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %74
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @intel_dp_set_source_rates.hsw_rates, i64 0, i64 0), i32** %6, align 8
  %83 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @intel_dp_set_source_rates.hsw_rates, i64 0, i64 0))
  store i32 %83, i32* %7, align 4
  br label %86

84:                                               ; preds = %78
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @intel_dp_set_source_rates.g4x_rates, i64 0, i64 0), i32** %6, align 8
  %85 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @intel_dp_set_source_rates.g4x_rates, i64 0, i64 0))
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %84, %82
  br label %87

87:                                               ; preds = %86, %68
  br label %88

88:                                               ; preds = %87, %62
  br label %89

89:                                               ; preds = %88, %57
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @min(i32 %96, i32 %97)
  store i32 %98, i32* %8, align 4
  br label %105

99:                                               ; preds = %92, %89
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %102, %99
  br label %105

105:                                              ; preds = %104, %95
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @intel_dp_rate_limit_len(i32* %109, i32 %110, i32 %111)
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %108, %105
  %114 = load i32*, i32** %6, align 8
  %115 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %116 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %115, i32 0, i32 0
  store i32* %114, i32** %116, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %119 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  ret void
}

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @cnl_max_source_rate(%struct.intel_dp*) #1

declare dso_local i32 @icl_max_source_rate(%struct.intel_dp*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_HSW_ULX(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @intel_dp_rate_limit_len(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
