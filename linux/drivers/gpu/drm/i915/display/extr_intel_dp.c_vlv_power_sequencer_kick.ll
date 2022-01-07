; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_vlv_power_sequencer_kick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_vlv_power_sequencer_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.intel_dp = type { i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DP_PORT_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"skipping pipe %c power sequencer kick due to port %c being active\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"kicking pipe %c power sequencer for port %c\0A\00", align 1
@DP_DETECTED = common dso_local global i32 0, align 4
@DP_VOLTAGE_0_4 = common dso_local global i32 0, align 4
@DP_PRE_EMPHASIS_0 = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_PAT_1 = common dso_local global i32 0, align 4
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@chv_dpll = common dso_local global %struct.TYPE_6__* null, align 8
@vlv_dpll = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to force on pll for pipe %c!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @vlv_power_sequencer_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_power_sequencer_kick(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %11 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %12 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %3, align 8
  %13 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %14 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %13)
  store %struct.intel_digital_port* %14, %struct.intel_digital_port** %4, align 8
  %15 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %16 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @DPIO_PHY(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @vlv_pipe_to_channel(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %23 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @I915_READ(i32 %24)
  %26 = load i32, i32* @DP_PORT_EN, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @pipe_name(i32 %28)
  %30 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %31 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @port_name(i32 %33)
  %35 = call i64 @WARN(i32 %27, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  br label %168

38:                                               ; preds = %1
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @pipe_name(i32 %39)
  %41 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %42 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @port_name(i32 %44)
  %46 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %45)
  %47 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %48 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @I915_READ(i32 %49)
  %51 = load i32, i32* @DP_DETECTED, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* @DP_VOLTAGE_0_4, align 4
  %54 = load i32, i32* @DP_PRE_EMPHASIS_0, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = call i32 @DP_PORT_WIDTH(i32 1)
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* @DP_LINK_TRAIN_PAT_1, align 4
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %65 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %38
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @DP_PIPE_SEL_CHV(i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %77

72:                                               ; preds = %38
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @DP_PIPE_SEL(i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @DPLL(i32 %78)
  %80 = call i32 @I915_READ(i32 %79)
  %81 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %121, label %85

85:                                               ; preds = %77
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %87 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @chv_phy_powergate_ch(%struct.drm_i915_private* %90, i32 %91, i32 %92, i32 1)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br label %96

96:                                               ; preds = %89, %85
  %97 = phi i1 [ false, %85 ], [ %95, %89 ]
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %7, align 4
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %102 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** @chv_dpll, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  br label %112

108:                                              ; preds = %96
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vlv_dpll, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i32* [ %107, %104 ], [ %111, %108 ]
  %114 = call i64 @vlv_force_pll_on(%struct.drm_i915_private* %99, i32 %100, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @pipe_name(i32 %117)
  %119 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  br label %168

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %120, %77
  %122 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %123 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @I915_WRITE(i32 %124, i32 %125)
  %127 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %128 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @POSTING_READ(i32 %129)
  %131 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %132 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @DP_PORT_EN, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @I915_WRITE(i32 %133, i32 %136)
  %138 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %139 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @POSTING_READ(i32 %140)
  %142 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %143 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @DP_PORT_EN, align 4
  %147 = xor i32 %146, -1
  %148 = and i32 %145, %147
  %149 = call i32 @I915_WRITE(i32 %144, i32 %148)
  %150 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %151 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @POSTING_READ(i32 %152)
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %121
  %157 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @vlv_force_pll_off(%struct.drm_i915_private* %157, i32 %158)
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @chv_phy_powergate_ch(%struct.drm_i915_private* %163, i32 %164, i32 %165, i32 0)
  br label %167

167:                                              ; preds = %162, %156
  br label %168

168:                                              ; preds = %37, %116, %167, %121
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @DPIO_PHY(i32) #1

declare dso_local i32 @vlv_pipe_to_channel(i32) #1

declare dso_local i64 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @DP_PORT_WIDTH(i32) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @DP_PIPE_SEL_CHV(i32) #1

declare dso_local i32 @DP_PIPE_SEL(i32) #1

declare dso_local i32 @DPLL(i32) #1

declare dso_local i32 @chv_phy_powergate_ch(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i64 @vlv_force_pll_on(%struct.drm_i915_private*, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @vlv_force_pll_off(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
