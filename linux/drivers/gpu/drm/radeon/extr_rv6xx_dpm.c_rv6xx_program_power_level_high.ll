; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_power_level_high.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_power_level_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv6xx_power_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32, i32 }

@R600_POWER_LEVEL_HIGH = common dso_local global i64 0, align 8
@R600_DISPLAY_WATERMARK_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv6xx_program_power_level_high to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_program_power_level_high(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv6xx_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device* %4)
  store %struct.rv6xx_power_info* %5, %struct.rv6xx_power_info** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = load i64, i64* @R600_POWER_LEVEL_HIGH, align 8
  %8 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %9 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @r600_power_level_set_voltage_index(%struct.radeon_device* %6, i64 %7, i32 %11)
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = load i64, i64* @R600_POWER_LEVEL_HIGH, align 8
  %15 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %16 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @r600_power_level_set_mem_clock_index(%struct.radeon_device* %13, i64 %14, i32 %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = load i64, i64* @R600_POWER_LEVEL_HIGH, align 8
  %22 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %23 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @r600_power_level_set_eng_clock_index(%struct.radeon_device* %20, i64 %21, i32 %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = load i64, i64* @R600_POWER_LEVEL_HIGH, align 8
  %29 = load i32, i32* @R600_DISPLAY_WATERMARK_HIGH, align 4
  %30 = call i32 @r600_power_level_set_watermark_id(%struct.radeon_device* %27, i64 %28, i32 %29)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = load i64, i64* @R600_POWER_LEVEL_HIGH, align 8
  %33 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %34 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @R600_POWER_LEVEL_HIGH, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @r600_power_level_set_pcie_gen2(%struct.radeon_device* %31, i64 %32, i32 %39)
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
