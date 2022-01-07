; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_start_dpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_start_dpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@SMU_SCLK_DPM_CNTL = common dso_local global i32 0, align 4
@SCLK_DPM_EN_MASK = common dso_local global i32 0, align 4
@SCLK_DPM_BOOT_STATE_MASK = common dso_local global i32 0, align 4
@VOLTAGE_CHG_EN_MASK = common dso_local global i32 0, align 4
@GENERAL_PWRMGT = common dso_local global i32 0, align 4
@GLOBAL_PWRMGT_EN = common dso_local global i32 0, align 4
@CG_CG_VOLTAGE_CNTL = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @trinity_start_dpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_start_dpm(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load i32, i32* @SMU_SCLK_DPM_CNTL, align 4
  %5 = call i32 @RREG32_SMC(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @SCLK_DPM_EN_MASK, align 4
  %7 = load i32, i32* @SCLK_DPM_BOOT_STATE_MASK, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @VOLTAGE_CHG_EN_MASK, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = call i32 @SCLK_DPM_EN(i32 1)
  %15 = call i32 @SCLK_DPM_BOOT_STATE(i32 0)
  %16 = or i32 %14, %15
  %17 = call i32 @VOLTAGE_CHG_EN(i32 1)
  %18 = or i32 %16, %17
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @SMU_SCLK_DPM_CNTL, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @WREG32_SMC(i32 %21, i32 %22)
  %24 = load i32, i32* @GENERAL_PWRMGT, align 4
  %25 = load i32, i32* @GLOBAL_PWRMGT_EN, align 4
  %26 = load i32, i32* @GLOBAL_PWRMGT_EN, align 4
  %27 = xor i32 %26, -1
  %28 = call i32 @WREG32_P(i32 %24, i32 %25, i32 %27)
  %29 = load i32, i32* @CG_CG_VOLTAGE_CNTL, align 4
  %30 = load i32, i32* @EN, align 4
  %31 = xor i32 %30, -1
  %32 = call i32 @WREG32_P(i32 %29, i32 0, i32 %31)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = call i32 @trinity_dpm_config(%struct.radeon_device* %33, i32 1)
  ret void
}

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @SCLK_DPM_EN(i32) #1

declare dso_local i32 @SCLK_DPM_BOOT_STATE(i32) #1

declare dso_local i32 @VOLTAGE_CHG_EN(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @trinity_dpm_config(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
