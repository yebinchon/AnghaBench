; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_lcb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_lcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }

@ICODE_FUNCTIONAL_SIMULATOR = common dso_local global i64 0, align 8
@DC_LCB_CFG_TX_FIFOS_RESET = common dso_local global i32 0, align 4
@DC_LCB_CFG_LANE_WIDTH = common dso_local global i32 0, align 4
@DC_LCB_CFG_REINIT_AS_SLAVE = common dso_local global i32 0, align 4
@DC_LCB_CFG_CNT_FOR_SKIP_STALL = common dso_local global i32 0, align 4
@DC_LCB_CFG_CLK_CNTR = common dso_local global i32 0, align 4
@DC_LCB_CFG_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @init_lcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_lcb(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %3 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %4 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ICODE_FUNCTIONAL_SIMULATOR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %11 = load i32, i32* @DC_LCB_CFG_TX_FIFOS_RESET, align 4
  %12 = call i32 @write_csr(%struct.hfi1_devdata* %10, i32 %11, i32 1)
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %14 = load i32, i32* @DC_LCB_CFG_LANE_WIDTH, align 4
  %15 = call i32 @write_csr(%struct.hfi1_devdata* %13, i32 %14, i32 0)
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %17 = load i32, i32* @DC_LCB_CFG_REINIT_AS_SLAVE, align 4
  %18 = call i32 @write_csr(%struct.hfi1_devdata* %16, i32 %17, i32 0)
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %20 = load i32, i32* @DC_LCB_CFG_CNT_FOR_SKIP_STALL, align 4
  %21 = call i32 @write_csr(%struct.hfi1_devdata* %19, i32 %20, i32 272)
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %23 = load i32, i32* @DC_LCB_CFG_CLK_CNTR, align 4
  %24 = call i32 @write_csr(%struct.hfi1_devdata* %22, i32 %23, i32 8)
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %26 = load i32, i32* @DC_LCB_CFG_LOOPBACK, align 4
  %27 = call i32 @write_csr(%struct.hfi1_devdata* %25, i32 %26, i32 2)
  %28 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %29 = load i32, i32* @DC_LCB_CFG_TX_FIFOS_RESET, align 4
  %30 = call i32 @write_csr(%struct.hfi1_devdata* %28, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
