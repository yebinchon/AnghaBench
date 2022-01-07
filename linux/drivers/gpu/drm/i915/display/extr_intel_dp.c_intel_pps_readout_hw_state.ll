; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_pps_readout_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_pps_readout_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.edp_power_seq = type { i32, i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.pps_registers = type { i32, i32, i32, i32 }

@PANEL_POWER_UP_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_LIGHT_ON_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_LIGHT_OFF_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_POWER_DOWN_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_POWER_CYCLE_DELAY_MASK = common dso_local global i32 0, align 4
@BXT_POWER_CYCLE_DELAY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*, %struct.edp_power_seq*)* @intel_pps_readout_hw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pps_readout_hw_state(%struct.intel_dp* %0, %struct.edp_power_seq* %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.edp_power_seq*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pps_registers, align 4
  %10 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store %struct.edp_power_seq* %1, %struct.edp_power_seq** %4, align 8
  %11 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %12 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %14 = call i32 @intel_pps_get_registers(%struct.intel_dp* %13, %struct.pps_registers* %9)
  %15 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %16 = call i32 @ironlake_get_pp_control(%struct.intel_dp* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %18 = call i32 @HAS_DDI(%struct.drm_i915_private* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %9, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @I915_WRITE(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %2
  %26 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %9, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @I915_READ(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %9, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @I915_READ(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @PANEL_POWER_UP_DELAY_MASK, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @REG_FIELD_GET(i32 %32, i32 %33)
  %35 = load %struct.edp_power_seq*, %struct.edp_power_seq** %4, align 8
  %36 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @PANEL_LIGHT_ON_DELAY_MASK, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @REG_FIELD_GET(i32 %37, i32 %38)
  %40 = load %struct.edp_power_seq*, %struct.edp_power_seq** %4, align 8
  %41 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @PANEL_LIGHT_OFF_DELAY_MASK, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @REG_FIELD_GET(i32 %42, i32 %43)
  %45 = load %struct.edp_power_seq*, %struct.edp_power_seq** %4, align 8
  %46 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @PANEL_POWER_DOWN_DELAY_MASK, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @REG_FIELD_GET(i32 %47, i32 %48)
  %50 = load %struct.edp_power_seq*, %struct.edp_power_seq** %4, align 8
  %51 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @i915_mmio_reg_valid(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %25
  %57 = getelementptr inbounds %struct.pps_registers, %struct.pps_registers* %9, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @I915_READ(i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @PANEL_POWER_CYCLE_DELAY_MASK, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @REG_FIELD_GET(i32 %60, i32 %61)
  %63 = mul nsw i32 %62, 1000
  %64 = load %struct.edp_power_seq*, %struct.edp_power_seq** %4, align 8
  %65 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  br label %73

66:                                               ; preds = %25
  %67 = load i32, i32* @BXT_POWER_CYCLE_DELAY_MASK, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @REG_FIELD_GET(i32 %67, i32 %68)
  %70 = mul nsw i32 %69, 1000
  %71 = load %struct.edp_power_seq*, %struct.edp_power_seq** %4, align 8
  %72 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %66, %56
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local i32 @intel_pps_get_registers(%struct.intel_dp*, %struct.pps_registers*) #1

declare dso_local i32 @ironlake_get_pp_control(%struct.intel_dp*) #1

declare dso_local i32 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @REG_FIELD_GET(i32, i32) #1

declare dso_local i64 @i915_mmio_reg_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
