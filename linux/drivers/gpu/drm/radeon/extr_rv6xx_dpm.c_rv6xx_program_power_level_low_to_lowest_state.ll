; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_power_level_low_to_lowest_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_power_level_low_to_lowest_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv6xx_power_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@R600_POWER_LEVEL_LOW = common dso_local global i64 0, align 8
@R600_DISPLAY_WATERMARK_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv6xx_program_power_level_low_to_lowest_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_program_power_level_low_to_lowest_state(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv6xx_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device* %4)
  store %struct.rv6xx_power_info* %5, %struct.rv6xx_power_info** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = load i64, i64* @R600_POWER_LEVEL_LOW, align 8
  %8 = call i32 @r600_power_level_set_voltage_index(%struct.radeon_device* %6, i64 %7, i32 0)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = load i64, i64* @R600_POWER_LEVEL_LOW, align 8
  %11 = call i32 @r600_power_level_set_mem_clock_index(%struct.radeon_device* %9, i64 %10, i32 0)
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = load i64, i64* @R600_POWER_LEVEL_LOW, align 8
  %14 = call i32 @r600_power_level_set_eng_clock_index(%struct.radeon_device* %12, i64 %13, i32 0)
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = load i64, i64* @R600_POWER_LEVEL_LOW, align 8
  %17 = load i32, i32* @R600_DISPLAY_WATERMARK_LOW, align 4
  %18 = call i32 @r600_power_level_set_watermark_id(%struct.radeon_device* %15, i64 %16, i32 %17)
  %19 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %20 = load i64, i64* @R600_POWER_LEVEL_LOW, align 8
  %21 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %22 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @R600_POWER_LEVEL_LOW, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @r600_power_level_set_pcie_gen2(%struct.radeon_device* %19, i64 %20, i32 %27)
  ret void
}

declare dso_local %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @r600_power_level_set_voltage_index(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @r600_power_level_set_mem_clock_index(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @r600_power_level_set_eng_clock_index(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @r600_power_level_set_watermark_id(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @r600_power_level_set_pcie_gen2(%struct.radeon_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
