; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_icl_combo_phy_aux_power_well_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_icl_combo_phy_aux_power_well_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_power_well = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.i915_power_well_regs* }
%struct.i915_power_well_regs = type { i32 }

@ICL_LANE_ENABLE_AUX = common dso_local global i32 0, align 4
@ICL_PW_CTL_IDX_AUX_C = common dso_local global i32 0, align 4
@ICL_PW_CTL_IDX_AUX_B = common dso_local global i32 0, align 4
@ICL_PW_CTL_IDX_AUX_A = common dso_local global i32 0, align 4
@ICL_AUX_ANAOVRD1_ENABLE = common dso_local global i32 0, align 4
@ICL_AUX_ANAOVRD1_LDO_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.i915_power_well*)* @icl_combo_phy_aux_power_well_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_combo_phy_aux_power_well_enable(%struct.drm_i915_private* %0, %struct.i915_power_well* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_power_well*, align 8
  %5 = alloca %struct.i915_power_well_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i915_power_well* %1, %struct.i915_power_well** %4, align 8
  %10 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %11 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.i915_power_well_regs*, %struct.i915_power_well_regs** %14, align 8
  store %struct.i915_power_well_regs* %15, %struct.i915_power_well_regs** %5, align 8
  %16 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %17 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ICL_AUX_PW_TO_PHY(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.i915_power_well_regs*, %struct.i915_power_well_regs** %5, align 8
  %25 = getelementptr inbounds %struct.i915_power_well_regs, %struct.i915_power_well_regs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @I915_READ(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.i915_power_well_regs*, %struct.i915_power_well_regs** %5, align 8
  %29 = getelementptr inbounds %struct.i915_power_well_regs, %struct.i915_power_well_regs* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @HSW_PWR_WELL_CTL_REQ(i32 %32)
  %34 = or i32 %31, %33
  %35 = call i32 @I915_WRITE(i32 %30, i32 %34)
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %37 = call i32 @INTEL_GEN(%struct.drm_i915_private* %36)
  %38 = icmp slt i32 %37, 12
  br i1 %38, label %39, label %49

39:                                               ; preds = %2
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ICL_PORT_CL_DW12(i32 %40)
  %42 = call i32 @I915_READ(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ICL_PORT_CL_DW12(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @ICL_LANE_ENABLE_AUX, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @I915_WRITE(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %39, %2
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %51 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %52 = call i32 @hsw_wait_for_power_well_enable(%struct.drm_i915_private* %50, %struct.i915_power_well* %51)
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %54 = call i64 @IS_TIGERLAKE(%struct.drm_i915_private* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @ICL_PW_CTL_IDX_AUX_C, align 4
  store i32 %57, i32* %9, align 4
  br label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @ICL_PW_CTL_IDX_AUX_B, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %62 = call i32 @IS_ELKHARTLAKE(%struct.drm_i915_private* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %90, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ICL_PW_CTL_IDX_AUX_A, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @intel_bios_is_port_edp(%struct.drm_i915_private* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @ICL_AUX_ANAOVRD1(i32 %78)
  %80 = call i32 @I915_READ(i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* @ICL_AUX_ANAOVRD1_ENABLE, align 4
  %82 = load i32, i32* @ICL_AUX_ANAOVRD1_LDO_BYPASS, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @ICL_AUX_ANAOVRD1(i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @I915_WRITE(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %77, %72, %68, %64, %60
  ret void
}

declare dso_local i32 @ICL_AUX_PW_TO_PHY(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @HSW_PWR_WELL_CTL_REQ(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @ICL_PORT_CL_DW12(i32) #1

declare dso_local i32 @hsw_wait_for_power_well_enable(%struct.drm_i915_private*, %struct.i915_power_well*) #1

declare dso_local i64 @IS_TIGERLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_ELKHARTLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_bios_is_port_edp(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @ICL_AUX_ANAOVRD1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
