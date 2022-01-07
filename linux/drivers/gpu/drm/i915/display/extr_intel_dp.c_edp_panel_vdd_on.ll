; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_edp_panel_vdd_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_edp_panel_vdd_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Turning eDP port %c VDD on\0A\00", align 1
@EDP_FORCE_VDD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"eDP port %c panel power wasn't enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @edp_panel_vdd_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edp_panel_vdd_on(%struct.intel_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_digital_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  %10 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %11 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %4, align 8
  %12 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %13 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %12)
  store %struct.intel_digital_port* %13, %struct.intel_digital_port** %5, align 8
  %14 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %15 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 0
  %22 = call i32 @lockdep_assert_held(i32* %21)
  %23 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %24 = call i32 @intel_dp_is_edp(%struct.intel_dp* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %91

27:                                               ; preds = %1
  %28 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %29 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %28, i32 0, i32 2
  %30 = call i32 @cancel_delayed_work(i32* %29)
  %31 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %32 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %34 = call i64 @edp_have_panel_vdd(%struct.intel_dp* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %2, align 4
  br label %91

38:                                               ; preds = %27
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %40 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %41 = call i32 @intel_aux_power_domain(%struct.intel_digital_port* %40)
  %42 = call i32 @intel_display_power_get(%struct.drm_i915_private* %39, i32 %41)
  %43 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %44 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @port_name(i32 %46)
  %48 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %50 = call i32 @edp_have_panel_power(%struct.intel_dp* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %38
  %53 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %54 = call i32 @wait_panel_power_cycle(%struct.intel_dp* %53)
  br label %55

55:                                               ; preds = %52, %38
  %56 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %57 = call i32 @ironlake_get_pp_control(%struct.intel_dp* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @EDP_FORCE_VDD, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %62 = call i32 @_pp_stat_reg(%struct.intel_dp* %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %64 = call i32 @_pp_ctrl_reg(%struct.intel_dp* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @I915_WRITE(i32 %65, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @POSTING_READ(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @I915_READ(i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @I915_READ(i32 %72)
  %74 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %73)
  %75 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %76 = call i32 @edp_have_panel_power(%struct.intel_dp* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %55
  %79 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %80 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @port_name(i32 %82)
  %84 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %86 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @msleep(i32 %87)
  br label %89

89:                                               ; preds = %78, %55
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %36, %26
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i64 @edp_have_panel_vdd(%struct.intel_dp*) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_aux_power_domain(%struct.intel_digital_port*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @edp_have_panel_power(%struct.intel_dp*) #1

declare dso_local i32 @wait_panel_power_cycle(%struct.intel_dp*) #1

declare dso_local i32 @ironlake_get_pp_control(%struct.intel_dp*) #1

declare dso_local i32 @_pp_stat_reg(%struct.intel_dp*) #1

declare dso_local i32 @_pp_ctrl_reg(%struct.intel_dp*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
