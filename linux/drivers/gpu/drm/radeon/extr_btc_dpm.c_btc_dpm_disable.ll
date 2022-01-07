; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_dpm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_dpm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.rv7xx_power_info = type { i64, i64, i64, i64 }
%struct.evergreen_power_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btc_dpm_disable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv7xx_power_info*, align 8
  %4 = alloca %struct.evergreen_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %5)
  store %struct.rv7xx_power_info* %6, %struct.rv7xx_power_info** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %7)
  store %struct.evergreen_power_info* %8, %struct.evergreen_power_info** %4, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = call i32 @btc_dpm_enabled(%struct.radeon_device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %90

13:                                               ; preds = %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = call i32 @rv770_clear_vc(%struct.radeon_device* %14)
  %16 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %17 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = call i32 @rv770_enable_thermal_protection(%struct.radeon_device* %21, i32 0)
  br label %23

23:                                               ; preds = %20, %13
  %24 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %25 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %30 = call i32 @btc_enable_dynamic_pcie_gen2(%struct.radeon_device* %29, i32 0)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @r600_is_internal_thermal_sensor(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %49 = call i32 @radeon_irq_set(%struct.radeon_device* %48)
  br label %50

50:                                               ; preds = %44, %37, %31
  %51 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %52 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = call i32 @btc_cg_clock_gating_enable(%struct.radeon_device* %56, i32 0)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %60 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %65 = call i32 @btc_mg_clock_gating_enable(%struct.radeon_device* %64, i32 0)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %68 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %73 = call i32 @btc_ls_clock_gating_enable(%struct.radeon_device* %72, i32 0)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %76 = call i32 @rv770_stop_dpm(%struct.radeon_device* %75)
  %77 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %78 = call i32 @btc_reset_to_default(%struct.radeon_device* %77)
  %79 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %80 = call i32 @btc_stop_smc(%struct.radeon_device* %79)
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = call i32 @cypress_enable_spread_spectrum(%struct.radeon_device* %81, i32 0)
  %83 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %84 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @btc_update_current_ps(%struct.radeon_device* %83, i32 %88)
  br label %90

90:                                               ; preds = %74, %12
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @btc_dpm_enabled(%struct.radeon_device*) #1

declare dso_local i32 @rv770_clear_vc(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_thermal_protection(%struct.radeon_device*, i32) #1

declare dso_local i32 @btc_enable_dynamic_pcie_gen2(%struct.radeon_device*, i32) #1

declare dso_local i64 @r600_is_internal_thermal_sensor(i32) #1

declare dso_local i32 @radeon_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @btc_cg_clock_gating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @btc_mg_clock_gating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @btc_ls_clock_gating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_stop_dpm(%struct.radeon_device*) #1

declare dso_local i32 @btc_reset_to_default(%struct.radeon_device*) #1

declare dso_local i32 @btc_stop_smc(%struct.radeon_device*) #1

declare dso_local i32 @cypress_enable_spread_spectrum(%struct.radeon_device*, i32) #1

declare dso_local i32 @btc_update_current_ps(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
