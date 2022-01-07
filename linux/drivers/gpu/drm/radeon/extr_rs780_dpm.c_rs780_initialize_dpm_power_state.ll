; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_initialize_dpm_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_initialize_dpm_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.atom_clock_dividers = type { i64, i32, i32, i32 }
%struct.igp_ps = type { i32 }

@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@R600_SST_DFLT = common dso_local global i32 0, align 4
@R600_PM_NUMBER_OF_SCLKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*)* @rs780_initialize_dpm_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs780_initialize_dpm_power_state(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.atom_clock_dividers, align 8
  %7 = alloca %struct.igp_ps*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  %10 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %11 = call %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps* %10)
  store %struct.igp_ps* %11, %struct.igp_ps** %7, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %14 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %15 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %12, i32 %13, i32 %16, i32 0, %struct.atom_clock_dividers* %6)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %68

22:                                               ; preds = %2
  %23 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %24 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %6, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @r600_engine_clock_entry_set_reference_divider(%struct.radeon_device* %23, i32 0, i32 %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %6, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @r600_engine_clock_entry_set_feedback_divider(%struct.radeon_device* %27, i32 0, i32 %29)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %32 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %6, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @r600_engine_clock_entry_set_post_divider(%struct.radeon_device* %31, i32 0, i32 %33)
  %35 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %6, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %40 = call i32 @r600_engine_clock_entry_enable_post_divider(%struct.radeon_device* %39, i32 0, i32 1)
  br label %44

41:                                               ; preds = %22
  %42 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %43 = call i32 @r600_engine_clock_entry_enable_post_divider(%struct.radeon_device* %42, i32 0, i32 0)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %46 = load i32, i32* @R600_SST_DFLT, align 4
  %47 = call i32 @r600_engine_clock_entry_set_step_time(%struct.radeon_device* %45, i32 0, i32 %46)
  %48 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %49 = call i32 @r600_engine_clock_entry_enable_pulse_skipping(%struct.radeon_device* %48, i32 0, i32 0)
  %50 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %51 = call i32 @r600_engine_clock_entry_enable(%struct.radeon_device* %50, i32 0, i32 1)
  store i32 1, i32* %8, align 4
  br label %52

52:                                               ; preds = %60, %44
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @R600_PM_NUMBER_OF_SCLKS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @r600_engine_clock_entry_enable(%struct.radeon_device* %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %52

63:                                               ; preds = %52
  %64 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %65 = call i32 @r600_enable_mclk_control(%struct.radeon_device* %64, i32 0)
  %66 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %67 = call i32 @r600_voltage_control_enable_pins(%struct.radeon_device* %66, i32 0)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %20
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @r600_engine_clock_entry_set_reference_divider(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_engine_clock_entry_set_feedback_divider(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_engine_clock_entry_set_post_divider(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_engine_clock_entry_enable_post_divider(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_engine_clock_entry_set_step_time(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_engine_clock_entry_enable_pulse_skipping(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_engine_clock_entry_enable(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_enable_mclk_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_voltage_control_enable_pins(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
