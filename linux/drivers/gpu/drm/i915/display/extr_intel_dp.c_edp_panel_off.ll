; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_edp_panel_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_edp_panel_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Turn eDP port %c panel power off\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Need eDP port %c VDD to turn off panel\0A\00", align 1
@PANEL_POWER_ON = common dso_local global i32 0, align 4
@PANEL_POWER_RESET = common dso_local global i32 0, align 4
@EDP_FORCE_VDD = common dso_local global i32 0, align 4
@EDP_BLC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @edp_panel_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edp_panel_off(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %7 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %8 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %7)
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %10 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %9)
  store %struct.intel_digital_port* %10, %struct.intel_digital_port** %4, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %15 = call i32 @intel_dp_is_edp(%struct.intel_dp* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %67

18:                                               ; preds = %1
  %19 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %20 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @port_name(i32 %22)
  %24 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %26 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %32 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @port_name(i32 %34)
  %36 = call i32 @WARN(i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %38 = call i32 @ironlake_get_pp_control(%struct.intel_dp* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @PANEL_POWER_ON, align 4
  %40 = load i32, i32* @PANEL_POWER_RESET, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @EDP_FORCE_VDD, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @EDP_BLC_ENABLE, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %50 = call i32 @_pp_ctrl_reg(%struct.intel_dp* %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %52 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @I915_WRITE(i32 %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @POSTING_READ(i32 %56)
  %58 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %59 = call i32 @wait_panel_off(%struct.intel_dp* %58)
  %60 = call i32 (...) @ktime_get_boottime()
  %61 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %62 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %64 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %65 = call i32 @intel_aux_power_domain(%struct.intel_digital_port* %64)
  %66 = call i32 @intel_display_power_put_unchecked(%struct.drm_i915_private* %63, i32 %65)
  br label %67

67:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @ironlake_get_pp_control(%struct.intel_dp*) #1

declare dso_local i32 @_pp_ctrl_reg(%struct.intel_dp*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @wait_panel_off(%struct.intel_dp*) #1

declare dso_local i32 @ktime_get_boottime(...) #1

declare dso_local i32 @intel_display_power_put_unchecked(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_aux_power_domain(%struct.intel_digital_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
