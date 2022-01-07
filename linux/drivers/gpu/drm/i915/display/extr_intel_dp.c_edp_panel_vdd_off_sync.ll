; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_edp_panel_vdd_off_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_edp_panel_vdd_off_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Turning eDP port %c VDD off\0A\00", align 1
@EDP_FORCE_VDD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\0A\00", align 1
@PANEL_POWER_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @edp_panel_vdd_off_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edp_panel_vdd_off_sync(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %8 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %9 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %8)
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %3, align 8
  %10 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %11 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %10)
  store %struct.intel_digital_port* %11, %struct.intel_digital_port** %4, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %16 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %20 = call i32 @edp_have_panel_vdd(%struct.intel_dp* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %63

23:                                               ; preds = %1
  %24 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %25 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @port_name(i32 %27)
  %29 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %31 = call i32 @ironlake_get_pp_control(%struct.intel_dp* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @EDP_FORCE_VDD, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %37 = call i32 @_pp_ctrl_reg(%struct.intel_dp* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %39 = call i32 @_pp_stat_reg(%struct.intel_dp* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @I915_WRITE(i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @POSTING_READ(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @I915_READ(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @I915_READ(i32 %47)
  %49 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @PANEL_POWER_ON, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %23
  %55 = call i32 (...) @ktime_get_boottime()
  %56 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %57 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %23
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %60 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %61 = call i32 @intel_aux_power_domain(%struct.intel_digital_port* %60)
  %62 = call i32 @intel_display_power_put_unchecked(%struct.drm_i915_private* %59, i32 %61)
  br label %63

63:                                               ; preds = %58, %22
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @edp_have_panel_vdd(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @ironlake_get_pp_control(%struct.intel_dp*) #1

declare dso_local i32 @_pp_ctrl_reg(%struct.intel_dp*) #1

declare dso_local i32 @_pp_stat_reg(%struct.intel_dp*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @ktime_get_boottime(...) #1

declare dso_local i32 @intel_display_power_put_unchecked(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_aux_power_domain(%struct.intel_digital_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
