; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_dpm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_dpm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.ci_power_info = type { i64 }

@RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ci_dpm_disable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.ci_power_info*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %5)
  store %struct.ci_power_info* %6, %struct.ci_power_info** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %10, align 8
  store %struct.radeon_ps* %11, %struct.radeon_ps** %4, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = call i32 @ci_dpm_powergate_uvd(%struct.radeon_device* %12, i32 0)
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = call i32 @ci_is_smc_running(%struct.radeon_device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %59

18:                                               ; preds = %1
  %19 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %20 = call i32 @ci_thermal_stop_thermal_controller(%struct.radeon_device* %19)
  %21 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %22 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = call i32 @ci_enable_thermal_protection(%struct.radeon_device* %26, i32 0)
  br label %28

28:                                               ; preds = %25, %18
  %29 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %30 = call i32 @ci_enable_power_containment(%struct.radeon_device* %29, i32 0)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = call i32 @ci_enable_smc_cac(%struct.radeon_device* %31, i32 0)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = call i32 @ci_enable_didt(%struct.radeon_device* %33, i32 0)
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = call i32 @ci_enable_spread_spectrum(%struct.radeon_device* %35, i32 0)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = load i32, i32* @RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, align 4
  %39 = call i32 @ci_enable_auto_throttle_source(%struct.radeon_device* %37, i32 %38, i32 0)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = call i32 @ci_stop_dpm(%struct.radeon_device* %40)
  %42 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %43 = call i32 @ci_enable_ds_master_switch(%struct.radeon_device* %42, i32 0)
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = call i32 @ci_enable_ulv(%struct.radeon_device* %44, i32 0)
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = call i32 @ci_clear_vc(%struct.radeon_device* %46)
  %48 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %49 = call i32 @ci_reset_to_default(%struct.radeon_device* %48)
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = call i32 @ci_dpm_stop_smc(%struct.radeon_device* %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %53 = call i32 @ci_force_switch_to_arb_f0(%struct.radeon_device* %52)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = call i32 @ci_enable_thermal_based_sclk_dpm(%struct.radeon_device* %54, i32 0)
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %58 = call i32 @ci_update_current_ps(%struct.radeon_device* %56, %struct.radeon_ps* %57)
  br label %59

59:                                               ; preds = %28, %17
  ret void
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ci_dpm_powergate_uvd(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_is_smc_running(%struct.radeon_device*) #1

declare dso_local i32 @ci_thermal_stop_thermal_controller(%struct.radeon_device*) #1

declare dso_local i32 @ci_enable_thermal_protection(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_enable_power_containment(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_enable_smc_cac(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_enable_didt(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_enable_spread_spectrum(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_enable_auto_throttle_source(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @ci_stop_dpm(%struct.radeon_device*) #1

declare dso_local i32 @ci_enable_ds_master_switch(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_enable_ulv(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_clear_vc(%struct.radeon_device*) #1

declare dso_local i32 @ci_reset_to_default(%struct.radeon_device*) #1

declare dso_local i32 @ci_dpm_stop_smc(%struct.radeon_device*) #1

declare dso_local i32 @ci_force_switch_to_arb_f0(%struct.radeon_device*) #1

declare dso_local i32 @ci_enable_thermal_based_sclk_dpm(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_update_current_ps(%struct.radeon_device*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
