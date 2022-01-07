; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_program_acpi_power_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_program_acpi_power_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.sumo_power_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.atom_clock_dividers = type { i32 }

@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@CG_ACPI_CNTL = common dso_local global i32 0, align 4
@SCLK_ACPI_DIV_MASK = common dso_local global i32 0, align 4
@CG_ACPI_VOLTAGE_CNTL = common dso_local global i32 0, align 4
@ACPI_VOLTAGE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @sumo_program_acpi_power_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_program_acpi_power_level(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.sumo_power_info*, align 8
  %4 = alloca %struct.atom_clock_dividers, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %6)
  store %struct.sumo_power_info* %7, %struct.sumo_power_info** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %10 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %11 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %8, i32 %9, i32 %13, i32 0, %struct.atom_clock_dividers* %4)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %30

18:                                               ; preds = %1
  %19 = load i32, i32* @CG_ACPI_CNTL, align 4
  %20 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SCLK_ACPI_DIV(i32 %21)
  %23 = load i32, i32* @SCLK_ACPI_DIV_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = call i32 @WREG32_P(i32 %19, i32 %22, i32 %24)
  %26 = load i32, i32* @CG_ACPI_VOLTAGE_CNTL, align 4
  %27 = load i32, i32* @ACPI_VOLTAGE_EN, align 4
  %28 = xor i32 %27, -1
  %29 = call i32 @WREG32_P(i32 %26, i32 0, i32 %28)
  br label %30

30:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @SCLK_ACPI_DIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
