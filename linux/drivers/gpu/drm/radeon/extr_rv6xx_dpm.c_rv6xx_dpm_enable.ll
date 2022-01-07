; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_dpm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_dpm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.rv6xx_power_info = type { i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_BACKBIAS = common dso_local global i32 0, align 4
@R600_POWER_LEVEL_LOW = common dso_local global i32 0, align 4
@R600_POWER_LEVEL_MEDIUM = common dso_local global i32 0, align 4
@R600_POWER_LEVEL_HIGH = common dso_local global i32 0, align 4
@RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv6xx_dpm_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv6xx_power_info*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device* %6)
  store %struct.rv6xx_power_info* %7, %struct.rv6xx_power_info** %4, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.radeon_ps*, %struct.radeon_ps** %11, align 8
  store %struct.radeon_ps* %12, %struct.radeon_ps** %5, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call i64 @r600_dynamicpm_enabled(%struct.radeon_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %140

19:                                               ; preds = %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ATOM_PP_PLATFORM_CAP_BACKBIAS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = call i32 @rv6xx_enable_backbias(%struct.radeon_device* %29, i32 1)
  br label %31

31:                                               ; preds = %28, %19
  %32 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %4, align 8
  %33 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = call i32 @rv6xx_enable_spread_spectrum(%struct.radeon_device* %37, i32 1)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = call i32 @rv6xx_program_mpll_timing_parameters(%struct.radeon_device* %40)
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = call i32 @rv6xx_program_bsp(%struct.radeon_device* %42)
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = call i32 @rv6xx_program_git(%struct.radeon_device* %44)
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = call i32 @rv6xx_program_tp(%struct.radeon_device* %46)
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = call i32 @rv6xx_program_tpp(%struct.radeon_device* %48)
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = call i32 @rv6xx_program_sstp(%struct.radeon_device* %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %53 = call i32 @rv6xx_program_fcp(%struct.radeon_device* %52)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = call i32 @rv6xx_program_vddc3d_parameters(%struct.radeon_device* %54)
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = call i32 @rv6xx_program_voltage_timing_parameters(%struct.radeon_device* %56)
  %58 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %59 = call i32 @rv6xx_program_engine_speed_parameters(%struct.radeon_device* %58)
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = call i32 @rv6xx_enable_display_gap(%struct.radeon_device* %60, i32 1)
  %62 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %4, align 8
  %63 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %39
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = call i32 @rv6xx_enable_display_gap(%struct.radeon_device* %67, i32 0)
  br label %69

69:                                               ; preds = %66, %39
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = call i32 @rv6xx_program_power_level_enter_state(%struct.radeon_device* %70)
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %74 = call i32 @rv6xx_calculate_stepping_parameters(%struct.radeon_device* %72, %struct.radeon_ps* %73)
  %75 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %4, align 8
  %76 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %81 = call i32 @rv6xx_program_voltage_gpio_pins(%struct.radeon_device* %80)
  br label %82

82:                                               ; preds = %79, %69
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %85 = call i32 @rv6xx_generate_stepping_table(%struct.radeon_device* %83, %struct.radeon_ps* %84)
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = call i32 @rv6xx_program_stepping_parameters_except_lowest_entry(%struct.radeon_device* %86)
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = call i32 @rv6xx_program_stepping_parameters_lowest_entry(%struct.radeon_device* %88)
  %90 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %91 = call i32 @rv6xx_program_power_level_low(%struct.radeon_device* %90)
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = call i32 @rv6xx_program_power_level_medium(%struct.radeon_device* %92)
  %94 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %95 = call i32 @rv6xx_program_power_level_high(%struct.radeon_device* %94)
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = call i32 @rv6xx_program_vc(%struct.radeon_device* %96)
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = call i32 @rv6xx_program_at(%struct.radeon_device* %98)
  %100 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %101 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %102 = call i32 @r600_power_level_enable(%struct.radeon_device* %100, i32 %101, i32 1)
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = load i32, i32* @R600_POWER_LEVEL_MEDIUM, align 4
  %105 = call i32 @r600_power_level_enable(%struct.radeon_device* %103, i32 %104, i32 1)
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = load i32, i32* @R600_POWER_LEVEL_HIGH, align 4
  %108 = call i32 @r600_power_level_enable(%struct.radeon_device* %106, i32 %107, i32 1)
  %109 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %110 = load i32, i32* @RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, align 4
  %111 = call i32 @rv6xx_enable_auto_throttle_source(%struct.radeon_device* %109, i32 %110, i32 1)
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = call i32 @r600_start_dpm(%struct.radeon_device* %112)
  %114 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %4, align 8
  %115 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %82
  %119 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %120 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %121 = call i32 @rv6xx_enable_static_voltage_control(%struct.radeon_device* %119, %struct.radeon_ps* %120, i32 0)
  br label %122

122:                                              ; preds = %118, %82
  %123 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %4, align 8
  %124 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %129 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %130 = call i32 @rv6xx_enable_dynamic_pcie_gen2(%struct.radeon_device* %128, %struct.radeon_ps* %129, i32 1)
  br label %131

131:                                              ; preds = %127, %122
  %132 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %4, align 8
  %133 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = call i32 @r600_gfx_clockgating_enable(%struct.radeon_device* %137, i32 1)
  br label %139

139:                                              ; preds = %136, %131
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %16
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @r600_dynamicpm_enabled(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_enable_backbias(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv6xx_enable_spread_spectrum(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv6xx_program_mpll_timing_parameters(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_bsp(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_git(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_tp(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_tpp(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_sstp(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_fcp(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_vddc3d_parameters(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_voltage_timing_parameters(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_engine_speed_parameters(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_enable_display_gap(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv6xx_program_power_level_enter_state(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_calculate_stepping_parameters(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @rv6xx_program_voltage_gpio_pins(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_generate_stepping_table(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @rv6xx_program_stepping_parameters_except_lowest_entry(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_stepping_parameters_lowest_entry(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_power_level_low(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_power_level_medium(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_power_level_high(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_vc(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_program_at(%struct.radeon_device*) #1

declare dso_local i32 @r600_power_level_enable(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @rv6xx_enable_auto_throttle_source(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_start_dpm(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_enable_static_voltage_control(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @rv6xx_enable_dynamic_pcie_gen2(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @r600_gfx_clockgating_enable(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
