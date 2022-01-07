; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_combo_phy.c_cnl_verify_procmon_ref_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_combo_phy.c_cnl_verify_procmon_ref_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.cnl_procmon = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @cnl_verify_procmon_ref_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnl_verify_procmon_ref_values(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnl_procmon*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.cnl_procmon* @cnl_get_procmon_ref_values(%struct.drm_i915_private* %7, i32 %8)
  store %struct.cnl_procmon* %9, %struct.cnl_procmon** %5, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ICL_PORT_COMP_DW1(i32 %12)
  %14 = load %struct.cnl_procmon*, %struct.cnl_procmon** %5, align 8
  %15 = getelementptr inbounds %struct.cnl_procmon, %struct.cnl_procmon* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @check_phy_reg(%struct.drm_i915_private* %10, i32 %11, i32 %13, i32 16711935, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ICL_PORT_COMP_DW9(i32 %20)
  %22 = load %struct.cnl_procmon*, %struct.cnl_procmon** %5, align 8
  %23 = getelementptr inbounds %struct.cnl_procmon, %struct.cnl_procmon* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @check_phy_reg(%struct.drm_i915_private* %18, i32 %19, i32 %21, i32 -1, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ICL_PORT_COMP_DW10(i32 %30)
  %32 = load %struct.cnl_procmon*, %struct.cnl_procmon** %5, align 8
  %33 = getelementptr inbounds %struct.cnl_procmon, %struct.cnl_procmon* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @check_phy_reg(%struct.drm_i915_private* %28, i32 %29, i32 %31, i32 -1, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.cnl_procmon* @cnl_get_procmon_ref_values(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @check_phy_reg(%struct.drm_i915_private*, i32, i32, i32, i32) #1

declare dso_local i32 @ICL_PORT_COMP_DW1(i32) #1

declare dso_local i32 @ICL_PORT_COMP_DW9(i32) #1

declare dso_local i32 @ICL_PORT_COMP_DW10(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
