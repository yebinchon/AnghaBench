; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_dpm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_dpm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i64, i64, i64, i64 }
%struct.evergreen_power_info = type { i64 }

@RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ni_dpm_disable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv7xx_power_info*, align 8
  %4 = alloca %struct.evergreen_power_info*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %6)
  store %struct.rv7xx_power_info* %7, %struct.rv7xx_power_info** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %8)
  store %struct.evergreen_power_info* %9, %struct.evergreen_power_info** %4, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %13, align 8
  store %struct.radeon_ps* %14, %struct.radeon_ps** %5, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = call i32 @btc_dpm_enabled(%struct.radeon_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %103

19:                                               ; preds = %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = call i32 @rv770_clear_vc(%struct.radeon_device* %20)
  %22 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %23 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = call i32 @rv770_enable_thermal_protection(%struct.radeon_device* %27, i32 0)
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %32 = call i32 @ni_enable_power_containment(%struct.radeon_device* %30, %struct.radeon_ps* %31, i32 0)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %35 = call i32 @ni_enable_smc_cac(%struct.radeon_device* %33, %struct.radeon_ps* %34, i32 0)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = call i32 @cypress_enable_spread_spectrum(%struct.radeon_device* %36, i32 0)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = load i32, i32* @RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, align 4
  %40 = call i32 @rv770_enable_auto_throttle_source(%struct.radeon_device* %38, i32 %39, i32 0)
  %41 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %42 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = call i32 @ni_enable_dynamic_pcie_gen2(%struct.radeon_device* %46, i32 0)
  br label %48

48:                                               ; preds = %45, %29
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @r600_is_internal_thermal_sensor(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %66 = call i32 @radeon_irq_set(%struct.radeon_device* %65)
  br label %67

67:                                               ; preds = %61, %54, %48
  %68 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %69 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = call i32 @ni_gfx_clockgating_enable(%struct.radeon_device* %73, i32 0)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %77 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = call i32 @ni_mg_clockgating_enable(%struct.radeon_device* %81, i32 0)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %85 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %90 = call i32 @ni_ls_clockgating_enable(%struct.radeon_device* %89, i32 0)
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %93 = call i32 @ni_stop_dpm(%struct.radeon_device* %92)
  %94 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %95 = call i32 @btc_reset_to_default(%struct.radeon_device* %94)
  %96 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %97 = call i32 @ni_stop_smc(%struct.radeon_device* %96)
  %98 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %99 = call i32 @ni_force_switch_to_arb_f0(%struct.radeon_device* %98)
  %100 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %101 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %102 = call i32 @ni_update_current_ps(%struct.radeon_device* %100, %struct.radeon_ps* %101)
  br label %103

103:                                              ; preds = %91, %18
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @btc_dpm_enabled(%struct.radeon_device*) #1

declare dso_local i32 @rv770_clear_vc(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_thermal_protection(%struct.radeon_device*, i32) #1

declare dso_local i32 @ni_enable_power_containment(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @ni_enable_smc_cac(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @cypress_enable_spread_spectrum(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_enable_auto_throttle_source(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @ni_enable_dynamic_pcie_gen2(%struct.radeon_device*, i32) #1

declare dso_local i64 @r600_is_internal_thermal_sensor(i32) #1

declare dso_local i32 @radeon_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @ni_gfx_clockgating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @ni_mg_clockgating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @ni_ls_clockgating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @ni_stop_dpm(%struct.radeon_device*) #1

declare dso_local i32 @btc_reset_to_default(%struct.radeon_device*) #1

declare dso_local i32 @ni_stop_smc(%struct.radeon_device*) #1

declare dso_local i32 @ni_force_switch_to_arb_f0(%struct.radeon_device*) #1

declare dso_local i32 @ni_update_current_ps(%struct.radeon_device*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
