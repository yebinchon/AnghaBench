; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_arm_gasket_logic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_arm_gasket_logic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@ASIC_PCIE_SD_HOST_CMD_INTRPT_CMD_SHIFT = common dso_local global i32 0, align 4
@pcie_serdes_broadcast = common dso_local global i64* null, align 8
@ASIC_PCIE_SD_HOST_CMD_SBUS_RCVR_ADDR_SHIFT = common dso_local global i32 0, align 4
@ASIC_PCIE_SD_HOST_CMD_SBR_MODE_SMASK = common dso_local global i32 0, align 4
@SBR_DELAY_US = common dso_local global i64 0, align 8
@ASIC_PCIE_SD_HOST_CMD_TIMER_MASK = common dso_local global i32 0, align 4
@ASIC_PCIE_SD_HOST_CMD_TIMER_SHIFT = common dso_local global i32 0, align 4
@ASIC_PCIE_SD_HOST_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @arm_gasket_logic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_gasket_logic(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %4 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %5 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 1, %6
  %8 = load i32, i32* @ASIC_PCIE_SD_HOST_CMD_INTRPT_CMD_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = load i64*, i64** @pcie_serdes_broadcast, align 8
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %10, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @ASIC_PCIE_SD_HOST_CMD_SBUS_RCVR_ADDR_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* @ASIC_PCIE_SD_HOST_CMD_SBR_MODE_SMASK, align 4
  %21 = or i32 %19, %20
  %22 = load i64, i64* @SBR_DELAY_US, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @ASIC_PCIE_SD_HOST_CMD_TIMER_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @ASIC_PCIE_SD_HOST_CMD_TIMER_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %21, %27
  %29 = or i32 %9, %28
  store i32 %29, i32* %3, align 4
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %31 = load i32, i32* @ASIC_PCIE_SD_HOST_CMD, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @write_csr(%struct.hfi1_devdata* %30, i32 %31, i32 %32)
  %34 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %35 = load i32, i32* @ASIC_PCIE_SD_HOST_CMD, align 4
  %36 = call i32 @read_csr(%struct.hfi1_devdata* %34, i32 %35)
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
