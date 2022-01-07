; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_set_sw_voltage_to_low.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_set_sw_voltage_to_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.rv6xx_ps = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@R600_POWER_LEVEL_CTXSW = common dso_local global i32 0, align 4
@GENERAL_PWRMGT = common dso_local global i32 0, align 4
@SW_GPIO_INDEX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @rv6xx_set_sw_voltage_to_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_set_sw_voltage_to_low(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.rv6xx_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %6 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %7 = call %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps* %6)
  store %struct.rv6xx_ps* %7, %struct.rv6xx_ps** %5, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = load i32, i32* @R600_POWER_LEVEL_CTXSW, align 4
  %10 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %5, align 8
  %11 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rv6xx_program_voltage_stepping_entry(%struct.radeon_device* %8, i32 %9, i32 %13)
  %15 = load i32, i32* @GENERAL_PWRMGT, align 4
  %16 = load i32, i32* @R600_POWER_LEVEL_CTXSW, align 4
  %17 = call i32 @SW_GPIO_INDEX(i32 %16)
  %18 = load i32, i32* @SW_GPIO_INDEX_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = call i32 @WREG32_P(i32 %15, i32 %17, i32 %19)
  ret void
}

declare dso_local %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @rv6xx_program_voltage_stepping_entry(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @SW_GPIO_INDEX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
