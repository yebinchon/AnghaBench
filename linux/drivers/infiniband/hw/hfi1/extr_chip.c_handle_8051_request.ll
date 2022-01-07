; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_handle_8051_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_handle_8051_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@DC_DC8051_CFG_EXT_DEV_1 = common dso_local global i32 0, align 4
@DC_DC8051_CFG_EXT_DEV_1_REQ_NEW_SMASK = common dso_local global i32 0, align 4
@DC_DC8051_CFG_EXT_DEV_0 = common dso_local global i32 0, align 4
@DC_DC8051_CFG_EXT_DEV_1_REQ_TYPE_SHIFT = common dso_local global i32 0, align 4
@DC_DC8051_CFG_EXT_DEV_1_REQ_TYPE_MASK = common dso_local global i32 0, align 4
@DC_DC8051_CFG_EXT_DEV_1_REQ_DATA_SHIFT = common dso_local global i32 0, align 4
@DC_DC8051_CFG_EXT_DEV_1_REQ_DATA_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"8051 request: request 0x%x not supported\0A\00", align 1
@HREQ_NOT_SUPPORTED = common dso_local global i32 0, align 4
@DCC_CFG_RESET = common dso_local global i32 0, align 4
@LCB_RX_FPE_TX_FPE_INTO_RESET = common dso_local global i32 0, align 4
@LCB_RX_FPE_TX_FPE_OUT_OF_RESET = common dso_local global i32 0, align 4
@HREQ_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"8051 request: unknown request 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_pportdata*)* @handle_8051_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_8051_request(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca %struct.hfi1_pportdata*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %2, align 8
  %7 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %8 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %7, i32 0, i32 0
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  store %struct.hfi1_devdata* %9, %struct.hfi1_devdata** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %11 = load i32, i32* @DC_DC8051_CFG_EXT_DEV_1, align 4
  %12 = call i32 @read_csr(%struct.hfi1_devdata* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @DC_DC8051_CFG_EXT_DEV_1_REQ_NEW_SMASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %72

18:                                               ; preds = %1
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %20 = load i32, i32* @DC_DC8051_CFG_EXT_DEV_0, align 4
  %21 = call i32 @write_csr(%struct.hfi1_devdata* %19, i32 %20, i32 0)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @DC_DC8051_CFG_EXT_DEV_1_REQ_TYPE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = load i32, i32* @DC_DC8051_CFG_EXT_DEV_1_REQ_TYPE_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @DC_DC8051_CFG_EXT_DEV_1_REQ_DATA_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = load i32, i32* @DC_DC8051_CFG_EXT_DEV_1_REQ_DATA_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %65 [
    i32 132, label %33
    i32 130, label %33
    i32 131, label %33
    i32 129, label %33
    i32 128, label %33
    i32 135, label %33
    i32 133, label %40
    i32 136, label %56
    i32 134, label %60
  ]

33:                                               ; preds = %18, %18, %18, %18, %18, %18
  %34 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dd_dev_info(%struct.hfi1_devdata* %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %38 = load i32, i32* @HREQ_NOT_SUPPORTED, align 4
  %39 = call i32 @hreq_response(%struct.hfi1_devdata* %37, i32 %38, i32 0)
  br label %72

40:                                               ; preds = %18
  %41 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %42 = load i32, i32* @DCC_CFG_RESET, align 4
  %43 = load i32, i32* @LCB_RX_FPE_TX_FPE_INTO_RESET, align 4
  %44 = call i32 @write_csr(%struct.hfi1_devdata* %41, i32 %42, i32 %43)
  %45 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %46 = load i32, i32* @DCC_CFG_RESET, align 4
  %47 = call i32 @read_csr(%struct.hfi1_devdata* %45, i32 %46)
  %48 = call i32 @udelay(i32 1)
  %49 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %50 = load i32, i32* @DCC_CFG_RESET, align 4
  %51 = load i32, i32* @LCB_RX_FPE_TX_FPE_OUT_OF_RESET, align 4
  %52 = call i32 @write_csr(%struct.hfi1_devdata* %49, i32 %50, i32 %51)
  %53 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %54 = load i32, i32* @HREQ_SUCCESS, align 4
  %55 = call i32 @hreq_response(%struct.hfi1_devdata* %53, i32 %54, i32 0)
  br label %72

56:                                               ; preds = %18
  %57 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %58 = load i32, i32* @HREQ_SUCCESS, align 4
  %59 = call i32 @hreq_response(%struct.hfi1_devdata* %57, i32 %58, i32 0)
  br label %72

60:                                               ; preds = %18
  %61 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %62 = load i32, i32* @HREQ_SUCCESS, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @hreq_response(%struct.hfi1_devdata* %61, i32 %62, i32 %63)
  br label %72

65:                                               ; preds = %18
  %66 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @dd_dev_err(%struct.hfi1_devdata* %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %70 = load i32, i32* @HREQ_NOT_SUPPORTED, align 4
  %71 = call i32 @hreq_response(%struct.hfi1_devdata* %69, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %17, %65, %60, %56, %40, %33
  ret void
}

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @hreq_response(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
