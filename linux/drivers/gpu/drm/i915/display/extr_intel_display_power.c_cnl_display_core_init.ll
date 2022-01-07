; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_cnl_display_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_cnl_display_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__, %struct.i915_power_domains }
%struct.TYPE_2__ = type { i64 }
%struct.i915_power_domains = type { i32 }
%struct.i915_power_well = type { i32 }

@DC_STATE_DISABLE = common dso_local global i32 0, align 4
@SKL_DISP_PW_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @cnl_display_core_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnl_display_core_init(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_power_domains*, align 8
  %6 = alloca %struct.i915_power_well*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 1
  store %struct.i915_power_domains* %8, %struct.i915_power_domains** %5, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = load i32, i32* @DC_STATE_DISABLE, align 4
  %11 = call i32 @gen9_set_dc_state(%struct.drm_i915_private* %9, i32 %10)
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = call i32 @HAS_PCH_NOP(%struct.drm_i915_private* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @intel_pch_reset_handshake(%struct.drm_i915_private* %12, i32 %17)
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = call i32 @intel_combo_phy_init(%struct.drm_i915_private* %19)
  %21 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %22 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %25 = load i32, i32* @SKL_DISP_PW_1, align 4
  %26 = call %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private* %24, i32 %25)
  store %struct.i915_power_well* %26, %struct.i915_power_well** %6, align 8
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = load %struct.i915_power_well*, %struct.i915_power_well** %6, align 8
  %29 = call i32 @intel_power_well_enable(%struct.drm_i915_private* %27, %struct.i915_power_well* %28)
  %30 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %31 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = call i32 @intel_cdclk_init(%struct.drm_i915_private* %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = call i32 @gen9_dbuf_enable(%struct.drm_i915_private* %35)
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %2
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %41 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %47 = call i32 @intel_csr_load_program(%struct.drm_i915_private* %46)
  br label %48

48:                                               ; preds = %45, %39, %2
  ret void
}

declare dso_local i32 @gen9_set_dc_state(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_pch_reset_handshake(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @HAS_PCH_NOP(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_combo_phy_init(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_power_well_enable(%struct.drm_i915_private*, %struct.i915_power_well*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_cdclk_init(%struct.drm_i915_private*) #1

declare dso_local i32 @gen9_dbuf_enable(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_csr_load_program(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
