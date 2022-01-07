; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_dp_voltage_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_dp_voltage_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_dp = type { i32 }

@icl_mg_phy_ddi_translations = common dso_local global i32* null, align 8
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@index_to_dp_signal_levels = common dso_local global i32* null, align 8
@DP_TRAIN_VOLTAGE_SWING_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_ddi_dp_voltage_max(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %8 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %9 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %3, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 2
  %15 = call %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_2__* %14)
  store %struct.intel_dp* %15, %struct.intel_dp** %4, align 8
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %17 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @intel_port_to_phy(%struct.drm_i915_private* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = call i32 @INTEL_GEN(%struct.drm_i915_private* %22)
  %24 = icmp sge i32 %23, 11
  br i1 %24, label %25, label %43

25:                                               ; preds = %1
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @intel_phy_is_combo(%struct.drm_i915_private* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %32 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %33 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %36 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @icl_get_combo_buf_trans(%struct.drm_i915_private* %31, i32 %34, i32 %37, i32* %7)
  br label %42

39:                                               ; preds = %25
  %40 = load i32*, i32** @icl_mg_phy_ddi_translations, align 8
  %41 = call i32 @ARRAY_SIZE(i32* %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %30
  br label %94

43:                                               ; preds = %1
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %45 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %49 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %55 = call i32 @cnl_get_buf_trans_edp(%struct.drm_i915_private* %54, i32* %7)
  br label %59

56:                                               ; preds = %47
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %58 = call i32 @cnl_get_buf_trans_dp(%struct.drm_i915_private* %57, i32* %7)
  br label %59

59:                                               ; preds = %56, %53
  br label %93

60:                                               ; preds = %43
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %62 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %66 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %72 = call i32 @bxt_get_buf_trans_edp(%struct.drm_i915_private* %71, i32* %7)
  br label %76

73:                                               ; preds = %64
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %75 = call i32 @bxt_get_buf_trans_dp(%struct.drm_i915_private* %74, i32* %7)
  br label %76

76:                                               ; preds = %73, %70
  br label %92

77:                                               ; preds = %60
  %78 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %79 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @intel_ddi_get_buf_trans_edp(%struct.drm_i915_private* %84, i32 %85, i32* %7)
  br label %91

87:                                               ; preds = %77
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @intel_ddi_get_buf_trans_dp(%struct.drm_i915_private* %88, i32 %89, i32* %7)
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %91, %76
  br label %93

93:                                               ; preds = %92, %59
  br label %94

94:                                               ; preds = %93, %42
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 1
  %97 = zext i1 %96 to i32
  %98 = call i64 @WARN_ON(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 1, i32* %7, align 4
  br label %101

101:                                              ; preds = %100, %94
  %102 = load i32, i32* %7, align 4
  %103 = load i32*, i32** @index_to_dp_signal_levels, align 8
  %104 = call i32 @ARRAY_SIZE(i32* %103)
  %105 = icmp sgt i32 %102, %104
  %106 = zext i1 %105 to i32
  %107 = call i64 @WARN_ON(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32*, i32** @index_to_dp_signal_levels, align 8
  %111 = call i32 @ARRAY_SIZE(i32* %110)
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %109, %101
  %113 = load i32*, i32** @index_to_dp_signal_levels, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %120 = and i32 %118, %119
  ret i32 %120
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_2__*) #1

declare dso_local i32 @intel_port_to_phy(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_phy_is_combo(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @icl_get_combo_buf_trans(%struct.drm_i915_private*, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @cnl_get_buf_trans_edp(%struct.drm_i915_private*, i32*) #1

declare dso_local i32 @cnl_get_buf_trans_dp(%struct.drm_i915_private*, i32*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_get_buf_trans_edp(%struct.drm_i915_private*, i32*) #1

declare dso_local i32 @bxt_get_buf_trans_dp(%struct.drm_i915_private*, i32*) #1

declare dso_local i32 @intel_ddi_get_buf_trans_edp(%struct.drm_i915_private*, i32, i32*) #1

declare dso_local i32 @intel_ddi_get_buf_trans_dp(%struct.drm_i915_private*, i32, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
