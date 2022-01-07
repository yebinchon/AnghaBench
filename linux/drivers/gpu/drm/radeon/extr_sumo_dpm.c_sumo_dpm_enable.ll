; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_dpm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_dpm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sumo_power_info = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SUMO_VRC_DFLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sumo_dpm_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.sumo_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %5)
  store %struct.sumo_power_info* %6, %struct.sumo_power_info** %4, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call i64 @sumo_dpm_enabled(%struct.radeon_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %76

13:                                               ; preds = %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = call i32 @sumo_program_bootup_state(%struct.radeon_device* %14)
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = call i32 @sumo_init_bsp(%struct.radeon_device* %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i32 @sumo_reset_am(%struct.radeon_device* %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i32 @sumo_program_tp(%struct.radeon_device* %20)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = call i32 @sumo_program_bootup_at(%struct.radeon_device* %22)
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = call i32 @sumo_start_am(%struct.radeon_device* %24)
  %26 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %27 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %13
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = call i32 @sumo_program_ttp(%struct.radeon_device* %31)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = call i32 @sumo_program_ttt(%struct.radeon_device* %33)
  br label %35

35:                                               ; preds = %30, %13
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = call i32 @sumo_program_dc_hto(%struct.radeon_device* %36)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = call i32 @sumo_program_power_level_enter_state(%struct.radeon_device* %38)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = call i32 @sumo_enable_voltage_scaling(%struct.radeon_device* %40, i32 1)
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = call i32 @sumo_program_sstp(%struct.radeon_device* %42)
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = load i32, i32* @SUMO_VRC_DFLT, align 4
  %46 = call i32 @sumo_program_vc(%struct.radeon_device* %44, i32 %45)
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = call i32 @sumo_override_cnb_thermal_events(%struct.radeon_device* %47)
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = call i32 @sumo_start_dpm(%struct.radeon_device* %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = call i32 @sumo_wait_for_level_0(%struct.radeon_device* %51)
  %53 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %54 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %35
  %58 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %59 = call i32 @sumo_enable_sclk_ds(%struct.radeon_device* %58, i32 1)
  br label %60

60:                                               ; preds = %57, %35
  %61 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %62 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = call i32 @sumo_enable_boost_timer(%struct.radeon_device* %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sumo_update_current_ps(%struct.radeon_device* %69, i32 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %68, %10
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @sumo_dpm_enabled(%struct.radeon_device*) #1

declare dso_local i32 @sumo_program_bootup_state(%struct.radeon_device*) #1

declare dso_local i32 @sumo_init_bsp(%struct.radeon_device*) #1

declare dso_local i32 @sumo_reset_am(%struct.radeon_device*) #1

declare dso_local i32 @sumo_program_tp(%struct.radeon_device*) #1

declare dso_local i32 @sumo_program_bootup_at(%struct.radeon_device*) #1

declare dso_local i32 @sumo_start_am(%struct.radeon_device*) #1

declare dso_local i32 @sumo_program_ttp(%struct.radeon_device*) #1

declare dso_local i32 @sumo_program_ttt(%struct.radeon_device*) #1

declare dso_local i32 @sumo_program_dc_hto(%struct.radeon_device*) #1

declare dso_local i32 @sumo_program_power_level_enter_state(%struct.radeon_device*) #1

declare dso_local i32 @sumo_enable_voltage_scaling(%struct.radeon_device*, i32) #1

declare dso_local i32 @sumo_program_sstp(%struct.radeon_device*) #1

declare dso_local i32 @sumo_program_vc(%struct.radeon_device*, i32) #1

declare dso_local i32 @sumo_override_cnb_thermal_events(%struct.radeon_device*) #1

declare dso_local i32 @sumo_start_dpm(%struct.radeon_device*) #1

declare dso_local i32 @sumo_wait_for_level_0(%struct.radeon_device*) #1

declare dso_local i32 @sumo_enable_sclk_ds(%struct.radeon_device*, i32) #1

declare dso_local i32 @sumo_enable_boost_timer(%struct.radeon_device*) #1

declare dso_local i32 @sumo_update_current_ps(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
