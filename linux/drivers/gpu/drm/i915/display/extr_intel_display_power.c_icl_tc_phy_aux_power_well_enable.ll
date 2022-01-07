; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_icl_tc_phy_aux_power_well_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_icl_tc_phy_aux_power_well_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_power_well = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@DP_AUX_CH_CTL_TBT_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.i915_power_well*)* @icl_tc_phy_aux_power_well_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_tc_phy_aux_power_well_enable(%struct.drm_i915_private* %0, %struct.i915_power_well* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_power_well*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i915_power_well* %1, %struct.i915_power_well** %4, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %9 = call i32 @icl_tc_phy_aux_ch(%struct.drm_i915_private* %7, %struct.i915_power_well* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %12 = call i32 @icl_tc_port_assert_ref_held(%struct.drm_i915_private* %10, %struct.i915_power_well* %11)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @DP_AUX_CH_CTL(i32 %13)
  %15 = call i32 @I915_READ(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @DP_AUX_CH_CTL_TBT_IO, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %21 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @DP_AUX_CH_CTL_TBT_IO, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %2
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @DP_AUX_CH_CTL(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @I915_WRITE(i32 %33, i32 %34)
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %37 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %38 = call i32 @hsw_power_well_enable(%struct.drm_i915_private* %36, %struct.i915_power_well* %37)
  ret void
}

declare dso_local i32 @icl_tc_phy_aux_ch(%struct.drm_i915_private*, %struct.i915_power_well*) #1

declare dso_local i32 @icl_tc_port_assert_ref_held(%struct.drm_i915_private*, %struct.i915_power_well*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DP_AUX_CH_CTL(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @hsw_power_well_enable(%struct.drm_i915_private*, %struct.i915_power_well*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
