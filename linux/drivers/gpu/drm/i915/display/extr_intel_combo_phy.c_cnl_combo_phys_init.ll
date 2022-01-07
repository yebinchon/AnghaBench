; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_combo_phy.c_cnl_combo_phys_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_combo_phy.c_cnl_combo_phys_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@CHICKEN_MISC_2 = common dso_local global i32 0, align 4
@CNL_COMP_PWR_DOWN = common dso_local global i32 0, align 4
@PHY_A = common dso_local global i32 0, align 4
@CNL_PORT_COMP_DW0 = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@CNL_PORT_CL1CM_DW5 = common dso_local global i32 0, align 4
@CL_POWER_DOWN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @cnl_combo_phys_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnl_combo_phys_init(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load i32, i32* @CHICKEN_MISC_2, align 4
  %5 = call i32 @I915_READ(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @CNL_COMP_PWR_DOWN, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @CHICKEN_MISC_2, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @I915_WRITE(i32 %10, i32 %11)
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %14 = load i32, i32* @PHY_A, align 4
  %15 = call i32 @cnl_set_procmon_ref_values(%struct.drm_i915_private* %13, i32 %14)
  %16 = load i32, i32* @CNL_PORT_COMP_DW0, align 4
  %17 = call i32 @I915_READ(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @COMP_INIT, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @CNL_PORT_COMP_DW0, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @I915_WRITE(i32 %21, i32 %22)
  %24 = load i32, i32* @CNL_PORT_CL1CM_DW5, align 4
  %25 = call i32 @I915_READ(i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @CL_POWER_DOWN_ENABLE, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @CNL_PORT_CL1CM_DW5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @I915_WRITE(i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @cnl_set_procmon_ref_values(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
