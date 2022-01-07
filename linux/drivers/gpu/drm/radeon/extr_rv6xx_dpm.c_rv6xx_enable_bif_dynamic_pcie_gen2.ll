; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_enable_bif_dynamic_pcie_gen2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_enable_bif_dynamic_pcie_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@PCIE_LC_SPEED_CNTL = common dso_local global i32 0, align 4
@LC_HW_VOLTAGE_IF_CONTROL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @rv6xx_enable_bif_dynamic_pcie_gen2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_enable_bif_dynamic_pcie_gen2(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %7 = call i32 @RREG32_PCIE_PORT(i32 %6)
  %8 = load i32, i32* @LC_HW_VOLTAGE_IF_CONTROL_MASK, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 @LC_HW_VOLTAGE_IF_CONTROL(i32 1)
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %21

17:                                               ; preds = %2
  %18 = call i32 @LC_HW_VOLTAGE_IF_CONTROL(i32 0)
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @WREG32_PCIE_PORT(i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @RREG32_PCIE_PORT(i32) #1

declare dso_local i32 @LC_HW_VOLTAGE_IF_CONTROL(i32) #1

declare dso_local i32 @WREG32_PCIE_PORT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
