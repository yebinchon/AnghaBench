; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_cnl_ddi_vswing_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_cnl_ddi_vswing_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_dp = type { i32, i32 }

@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@COMMON_KEEPER_EN = common dso_local global i32 0, align 4
@LOADGEN_SELECT = common dso_local global i32 0, align 4
@CNL_PORT_CL1CM_DW5 = common dso_local global i32 0, align 4
@SUS_CLOCK_CONFIG = common dso_local global i32 0, align 4
@TX_TRAINING_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, i32, i32)* @cnl_ddi_vswing_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnl_ddi_vswing_sequence(%struct.intel_encoder* %0, i32 %1, i32 %2) #0 {
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
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %7, align 8
  %19 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %20 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %36

26:                                               ; preds = %3
  %27 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %28 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %27, i32 0, i32 1
  %29 = call %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_2__* %28)
  store %struct.intel_dp* %29, %struct.intel_dp** %13, align 8
  %30 = load %struct.intel_dp*, %struct.intel_dp** %13, align 8
  %31 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.intel_dp*, %struct.intel_dp** %13, align 8
  %34 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %26, %25
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @CNL_PORT_PCS_DW1_LN0(i32 %37)
  %39 = call i32 @I915_READ(i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @COMMON_KEEPER_EN, align 4
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %52

47:                                               ; preds = %36
  %48 = load i32, i32* @COMMON_KEEPER_EN, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %12, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %47, %43
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @CNL_PORT_PCS_DW1_GRP(i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @I915_WRITE(i32 %54, i32 %55)
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %99, %52
  %58 = load i32, i32* %11, align 4
  %59 = icmp sle i32 %58, 3
  br i1 %59, label %60, label %102

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @CNL_PORT_TX_DW4_LN(i32 %61, i32 %62)
  %64 = call i32 @I915_READ(i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* @LOADGEN_SELECT, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %12, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp sle i32 %69, 600000
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = icmp sge i32 %75, 1
  br i1 %76, label %89, label %77

77:                                               ; preds = %74, %71, %60
  %78 = load i32, i32* %10, align 4
  %79 = icmp sle i32 %78, 600000
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 4
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %93

89:                                               ; preds = %86, %83, %74
  %90 = load i32, i32* @LOADGEN_SELECT, align 4
  %91 = load i32, i32* %12, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %89, %86, %80, %77
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @CNL_PORT_TX_DW4_LN(i32 %94, i32 %95)
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @I915_WRITE(i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %57

102:                                              ; preds = %57
  %103 = load i32, i32* @CNL_PORT_CL1CM_DW5, align 4
  %104 = call i32 @I915_READ(i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* @SUS_CLOCK_CONFIG, align 4
  %106 = load i32, i32* %12, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* @CNL_PORT_CL1CM_DW5, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @I915_WRITE(i32 %108, i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @CNL_PORT_TX_DW5_LN0(i32 %111)
  %113 = call i32 @I915_READ(i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* @TX_TRAINING_EN, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %12, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @CNL_PORT_TX_DW5_GRP(i32 %118)
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @I915_WRITE(i32 %119, i32 %120)
  %122 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @cnl_ddi_vswing_program(%struct.intel_encoder* %122, i32 %123, i32 %124)
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @CNL_PORT_TX_DW5_LN0(i32 %126)
  %128 = call i32 @I915_READ(i32 %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* @TX_TRAINING_EN, align 4
  %130 = load i32, i32* %12, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @CNL_PORT_TX_DW5_GRP(i32 %132)
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @I915_WRITE(i32 %133, i32 %134)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_2__*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @CNL_PORT_PCS_DW1_LN0(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @CNL_PORT_PCS_DW1_GRP(i32) #1

declare dso_local i32 @CNL_PORT_TX_DW4_LN(i32, i32) #1

declare dso_local i32 @CNL_PORT_TX_DW5_LN0(i32) #1

declare dso_local i32 @CNL_PORT_TX_DW5_GRP(i32) #1

declare dso_local i32 @cnl_ddi_vswing_program(%struct.intel_encoder*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
