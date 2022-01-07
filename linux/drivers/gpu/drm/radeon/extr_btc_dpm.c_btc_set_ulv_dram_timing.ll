; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_set_ulv_dram_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_set_ulv_dram_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.evergreen_power_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rv7xx_pl* }
%struct.rv7xx_pl = type { i32, i32 }

@MC_ARB_RFSH_RATE = common dso_local global i32 0, align 4
@POWERMODE0_MASK = common dso_local global i32 0, align 4
@MC_ARB_BURST_TIME = common dso_local global i32 0, align 4
@STATE0_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @btc_set_ulv_dram_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc_set_ulv_dram_timing(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.evergreen_power_info*, align 8
  %5 = alloca %struct.rv7xx_pl*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %6)
  store %struct.evergreen_power_info* %7, %struct.evergreen_power_info** %4, align 8
  %8 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %9 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %10, align 8
  store %struct.rv7xx_pl* %11, %struct.rv7xx_pl** %5, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %5, align 8
  %14 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %5, align 8
  %17 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @radeon_atom_set_engine_dram_timings(%struct.radeon_device* %12, i32 %15, i32 %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %5, align 8
  %22 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rv770_calculate_memory_refresh_rate(%struct.radeon_device* %20, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @MC_ARB_RFSH_RATE, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @POWERMODE0(i32 %26)
  %28 = load i32, i32* @POWERMODE0_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = call i32 @WREG32_P(i32 %25, i32 %27, i32 %29)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %5, align 8
  %33 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %5, align 8
  %36 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cypress_calculate_burst_time(%struct.radeon_device* %31, i32 %34, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @STATE0(i32 %40)
  %42 = load i32, i32* @STATE0_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = call i32 @WREG32_P(i32 %39, i32 %41, i32 %43)
  ret i32 0
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_set_engine_dram_timings(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @rv770_calculate_memory_refresh_rate(%struct.radeon_device*, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @POWERMODE0(i32) #1

declare dso_local i32 @cypress_calculate_burst_time(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @STATE0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
