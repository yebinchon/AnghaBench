; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_set_arb0_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_set_arb0_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.evergreen_arb_registers = type { i32, i32, i32, i32 }

@MC_ARB_DRAM_TIMING = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING2 = common dso_local global i32 0, align 4
@POWERMODE0_MASK = common dso_local global i32 0, align 4
@POWERMODE0_SHIFT = common dso_local global i32 0, align 4
@MC_ARB_RFSH_RATE = common dso_local global i32 0, align 4
@STATE0_MASK = common dso_local global i32 0, align 4
@STATE0_SHIFT = common dso_local global i32 0, align 4
@MC_ARB_BURST_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.evergreen_arb_registers*)* @btc_set_arb0_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc_set_arb0_registers(%struct.radeon_device* %0, %struct.evergreen_arb_registers* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.evergreen_arb_registers*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.evergreen_arb_registers* %1, %struct.evergreen_arb_registers** %4, align 8
  %6 = load i32, i32* @MC_ARB_DRAM_TIMING, align 4
  %7 = load %struct.evergreen_arb_registers*, %struct.evergreen_arb_registers** %4, align 8
  %8 = getelementptr inbounds %struct.evergreen_arb_registers, %struct.evergreen_arb_registers* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @WREG32(i32 %6, i32 %9)
  %11 = load i32, i32* @MC_ARB_DRAM_TIMING2, align 4
  %12 = load %struct.evergreen_arb_registers*, %struct.evergreen_arb_registers** %4, align 8
  %13 = getelementptr inbounds %struct.evergreen_arb_registers, %struct.evergreen_arb_registers* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @WREG32(i32 %11, i32 %14)
  %16 = load %struct.evergreen_arb_registers*, %struct.evergreen_arb_registers** %4, align 8
  %17 = getelementptr inbounds %struct.evergreen_arb_registers, %struct.evergreen_arb_registers* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @POWERMODE0_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @POWERMODE0_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @MC_ARB_RFSH_RATE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @POWERMODE0(i32 %24)
  %26 = load i32, i32* @POWERMODE0_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = call i32 @WREG32_P(i32 %23, i32 %25, i32 %27)
  %29 = load %struct.evergreen_arb_registers*, %struct.evergreen_arb_registers** %4, align 8
  %30 = getelementptr inbounds %struct.evergreen_arb_registers, %struct.evergreen_arb_registers* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @STATE0_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @STATE0_SHIFT, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @STATE0(i32 %37)
  %39 = load i32, i32* @STATE0_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = call i32 @WREG32_P(i32 %36, i32 %38, i32 %40)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @POWERMODE0(i32) #1

declare dso_local i32 @STATE0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
