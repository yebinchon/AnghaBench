; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_gen9_disable_dc_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_gen9_disable_dc_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.drm_i915_private.0*, %struct.intel_cdclk_state*)* }
%struct.drm_i915_private.0 = type opaque
%struct.intel_cdclk_state = type { i32 }

@DC_STATE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @gen9_disable_dc_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen9_disable_dc_states(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_cdclk_state, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = bitcast %struct.intel_cdclk_state* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 4, i1 false)
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = load i32, i32* @DC_STATE_DISABLE, align 4
  %7 = call i32 @gen9_set_dc_state(%struct.drm_i915_private* %5, i32 %6)
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32 (%struct.drm_i915_private.0*, %struct.intel_cdclk_state*)*, i32 (%struct.drm_i915_private.0*, %struct.intel_cdclk_state*)** %10, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %13 = bitcast %struct.drm_i915_private* %12 to %struct.drm_i915_private.0*
  %14 = call i32 %11(%struct.drm_i915_private.0* %13, %struct.intel_cdclk_state* %3)
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @intel_cdclk_needs_modeset(i32* %17, %struct.intel_cdclk_state* %3)
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = call i32 @gen9_assert_dbuf_enabled(%struct.drm_i915_private* %20)
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = call i32 @bxt_verify_ddi_phy_power_wells(%struct.drm_i915_private* %26)
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %30 = call i32 @INTEL_GEN(%struct.drm_i915_private* %29)
  %31 = icmp sge i32 %30, 11
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %34 = call i32 @intel_combo_phy_init(%struct.drm_i915_private* %33)
  br label %35

35:                                               ; preds = %32, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gen9_set_dc_state(%struct.drm_i915_private*, i32) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @intel_cdclk_needs_modeset(i32*, %struct.intel_cdclk_state*) #2

declare dso_local i32 @gen9_assert_dbuf_enabled(%struct.drm_i915_private*) #2

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #2

declare dso_local i32 @bxt_verify_ddi_phy_power_wells(%struct.drm_i915_private*) #2

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #2

declare dso_local i32 @intel_combo_phy_init(%struct.drm_i915_private*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
