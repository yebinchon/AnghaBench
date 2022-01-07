; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_dpm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_dpm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.igp_power_info = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs780_dpm_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.igp_power_info*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call %struct.igp_power_info* @rs780_get_pi(%struct.radeon_device* %7)
  store %struct.igp_power_info* %8, %struct.igp_power_info** %4, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.radeon_ps*, %struct.radeon_ps** %12, align 8
  store %struct.radeon_ps* %13, %struct.radeon_ps** %5, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = call i32 @rs780_get_pm_mode_parameters(%struct.radeon_device* %14)
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = call i32 @rs780_disable_vbios_powersaving(%struct.radeon_device* %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i64 @r600_dynamicpm_enabled(%struct.radeon_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %67

24:                                               ; preds = %1
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %27 = call i32 @rs780_initialize_dpm_parameters(%struct.radeon_device* %25, %struct.radeon_ps* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %67

32:                                               ; preds = %24
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = call i32 @rs780_start_dpm(%struct.radeon_device* %33)
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = call i32 @rs780_preset_ranges_slow_clk_fbdiv_en(%struct.radeon_device* %35)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = call i32 @rs780_preset_starting_fbdiv(%struct.radeon_device* %37)
  %39 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %40 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = call i32 @rs780_voltage_scaling_init(%struct.radeon_device* %44)
  br label %46

46:                                               ; preds = %43, %32
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = call i32 @rs780_clk_scaling_enable(%struct.radeon_device* %47, i32 1)
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = call i32 @rs780_set_engine_clock_sc(%struct.radeon_device* %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = call i32 @rs780_set_engine_clock_wfc(%struct.radeon_device* %51)
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = call i32 @rs780_program_at(%struct.radeon_device* %53)
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = call i32 @rs780_set_engine_clock_tdc(%struct.radeon_device* %55)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = call i32 @rs780_set_engine_clock_ssc(%struct.radeon_device* %57)
  %59 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %60 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %46
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = call i32 @r600_gfx_clockgating_enable(%struct.radeon_device* %64, i32 1)
  br label %66

66:                                               ; preds = %63, %46
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %30, %21
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.igp_power_info* @rs780_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rs780_get_pm_mode_parameters(%struct.radeon_device*) #1

declare dso_local i32 @rs780_disable_vbios_powersaving(%struct.radeon_device*) #1

declare dso_local i64 @r600_dynamicpm_enabled(%struct.radeon_device*) #1

declare dso_local i32 @rs780_initialize_dpm_parameters(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @rs780_start_dpm(%struct.radeon_device*) #1

declare dso_local i32 @rs780_preset_ranges_slow_clk_fbdiv_en(%struct.radeon_device*) #1

declare dso_local i32 @rs780_preset_starting_fbdiv(%struct.radeon_device*) #1

declare dso_local i32 @rs780_voltage_scaling_init(%struct.radeon_device*) #1

declare dso_local i32 @rs780_clk_scaling_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @rs780_set_engine_clock_sc(%struct.radeon_device*) #1

declare dso_local i32 @rs780_set_engine_clock_wfc(%struct.radeon_device*) #1

declare dso_local i32 @rs780_program_at(%struct.radeon_device*) #1

declare dso_local i32 @rs780_set_engine_clock_tdc(%struct.radeon_device*) #1

declare dso_local i32 @rs780_set_engine_clock_ssc(%struct.radeon_device*) #1

declare dso_local i32 @r600_gfx_clockgating_enable(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
