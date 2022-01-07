; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_pre_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_pre_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { i64 }

@TC_PORT_TBT_ALT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_ddi_pre_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_pre_pll_enable(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_digital_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %7, align 8
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %17 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %16, i32 0, i32 1
  %18 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_2__* %17)
  store %struct.intel_digital_port* %18, %struct.intel_digital_port** %8, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %20 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %21 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @intel_port_to_phy(%struct.drm_i915_private* %19, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @intel_phy_is_tc(%struct.drm_i915_private* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %32 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @intel_tc_port_get_link(%struct.intel_digital_port* %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %3
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %37 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39, %35
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %44 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %45 = call i32 @intel_ddi_main_link_aux_domain(%struct.intel_digital_port* %44)
  %46 = call i32 @intel_display_power_get(%struct.drm_i915_private* %43, i32 %45)
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %52 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TC_PORT_TBT_ALT, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %58 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %59 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @intel_tc_port_set_fia_lane_count(%struct.intel_digital_port* %57, i32 %60)
  br label %73

62:                                               ; preds = %50, %47
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %64 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %68 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %69 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bxt_ddi_phy_set_lane_optim_mask(%struct.intel_encoder* %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %62
  br label %73

73:                                               ; preds = %72, %56
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_2__*) #1

declare dso_local i32 @intel_port_to_phy(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_phy_is_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_tc_port_get_link(%struct.intel_digital_port*, i32) #1

declare dso_local i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_ddi_main_link_aux_domain(%struct.intel_digital_port*) #1

declare dso_local i32 @intel_tc_port_set_fia_lane_count(%struct.intel_digital_port*, i32) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_ddi_phy_set_lane_optim_mask(%struct.intel_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
