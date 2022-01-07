; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_skl_display_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_skl_display_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__, %struct.i915_power_domains }
%struct.TYPE_2__ = type { i64 }
%struct.i915_power_domains = type { i32 }
%struct.i915_power_well = type { i32 }

@DC_STATE_DISABLE = common dso_local global i32 0, align 4
@SKL_DISP_PW_1 = common dso_local global i32 0, align 4
@SKL_DISP_PW_MISC_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @skl_display_core_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_display_core_init(%struct.drm_i915_private* %0, i32 %1) #0 {
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
  %19 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %20 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = load i32, i32* @SKL_DISP_PW_1, align 4
  %24 = call %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private* %22, i32 %23)
  store %struct.i915_power_well* %24, %struct.i915_power_well** %6, align 8
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = load %struct.i915_power_well*, %struct.i915_power_well** %6, align 8
  %27 = call i32 @intel_power_well_enable(%struct.drm_i915_private* %25, %struct.i915_power_well* %26)
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = load i32, i32* @SKL_DISP_PW_MISC_IO, align 4
  %30 = call %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private* %28, i32 %29)
  store %struct.i915_power_well* %30, %struct.i915_power_well** %6, align 8
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %32 = load %struct.i915_power_well*, %struct.i915_power_well** %6, align 8
  %33 = call i32 @intel_power_well_enable(%struct.drm_i915_private* %31, %struct.i915_power_well* %32)
  %34 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %35 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = call i32 @intel_cdclk_init(%struct.drm_i915_private* %37)
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = call i32 @gen9_dbuf_enable(%struct.drm_i915_private* %39)
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %2
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %45 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %51 = call i32 @intel_csr_load_program(%struct.drm_i915_private* %50)
  br label %52

52:                                               ; preds = %49, %43, %2
  ret void
}

declare dso_local i32 @gen9_set_dc_state(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_pch_reset_handshake(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @HAS_PCH_NOP(%struct.drm_i915_private*) #1

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
