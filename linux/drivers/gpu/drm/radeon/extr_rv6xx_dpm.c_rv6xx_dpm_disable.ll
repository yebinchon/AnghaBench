; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_dpm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_dpm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.rv6xx_power_info = type { i64, i64, i64, i64 }

@R600_POWER_LEVEL_LOW = common dso_local global i32 0, align 4
@R600_POWER_LEVEL_MEDIUM = common dso_local global i32 0, align 4
@R600_POWER_LEVEL_HIGH = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_BACKBIAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv6xx_dpm_disable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv6xx_power_info*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device* %5)
  store %struct.rv6xx_power_info* %6, %struct.rv6xx_power_info** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %10, align 8
  store %struct.radeon_ps* %11, %struct.radeon_ps** %4, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = call i32 @r600_dynamicpm_enabled(%struct.radeon_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %107

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %19 = call i32 @r600_power_level_enable(%struct.radeon_device* %17, i32 %18, i32 1)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = load i32, i32* @R600_POWER_LEVEL_MEDIUM, align 4
  %22 = call i32 @r600_power_level_enable(%struct.radeon_device* %20, i32 %21, i32 1)
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = call i32 @rv6xx_enable_display_gap(%struct.radeon_device* %23, i32 0)
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = call i32 @rv6xx_clear_vc(%struct.radeon_device* %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = call i32 @r600_set_at(%struct.radeon_device* %27, i32 65535, i32 65535, i32 65535, i32 65535)
  %29 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %30 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %35 = call i32 @r600_enable_thermal_protection(%struct.radeon_device* %34, i32 0)
  br label %36

36:                                               ; preds = %33, %16
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %39 = call i32 @r600_wait_for_power_level(%struct.radeon_device* %37, i32 %38)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = load i32, i32* @R600_POWER_LEVEL_HIGH, align 4
  %42 = call i32 @r600_power_level_enable(%struct.radeon_device* %40, i32 %41, i32 0)
  %43 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %44 = load i32, i32* @R600_POWER_LEVEL_MEDIUM, align 4
  %45 = call i32 @r600_power_level_enable(%struct.radeon_device* %43, i32 %44, i32 0)
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ATOM_PP_PLATFORM_CAP_BACKBIAS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %36
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = call i32 @rv6xx_enable_backbias(%struct.radeon_device* %55, i32 0)
  br label %57

57:                                               ; preds = %54, %36
  %58 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %59 = call i32 @rv6xx_enable_spread_spectrum(%struct.radeon_device* %58, i32 0)
  %60 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %61 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %66 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %67 = call i32 @rv6xx_enable_static_voltage_control(%struct.radeon_device* %65, %struct.radeon_ps* %66, i32 1)
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %70 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %75 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %76 = call i32 @rv6xx_enable_dynamic_pcie_gen2(%struct.radeon_device* %74, %struct.radeon_ps* %75, i32 0)
  br label %77

77:                                               ; preds = %73, %68
  %78 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @r600_is_internal_thermal_sensor(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %92 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %95 = call i32 @radeon_irq_set(%struct.radeon_device* %94)
  br label %96

96:                                               ; preds = %90, %83, %77
  %97 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %98 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %103 = call i32 @r600_gfx_clockgating_enable(%struct.radeon_device* %102, i32 0)
  br label %104

104:                                              ; preds = %101, %96
  %105 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %106 = call i32 @r600_stop_dpm(%struct.radeon_device* %105)
  br label %107

107:                                              ; preds = %104, %15
  ret void
}

declare dso_local %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @r600_dynamicpm_enabled(%struct.radeon_device*) #1

declare dso_local i32 @r600_power_level_enable(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @rv6xx_enable_display_gap(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv6xx_clear_vc(%struct.radeon_device*) #1

declare dso_local i32 @r600_set_at(%struct.radeon_device*, i32, i32, i32, i32) #1

declare dso_local i32 @r600_enable_thermal_protection(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_wait_for_power_level(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv6xx_enable_backbias(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv6xx_enable_spread_spectrum(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv6xx_enable_static_voltage_control(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @rv6xx_enable_dynamic_pcie_gen2(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i64 @r600_is_internal_thermal_sensor(i32) #1

declare dso_local i32 @radeon_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @r600_gfx_clockgating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_stop_dpm(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
