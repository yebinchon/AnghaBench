; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_enable_phy_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_enable_phy_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PORT_TC_NONE = common dso_local global i32 0, align 4
@MG_DP_MODE_CFG_TR2PWR_GATING = common dso_local global i32 0, align 4
@MG_DP_MODE_CFG_TRPWR_GATING = common dso_local global i32 0, align 4
@MG_DP_MODE_CFG_CLNPWR_GATING = common dso_local global i32 0, align 4
@MG_DP_MODE_CFG_DIGPWR_GATING = common dso_local global i32 0, align 4
@MG_DP_MODE_CFG_GAONPWR_GATING = common dso_local global i32 0, align 4
@MG_MISC_SUS0_CFG_TR2PWR_GATING = common dso_local global i32 0, align 4
@MG_MISC_SUS0_CFG_CL2PWR_GATING = common dso_local global i32 0, align 4
@MG_MISC_SUS0_CFG_GAONPWR_GATING = common dso_local global i32 0, align 4
@MG_MISC_SUS0_CFG_TRPWR_GATING = common dso_local global i32 0, align 4
@MG_MISC_SUS0_CFG_CL1PWR_GATING = common dso_local global i32 0, align 4
@MG_MISC_SUS0_CFG_DGPWR_GATING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_digital_port*)* @icl_enable_phy_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_enable_phy_clock_gating(%struct.intel_digital_port* %0) #0 {
  %2 = alloca %struct.intel_digital_port*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %2, align 8
  %8 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %9 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %3, align 8
  %14 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %15 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @intel_port_to_tc(%struct.drm_i915_private* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PORT_TC_NONE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %76

25:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %50, %25
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %53

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @MG_DP_MODE(i32 %30, i32 %31)
  %33 = call i32 @I915_READ(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @MG_DP_MODE_CFG_TR2PWR_GATING, align 4
  %35 = load i32, i32* @MG_DP_MODE_CFG_TRPWR_GATING, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @MG_DP_MODE_CFG_CLNPWR_GATING, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MG_DP_MODE_CFG_DIGPWR_GATING, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MG_DP_MODE_CFG_GAONPWR_GATING, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @MG_DP_MODE(i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @I915_WRITE(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %29
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %26

53:                                               ; preds = %26
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @MG_MISC_SUS0(i32 %54)
  %56 = call i32 @I915_READ(i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = call i32 @MG_MISC_SUS0_SUSCLK_DYNCLKGATE_MODE(i32 3)
  %58 = load i32, i32* @MG_MISC_SUS0_CFG_TR2PWR_GATING, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @MG_MISC_SUS0_CFG_CL2PWR_GATING, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @MG_MISC_SUS0_CFG_GAONPWR_GATING, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @MG_MISC_SUS0_CFG_TRPWR_GATING, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @MG_MISC_SUS0_CFG_CL1PWR_GATING, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @MG_MISC_SUS0_CFG_DGPWR_GATING, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @MG_MISC_SUS0(i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @I915_WRITE(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %53, %24
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_port_to_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @MG_DP_MODE(i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @MG_MISC_SUS0(i32) #1

declare dso_local i32 @MG_MISC_SUS0_SUSCLK_DYNCLKGATE_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
