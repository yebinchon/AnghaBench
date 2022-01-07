; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_stop_dpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_stop_dpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CG_CG_VOLTAGE_CNTL = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@SMU_SCLK_DPM_CNTL = common dso_local global i32 0, align 4
@SCLK_DPM_EN_MASK = common dso_local global i32 0, align 4
@VOLTAGE_CHG_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @trinity_stop_dpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_stop_dpm(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load i32, i32* @CG_CG_VOLTAGE_CNTL, align 4
  %5 = load i32, i32* @EN, align 4
  %6 = load i32, i32* @EN, align 4
  %7 = xor i32 %6, -1
  %8 = call i32 @WREG32_P(i32 %4, i32 %5, i32 %7)
  %9 = load i32, i32* @SMU_SCLK_DPM_CNTL, align 4
  %10 = call i32 @RREG32_SMC(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @SCLK_DPM_EN_MASK, align 4
  %12 = load i32, i32* @VOLTAGE_CHG_EN_MASK, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @SMU_SCLK_DPM_CNTL, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @WREG32_SMC(i32 %17, i32 %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = call i32 @trinity_dpm_config(%struct.radeon_device* %20, i32 0)
  ret void
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

declare dso_local i32 @trinity_dpm_config(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
