; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_lcb_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_lcb_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }

@DC_LCB_CFG_RUN = common dso_local global i32 0, align 4
@DC_LCB_CFG_TX_FIFOS_RESET = common dso_local global i32 0, align 4
@DC_LCB_CFG_TX_FIFOS_RESET_VAL_SHIFT = common dso_local global i64 0, align 8
@DC_LCB_ERR_EN = common dso_local global i32 0, align 4
@DCC_CFG_RESET = common dso_local global i32 0, align 4
@DCC_CFG_RESET_RESET_LCB = common dso_local global i64 0, align 8
@DCC_CFG_RESET_RESET_RX_FPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32)* @lcb_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcb_shutdown(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %7 = load i32, i32* @DC_LCB_CFG_RUN, align 4
  %8 = call i32 @write_csr(%struct.hfi1_devdata* %6, i32 %7, i64 0)
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %10 = load i32, i32* @DC_LCB_CFG_TX_FIFOS_RESET, align 4
  %11 = load i64, i64* @DC_LCB_CFG_TX_FIFOS_RESET_VAL_SHIFT, align 8
  %12 = shl i64 1, %11
  %13 = call i32 @write_csr(%struct.hfi1_devdata* %9, i32 %10, i64 %12)
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %15 = load i32, i32* @DC_LCB_ERR_EN, align 4
  %16 = call i8* @read_csr(%struct.hfi1_devdata* %14, i32 %15)
  %17 = ptrtoint i8* %16 to i64
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %19 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %21 = load i32, i32* @DCC_CFG_RESET, align 4
  %22 = call i8* @read_csr(%struct.hfi1_devdata* %20, i32 %21)
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %5, align 8
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %25 = load i32, i32* @DCC_CFG_RESET, align 4
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @DCC_CFG_RESET_RESET_LCB, align 8
  %28 = or i64 %26, %27
  %29 = load i64, i64* @DCC_CFG_RESET_RESET_RX_FPE, align 8
  %30 = or i64 %28, %29
  %31 = call i32 @write_csr(%struct.hfi1_devdata* %24, i32 %25, i64 %30)
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %33 = load i32, i32* @DCC_CFG_RESET, align 4
  %34 = call i8* @read_csr(%struct.hfi1_devdata* %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %2
  %38 = call i32 @udelay(i32 1)
  %39 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %40 = load i32, i32* @DCC_CFG_RESET, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @write_csr(%struct.hfi1_devdata* %39, i32 %40, i64 %41)
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %44 = load i32, i32* @DC_LCB_ERR_EN, align 4
  %45 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %46 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @write_csr(%struct.hfi1_devdata* %43, i32 %44, i64 %47)
  br label %49

49:                                               ; preds = %37, %2
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i64) #1

declare dso_local i8* @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
