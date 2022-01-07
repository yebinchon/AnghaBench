; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_dpm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_dpm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i64 }

@RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @si_dpm_disable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv7xx_power_info*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %5)
  store %struct.rv7xx_power_info* %6, %struct.rv7xx_power_info** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %10, align 8
  store %struct.radeon_ps* %11, %struct.radeon_ps** %4, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = call i32 @si_is_smc_running(%struct.radeon_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %53

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = call i32 @si_thermal_stop_thermal_controller(%struct.radeon_device* %17)
  %19 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %20 = call i32 @si_disable_ulv(%struct.radeon_device* %19)
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = call i32 @si_clear_vc(%struct.radeon_device* %21)
  %23 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %24 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %29 = call i32 @si_enable_thermal_protection(%struct.radeon_device* %28, i32 0)
  br label %30

30:                                               ; preds = %27, %16
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %33 = call i32 @si_enable_power_containment(%struct.radeon_device* %31, %struct.radeon_ps* %32, i32 0)
  %34 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %35 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %36 = call i32 @si_enable_smc_cac(%struct.radeon_device* %34, %struct.radeon_ps* %35, i32 0)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = call i32 @si_enable_spread_spectrum(%struct.radeon_device* %37, i32 0)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = load i32, i32* @RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, align 4
  %41 = call i32 @si_enable_auto_throttle_source(%struct.radeon_device* %39, i32 %40, i32 0)
  %42 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %43 = call i32 @si_stop_dpm(%struct.radeon_device* %42)
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = call i32 @si_reset_to_default(%struct.radeon_device* %44)
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = call i32 @si_dpm_stop_smc(%struct.radeon_device* %46)
  %48 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %49 = call i32 @si_force_switch_to_arb_f0(%struct.radeon_device* %48)
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %52 = call i32 @ni_update_current_ps(%struct.radeon_device* %50, %struct.radeon_ps* %51)
  br label %53

53:                                               ; preds = %30, %15
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @si_is_smc_running(%struct.radeon_device*) #1

declare dso_local i32 @si_thermal_stop_thermal_controller(%struct.radeon_device*) #1

declare dso_local i32 @si_disable_ulv(%struct.radeon_device*) #1

declare dso_local i32 @si_clear_vc(%struct.radeon_device*) #1

declare dso_local i32 @si_enable_thermal_protection(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_enable_power_containment(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @si_enable_smc_cac(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @si_enable_spread_spectrum(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_enable_auto_throttle_source(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @si_stop_dpm(%struct.radeon_device*) #1

declare dso_local i32 @si_reset_to_default(%struct.radeon_device*) #1

declare dso_local i32 @si_dpm_stop_smc(%struct.radeon_device*) #1

declare dso_local i32 @si_force_switch_to_arb_f0(%struct.radeon_device*) #1

declare dso_local i32 @ni_update_current_ps(%struct.radeon_device*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
