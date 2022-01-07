; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_combo_phy_ddi_vswing_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_combo_phy_ddi_vswing_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_dp = type { i32, i32 }

@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@COMMON_KEEPER_EN = common dso_local global i32 0, align 4
@LOADGEN_SELECT = common dso_local global i32 0, align 4
@SUS_CLOCK_CONFIG = common dso_local global i32 0, align 4
@TX_TRAINING_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, i32, i32)* @icl_combo_phy_ddi_vswing_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_combo_phy_ddi_vswing_sequence(%struct.intel_encoder* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.intel_dp*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %7, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %20 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %21 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @intel_port_to_phy(%struct.drm_i915_private* %19, i32 %22)
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  br label %38

28:                                               ; preds = %3
  %29 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %30 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %29, i32 0, i32 0
  %31 = call %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_2__* %30)
  store %struct.intel_dp* %31, %struct.intel_dp** %13, align 8
  %32 = load %struct.intel_dp*, %struct.intel_dp** %13, align 8
  %33 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.intel_dp*, %struct.intel_dp** %13, align 8
  %36 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %28, %27
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ICL_PORT_PCS_DW1_LN0(i32 %39)
  %41 = call i32 @I915_READ(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32, i32* @COMMON_KEEPER_EN, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %11, align 4
  br label %54

50:                                               ; preds = %38
  %51 = load i32, i32* @COMMON_KEEPER_EN, align 4
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ICL_PORT_PCS_DW1_GRP(i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @I915_WRITE(i32 %56, i32 %57)
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %101, %54
  %60 = load i32, i32* %12, align 4
  %61 = icmp sle i32 %60, 3
  br i1 %61, label %62, label %104

62:                                               ; preds = %59
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @ICL_PORT_TX_DW4_LN(i32 %63, i32 %64)
  %66 = call i32 @I915_READ(i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* @LOADGEN_SELECT, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp sle i32 %71, 600000
  br i1 %72, label %73, label %79

73:                                               ; preds = %62
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = icmp sge i32 %77, 1
  br i1 %78, label %91, label %79

79:                                               ; preds = %76, %73, %62
  %80 = load i32, i32* %10, align 4
  %81 = icmp sle i32 %80, 600000
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 4
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i32, i32* %12, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %95

91:                                               ; preds = %88, %85, %76
  %92 = load i32, i32* @LOADGEN_SELECT, align 4
  %93 = load i32, i32* %11, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %91, %88, %82, %79
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @ICL_PORT_TX_DW4_LN(i32 %96, i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @I915_WRITE(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %59

104:                                              ; preds = %59
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @ICL_PORT_CL_DW5(i32 %105)
  %107 = call i32 @I915_READ(i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* @SUS_CLOCK_CONFIG, align 4
  %109 = load i32, i32* %11, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @ICL_PORT_CL_DW5(i32 %111)
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @I915_WRITE(i32 %112, i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @ICL_PORT_TX_DW5_LN0(i32 %115)
  %117 = call i32 @I915_READ(i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* @TX_TRAINING_EN, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %11, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @ICL_PORT_TX_DW5_GRP(i32 %122)
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @I915_WRITE(i32 %123, i32 %124)
  %126 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @icl_ddi_combo_vswing_program(%struct.drm_i915_private* %126, i32 %127, i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @ICL_PORT_TX_DW5_LN0(i32 %132)
  %134 = call i32 @I915_READ(i32 %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* @TX_TRAINING_EN, align 4
  %136 = load i32, i32* %11, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @ICL_PORT_TX_DW5_GRP(i32 %138)
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @I915_WRITE(i32 %139, i32 %140)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_port_to_phy(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_2__*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @ICL_PORT_PCS_DW1_LN0(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @ICL_PORT_PCS_DW1_GRP(i32) #1

declare dso_local i32 @ICL_PORT_TX_DW4_LN(i32, i32) #1

declare dso_local i32 @ICL_PORT_CL_DW5(i32) #1

declare dso_local i32 @ICL_PORT_TX_DW5_LN0(i32) #1

declare dso_local i32 @ICL_PORT_TX_DW5_GRP(i32) #1

declare dso_local i32 @icl_ddi_combo_vswing_program(%struct.drm_i915_private*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
