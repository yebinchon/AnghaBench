; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_force_logical_link_state_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_force_logical_link_state_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@DC_LCB_CFG_TX_FIFOS_RESET = common dso_local global i32 0, align 4
@DC_LCB_CFG_IGNORE_LOST_RCLK = common dso_local global i32 0, align 4
@DC_LCB_CFG_IGNORE_LOST_RCLK_EN_SMASK = common dso_local global i32 0, align 4
@DC_LCB_CFG_LANE_WIDTH = common dso_local global i32 0, align 4
@DC_LCB_CFG_REINIT_AS_SLAVE = common dso_local global i32 0, align 4
@DC_LCB_CFG_CNT_FOR_SKIP_STALL = common dso_local global i32 0, align 4
@DC_LCB_CFG_LOOPBACK = common dso_local global i32 0, align 4
@DC_LCB_CFG_ALLOW_LINK_UP = common dso_local global i32 0, align 4
@DC_LCB_CFG_RUN = common dso_local global i32 0, align 4
@DC_LCB_CFG_RUN_EN_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"logical state forced to LINK_DOWN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_pportdata*)* @force_logical_link_state_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @force_logical_link_state_down(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca %struct.hfi1_pportdata*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %2, align 8
  %4 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %5 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %4, i32 0, i32 0
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  store %struct.hfi1_devdata* %6, %struct.hfi1_devdata** %3, align 8
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %8 = load i32, i32* @DC_LCB_CFG_TX_FIFOS_RESET, align 4
  %9 = call i32 @write_csr(%struct.hfi1_devdata* %7, i32 %8, i32 1)
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %11 = load i32, i32* @DC_LCB_CFG_IGNORE_LOST_RCLK, align 4
  %12 = load i32, i32* @DC_LCB_CFG_IGNORE_LOST_RCLK_EN_SMASK, align 4
  %13 = call i32 @write_csr(%struct.hfi1_devdata* %10, i32 %11, i32 %12)
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %15 = load i32, i32* @DC_LCB_CFG_LANE_WIDTH, align 4
  %16 = call i32 @write_csr(%struct.hfi1_devdata* %14, i32 %15, i32 0)
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %18 = load i32, i32* @DC_LCB_CFG_REINIT_AS_SLAVE, align 4
  %19 = call i32 @write_csr(%struct.hfi1_devdata* %17, i32 %18, i32 0)
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %21 = load i32, i32* @DC_LCB_CFG_CNT_FOR_SKIP_STALL, align 4
  %22 = call i32 @write_csr(%struct.hfi1_devdata* %20, i32 %21, i32 272)
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %24 = load i32, i32* @DC_LCB_CFG_LOOPBACK, align 4
  %25 = call i32 @write_csr(%struct.hfi1_devdata* %23, i32 %24, i32 2)
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %27 = load i32, i32* @DC_LCB_CFG_TX_FIFOS_RESET, align 4
  %28 = call i32 @write_csr(%struct.hfi1_devdata* %26, i32 %27, i32 0)
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %30 = load i32, i32* @DC_LCB_CFG_TX_FIFOS_RESET, align 4
  %31 = call i32 @read_csr(%struct.hfi1_devdata* %29, i32 %30)
  %32 = call i32 @udelay(i32 3)
  %33 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %34 = load i32, i32* @DC_LCB_CFG_ALLOW_LINK_UP, align 4
  %35 = call i32 @write_csr(%struct.hfi1_devdata* %33, i32 %34, i32 1)
  %36 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %37 = load i32, i32* @DC_LCB_CFG_RUN, align 4
  %38 = load i64, i64* @DC_LCB_CFG_RUN_EN_SHIFT, align 8
  %39 = shl i64 1, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @write_csr(%struct.hfi1_devdata* %36, i32 %37, i32 %40)
  %42 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %43 = call i32 @wait_link_transfer_active(%struct.hfi1_devdata* %42, i32 100)
  %44 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %45 = load i32, i32* @DC_LCB_CFG_TX_FIFOS_RESET, align 4
  %46 = call i32 @write_csr(%struct.hfi1_devdata* %44, i32 %45, i32 1)
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %48 = load i32, i32* @DC_LCB_CFG_ALLOW_LINK_UP, align 4
  %49 = call i32 @write_csr(%struct.hfi1_devdata* %47, i32 %48, i32 0)
  %50 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %51 = load i32, i32* @DC_LCB_CFG_IGNORE_LOST_RCLK, align 4
  %52 = call i32 @write_csr(%struct.hfi1_devdata* %50, i32 %51, i32 0)
  %53 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %54 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %53, i32 0, i32 0
  %55 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %54, align 8
  %56 = call i32 @dd_dev_info(%struct.hfi1_devdata* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_link_transfer_active(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
