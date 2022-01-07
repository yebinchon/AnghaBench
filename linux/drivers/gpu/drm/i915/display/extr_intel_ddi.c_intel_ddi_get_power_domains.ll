; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_get_power_domains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_get_power_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { i32 }

@INTEL_OUTPUT_DP_MST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @intel_ddi_get_power_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_get_power_domains(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_digital_port*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %8 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @intel_port_to_phy(%struct.drm_i915_private* %13, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %19 = load i32, i32* @INTEL_OUTPUT_DP_MST, align 4
  %20 = call i32 @intel_crtc_has_type(%struct.intel_crtc_state* %18, i32 %19)
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %57

24:                                               ; preds = %2
  %25 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %26 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %25, i32 0, i32 0
  %27 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_4__* %26)
  store %struct.intel_digital_port* %27, %struct.intel_digital_port** %6, align 8
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %29 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %30 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @intel_display_power_get(%struct.drm_i915_private* %28, i32 %31)
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %34 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %24
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @intel_phy_is_tc(%struct.drm_i915_private* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36, %24
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %43 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %44 = call i32 @intel_ddi_main_link_aux_domain(%struct.intel_digital_port* %43)
  %45 = call i32 @intel_display_power_get(%struct.drm_i915_private* %42, i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %48 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %55 = call i32 @intel_dsc_power_domain(%struct.intel_crtc_state* %54)
  %56 = call i32 @intel_display_power_get(%struct.drm_i915_private* %53, i32 %55)
  br label %57

57:                                               ; preds = %23, %52, %46
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_port_to_phy(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_4__*) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local i64 @intel_phy_is_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_ddi_main_link_aux_domain(%struct.intel_digital_port*) #1

declare dso_local i32 @intel_dsc_power_domain(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
