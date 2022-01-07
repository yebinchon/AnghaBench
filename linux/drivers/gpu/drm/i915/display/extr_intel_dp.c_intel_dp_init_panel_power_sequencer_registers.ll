; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_init_panel_power_sequencer_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_init_panel_power_sequencer_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { %struct.edp_power_seq }
%struct.edp_power_seq = type { i32, i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32, i32 }
%struct.pps_registers = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PANEL_POWER_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Panel power already on\0A\00", align 1
@EDP_FORCE_VDD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"VDD already on, disabling first\0A\00", align 1
@PANEL_POWER_UP_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_LIGHT_ON_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_LIGHT_OFF_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_POWER_DOWN_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_PORT_SELECT_DPA = common dso_local global i32 0, align 4
@PANEL_PORT_SELECT_DPC = common dso_local global i32 0, align 4
@PANEL_PORT_SELECT_DPD = common dso_local global i32 0, align 4
@PP_REFERENCE_DIVIDER_MASK = common dso_local global i32 0, align 4
@PANEL_POWER_CYCLE_DELAY_MASK = common dso_local global i32 0, align 4
@BXT_POWER_CYCLE_DELAY_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [76 x i8] c"panel power sequencer register settings: PP_ON %#x, PP_OFF %#x, PP_DIV %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*, i32)* @intel_dp_init_panel_power_sequencer_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_init_panel_power_sequencer_registers(%struct.intel_dp* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pps_registers, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.edp_power_seq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %16 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %5, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 1000
  store i32 %20, i32* %9, align 4
  %21 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %22 = call %struct.TYPE_4__* @dp_to_dig_port(%struct.intel_dp* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %27 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %26, i32 0, i32 0
  store %struct.edp_power_seq* %27, %struct.edp_power_seq** %12, align 8
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 1
  %30 = call i32 @lockdep_assert_held(i32* %29)
  %31 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %32 = call i32 @intel_pps_get_registers(%struct.intel_dp* %31, %struct.pps_registers* %10)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %2
  %36 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %37 = call i32 @ironlake_get_pp_control(%struct.intel_dp* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @PANEL_POWER_ON, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @WARN(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @EDP_FORCE_VDD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %35
  %49 = load i32, i32* @EDP_FORCE_VDD, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %13, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %13, align 4
  %53 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %10, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @I915_WRITE(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %48, %2
  %58 = load i32, i32* @PANEL_POWER_UP_DELAY_MASK, align 4
  %59 = load %struct.edp_power_seq*, %struct.edp_power_seq** %12, align 8
  %60 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @REG_FIELD_PREP(i32 %58, i32 %61)
  %63 = load i32, i32* @PANEL_LIGHT_ON_DELAY_MASK, align 4
  %64 = load %struct.edp_power_seq*, %struct.edp_power_seq** %12, align 8
  %65 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @REG_FIELD_PREP(i32 %63, i32 %66)
  %68 = or i32 %62, %67
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @PANEL_LIGHT_OFF_DELAY_MASK, align 4
  %70 = load %struct.edp_power_seq*, %struct.edp_power_seq** %12, align 8
  %71 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @REG_FIELD_PREP(i32 %69, i32 %72)
  %74 = load i32, i32* @PANEL_POWER_DOWN_DELAY_MASK, align 4
  %75 = load %struct.edp_power_seq*, %struct.edp_power_seq** %12, align 8
  %76 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @REG_FIELD_PREP(i32 %74, i32 %77)
  %79 = or i32 %73, %78
  store i32 %79, i32* %7, align 4
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %81 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %57
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %85 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83, %57
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @PANEL_PORT_SELECT_VLV(i32 %88)
  store i32 %89, i32* %8, align 4
  br label %111

90:                                               ; preds = %83
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %92 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %96 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %94, %90
  %99 = load i32, i32* %11, align 4
  switch i32 %99, label %106 [
    i32 130, label %100
    i32 129, label %102
    i32 128, label %104
  ]

100:                                              ; preds = %98
  %101 = load i32, i32* @PANEL_PORT_SELECT_DPA, align 4
  store i32 %101, i32* %8, align 4
  br label %109

102:                                              ; preds = %98
  %103 = load i32, i32* @PANEL_PORT_SELECT_DPC, align 4
  store i32 %103, i32* %8, align 4
  br label %109

104:                                              ; preds = %98
  %105 = load i32, i32* @PANEL_PORT_SELECT_DPD, align 4
  store i32 %105, i32* %8, align 4
  br label %109

106:                                              ; preds = %98
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @MISSING_CASE(i32 %107)
  br label %109

109:                                              ; preds = %106, %104, %102, %100
  br label %110

110:                                              ; preds = %109, %94
  br label %111

111:                                              ; preds = %110, %87
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %6, align 4
  %115 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %10, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @I915_WRITE(i32 %116, i32 %117)
  %119 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %10, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @I915_WRITE(i32 %120, i32 %121)
  %123 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %10, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @i915_mmio_reg_valid(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %111
  %128 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %10, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PP_REFERENCE_DIVIDER_MASK, align 4
  %131 = load i32, i32* %9, align 4
  %132 = mul nsw i32 100, %131
  %133 = sdiv i32 %132, 2
  %134 = sub nsw i32 %133, 1
  %135 = call i32 @REG_FIELD_PREP(i32 %130, i32 %134)
  %136 = load i32, i32* @PANEL_POWER_CYCLE_DELAY_MASK, align 4
  %137 = load %struct.edp_power_seq*, %struct.edp_power_seq** %12, align 8
  %138 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @DIV_ROUND_UP(i32 %139, i32 1000)
  %141 = call i32 @REG_FIELD_PREP(i32 %136, i32 %140)
  %142 = or i32 %135, %141
  %143 = call i32 @I915_WRITE(i32 %129, i32 %142)
  br label %164

144:                                              ; preds = %111
  %145 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %10, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @I915_READ(i32 %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* @BXT_POWER_CYCLE_DELAY_MASK, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %14, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* @BXT_POWER_CYCLE_DELAY_MASK, align 4
  %153 = load %struct.edp_power_seq*, %struct.edp_power_seq** %12, align 8
  %154 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @DIV_ROUND_UP(i32 %155, i32 1000)
  %157 = call i32 @REG_FIELD_PREP(i32 %152, i32 %156)
  %158 = load i32, i32* %14, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %14, align 4
  %160 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %10, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @I915_WRITE(i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %144, %127
  %165 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %10, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @I915_READ(i32 %166)
  %168 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %10, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @I915_READ(i32 %169)
  %171 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %10, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @i915_mmio_reg_valid(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %164
  %176 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %10, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @I915_READ(i32 %177)
  br label %185

179:                                              ; preds = %164
  %180 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %10, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @I915_READ(i32 %181)
  %183 = load i32, i32* @BXT_POWER_CYCLE_DELAY_MASK, align 4
  %184 = and i32 %182, %183
  br label %185

185:                                              ; preds = %179, %175
  %186 = phi i32 [ %178, %175 ], [ %184, %179 ]
  %187 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %167, i32 %170, i32 %186)
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local %struct.TYPE_4__* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @intel_pps_get_registers(%struct.intel_dp*, %struct.pps_registers*) #1

declare dso_local i32 @ironlake_get_pp_control(%struct.intel_dp*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @REG_FIELD_PREP(i32, i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @PANEL_PORT_SELECT_VLV(i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i64 @i915_mmio_reg_valid(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
