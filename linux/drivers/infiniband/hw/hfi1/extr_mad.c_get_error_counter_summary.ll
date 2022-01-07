; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_get_error_counter_summary.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_get_error_counter_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.hfi1_devdata = type { i32 }
%struct.hfi1_ibport = type { i32 }
%struct.hfi1_pportdata = type { i32 }

@C_SW_RCV_CSTR_ERR = common dso_local global i32 0, align 4
@CNTR_INVALID_VL = common dso_local global i32 0, align 4
@C_SW_XMIT_DSCD = common dso_local global i32 0, align 4
@C_SW_XMIT_CSTR_ERR = common dso_local global i32 0, align 4
@C_DC_RMT_PHY_ERR = common dso_local global i32 0, align 4
@C_DC_RX_REPLAY = common dso_local global i32 0, align 4
@C_DC_SEQ_CRC_CNT = common dso_local global i32 0, align 4
@C_DC_REINIT_FROM_PEER_CNT = common dso_local global i32 0, align 4
@C_DC_RCV_ERR = common dso_local global i32 0, align 4
@C_RCV_OVF = common dso_local global i32 0, align 4
@C_DC_FM_CFG_ERR = common dso_local global i32 0, align 4
@C_SW_LINK_DOWN = common dso_local global i32 0, align 4
@C_DC_UNC_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, i32)* @get_error_counter_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_error_counter_summary(%struct.ib_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hfi1_devdata*, align 8
  %10 = alloca %struct.hfi1_ibport*, align 8
  %11 = alloca %struct.hfi1_pportdata*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %14)
  store %struct.hfi1_devdata* %15, %struct.hfi1_devdata** %9, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %16, i32 %17)
  store %struct.hfi1_ibport* %18, %struct.hfi1_ibport** %10, align 8
  %19 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %10, align 8
  %20 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %19)
  store %struct.hfi1_pportdata* %20, %struct.hfi1_pportdata** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %22 = load i32, i32* @C_SW_RCV_CSTR_ERR, align 4
  %23 = load i32, i32* @CNTR_INVALID_VL, align 4
  %24 = call i64 @read_port_cntr(%struct.hfi1_pportdata* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %12, align 4
  %29 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %30 = load i32, i32* @C_SW_XMIT_DSCD, align 4
  %31 = load i32, i32* @CNTR_INVALID_VL, align 4
  %32 = call i64 @read_port_cntr(%struct.hfi1_pportdata* %29, i32 %30, i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %12, align 4
  %37 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %38 = load i32, i32* @C_SW_XMIT_CSTR_ERR, align 4
  %39 = load i32, i32* @CNTR_INVALID_VL, align 4
  %40 = call i64 @read_port_cntr(%struct.hfi1_pportdata* %37, i32 %38, i32 %39)
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %46 = load i32, i32* @C_DC_RMT_PHY_ERR, align 4
  %47 = load i32, i32* @CNTR_INVALID_VL, align 4
  %48 = call i32 @read_dev_cntr(%struct.hfi1_devdata* %45, i32 %46, i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %12, align 4
  %51 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %52 = load i32, i32* @C_DC_RX_REPLAY, align 4
  %53 = load i32, i32* @CNTR_INVALID_VL, align 4
  %54 = call i32 @read_dev_cntr(%struct.hfi1_devdata* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = ashr i32 %54, %55
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %12, align 4
  %59 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %60 = load i32, i32* @C_DC_SEQ_CRC_CNT, align 4
  %61 = load i32, i32* @CNTR_INVALID_VL, align 4
  %62 = call i32 @read_dev_cntr(%struct.hfi1_devdata* %59, i32 %60, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %64 = load i32, i32* @C_DC_REINIT_FROM_PEER_CNT, align 4
  %65 = load i32, i32* @CNTR_INVALID_VL, align 4
  %66 = call i32 @read_dev_cntr(%struct.hfi1_devdata* %63, i32 %64, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %8, align 4
  %71 = ashr i32 %69, %70
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %12, align 4
  %74 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %75 = load i32, i32* @C_DC_RCV_ERR, align 4
  %76 = load i32, i32* @CNTR_INVALID_VL, align 4
  %77 = call i32 @read_dev_cntr(%struct.hfi1_devdata* %74, i32 %75, i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %12, align 4
  %80 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %81 = load i32, i32* @C_RCV_OVF, align 4
  %82 = load i32, i32* @CNTR_INVALID_VL, align 4
  %83 = call i32 @read_dev_cntr(%struct.hfi1_devdata* %80, i32 %81, i32 %82)
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %12, align 4
  %86 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %87 = load i32, i32* @C_DC_FM_CFG_ERR, align 4
  %88 = load i32, i32* @CNTR_INVALID_VL, align 4
  %89 = call i32 @read_dev_cntr(%struct.hfi1_devdata* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %12, align 4
  %92 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %93 = load i32, i32* @C_SW_LINK_DOWN, align 4
  %94 = load i32, i32* @CNTR_INVALID_VL, align 4
  %95 = call i64 @read_port_cntr(%struct.hfi1_pportdata* %92, i32 %93, i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %12, align 4
  %100 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %101 = load i32, i32* @C_DC_UNC_ERR, align 4
  %102 = load i32, i32* @CNTR_INVALID_VL, align 4
  %103 = call i32 @read_dev_cntr(%struct.hfi1_devdata* %100, i32 %101, i32 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %104, 256
  br i1 %105, label %106, label %109

106:                                              ; preds = %4
  %107 = load i32, i32* %13, align 4
  %108 = and i32 %107, 255
  br label %110

109:                                              ; preds = %4
  br label %110

110:                                              ; preds = %109, %106
  %111 = phi i32 [ %108, %106 ], [ 255, %109 ]
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  ret i32 %114
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i64 @read_port_cntr(%struct.hfi1_pportdata*, i32, i32) #1

declare dso_local i32 @read_dev_cntr(%struct.hfi1_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
