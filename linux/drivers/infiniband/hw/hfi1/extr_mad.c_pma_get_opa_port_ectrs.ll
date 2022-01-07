; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_pma_get_opa_port_ectrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_pma_get_opa_port_ectrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct._port_ectrs = type { i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8* }
%struct.hfi1_devdata = type { i32 }
%struct.hfi1_ibport = type { i32 }
%struct.hfi1_pportdata = type { i32 }

@C_DC_SEQ_CRC_CNT = common dso_local global i32 0, align 4
@CNTR_INVALID_VL = common dso_local global i32 0, align 4
@C_DC_REINIT_FROM_PEER_CNT = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@C_SW_LINK_DOWN = common dso_local global i32 0, align 4
@C_DC_RCV_ERR = common dso_local global i32 0, align 4
@C_DC_RMT_PHY_ERR = common dso_local global i32 0, align 4
@C_SW_XMIT_DSCD = common dso_local global i32 0, align 4
@C_SW_XMIT_CSTR_ERR = common dso_local global i32 0, align 4
@C_SW_RCV_CSTR_ERR = common dso_local global i32 0, align 4
@C_DC_RX_REPLAY = common dso_local global i32 0, align 4
@C_RCV_OVF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, %struct._port_ectrs*, i32)* @pma_get_opa_port_ectrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pma_get_opa_port_ectrs(%struct.ib_device* %0, %struct._port_ectrs* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct._port_ectrs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hfi1_devdata*, align 8
  %10 = alloca %struct.hfi1_ibport*, align 8
  %11 = alloca %struct.hfi1_pportdata*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct._port_ectrs* %1, %struct._port_ectrs** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %13 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %12)
  store %struct.hfi1_devdata* %13, %struct.hfi1_devdata** %9, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %14, i32 %15)
  store %struct.hfi1_ibport* %16, %struct.hfi1_ibport** %10, align 8
  %17 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %10, align 8
  %18 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %17)
  store %struct.hfi1_pportdata* %18, %struct.hfi1_pportdata** %11, align 8
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %20 = load i32, i32* @C_DC_SEQ_CRC_CNT, align 4
  %21 = load i32, i32* @CNTR_INVALID_VL, align 4
  %22 = call i64 @read_dev_cntr(%struct.hfi1_devdata* %19, i32 %20, i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %25 = load i32, i32* @C_DC_REINIT_FROM_PEER_CNT, align 4
  %26 = load i32, i32* @CNTR_INVALID_VL, align 4
  %27 = call i64 @read_dev_cntr(%struct.hfi1_devdata* %24, i32 %25, i32 %26)
  %28 = add nsw i64 %23, %27
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @UINT_MAX, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %3
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %3
  %37 = call i8* @cpu_to_be32(i64 -1)
  %38 = load %struct._port_ectrs*, %struct._port_ectrs** %5, align 8
  %39 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %38, i32 0, i32 9
  store i8* %37, i8** %39, align 8
  br label %45

40:                                               ; preds = %32
  %41 = load i64, i64* %8, align 8
  %42 = call i8* @cpu_to_be32(i64 %41)
  %43 = load %struct._port_ectrs*, %struct._port_ectrs** %5, align 8
  %44 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %47 = load i32, i32* @C_SW_LINK_DOWN, align 4
  %48 = load i32, i32* @CNTR_INVALID_VL, align 4
  %49 = call i64 @read_port_cntr(%struct.hfi1_pportdata* %46, i32 %47, i32 %48)
  %50 = call i8* @cpu_to_be32(i64 %49)
  %51 = load %struct._port_ectrs*, %struct._port_ectrs** %5, align 8
  %52 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %51, i32 0, i32 8
  store i8* %50, i8** %52, align 8
  %53 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %54 = load i32, i32* @C_DC_RCV_ERR, align 4
  %55 = load i32, i32* @CNTR_INVALID_VL, align 4
  %56 = call i64 @read_dev_cntr(%struct.hfi1_devdata* %53, i32 %54, i32 %55)
  %57 = call i8* @cpu_to_be64(i64 %56)
  %58 = load %struct._port_ectrs*, %struct._port_ectrs** %5, align 8
  %59 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %61 = load i32, i32* @C_DC_RMT_PHY_ERR, align 4
  %62 = load i32, i32* @CNTR_INVALID_VL, align 4
  %63 = call i64 @read_dev_cntr(%struct.hfi1_devdata* %60, i32 %61, i32 %62)
  %64 = call i8* @cpu_to_be64(i64 %63)
  %65 = load %struct._port_ectrs*, %struct._port_ectrs** %5, align 8
  %66 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load %struct._port_ectrs*, %struct._port_ectrs** %5, align 8
  %68 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %70 = load i32, i32* @C_SW_XMIT_DSCD, align 4
  %71 = load i32, i32* @CNTR_INVALID_VL, align 4
  %72 = call i64 @read_port_cntr(%struct.hfi1_pportdata* %69, i32 %70, i32 %71)
  %73 = call i8* @cpu_to_be64(i64 %72)
  %74 = load %struct._port_ectrs*, %struct._port_ectrs** %5, align 8
  %75 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %77 = load i32, i32* @C_SW_XMIT_CSTR_ERR, align 4
  %78 = load i32, i32* @CNTR_INVALID_VL, align 4
  %79 = call i64 @read_port_cntr(%struct.hfi1_pportdata* %76, i32 %77, i32 %78)
  %80 = call i8* @cpu_to_be64(i64 %79)
  %81 = load %struct._port_ectrs*, %struct._port_ectrs** %5, align 8
  %82 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %84 = load i32, i32* @C_SW_RCV_CSTR_ERR, align 4
  %85 = load i32, i32* @CNTR_INVALID_VL, align 4
  %86 = call i64 @read_port_cntr(%struct.hfi1_pportdata* %83, i32 %84, i32 %85)
  %87 = call i8* @cpu_to_be64(i64 %86)
  %88 = load %struct._port_ectrs*, %struct._port_ectrs** %5, align 8
  %89 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %91 = load i32, i32* @C_DC_RX_REPLAY, align 4
  %92 = load i32, i32* @CNTR_INVALID_VL, align 4
  %93 = call i64 @read_dev_cntr(%struct.hfi1_devdata* %90, i32 %91, i32 %92)
  %94 = call i8* @cpu_to_be64(i64 %93)
  %95 = load %struct._port_ectrs*, %struct._port_ectrs** %5, align 8
  %96 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %98 = load i32, i32* @C_RCV_OVF, align 4
  %99 = load i32, i32* @CNTR_INVALID_VL, align 4
  %100 = call i64 @read_dev_cntr(%struct.hfi1_devdata* %97, i32 %98, i32 %99)
  %101 = call i8* @cpu_to_be64(i64 %100)
  %102 = load %struct._port_ectrs*, %struct._port_ectrs** %5, align 8
  %103 = getelementptr inbounds %struct._port_ectrs, %struct._port_ectrs* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  ret void
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i64 @read_dev_cntr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @read_port_cntr(%struct.hfi1_pportdata*, i32, i32) #1

declare dso_local i8* @cpu_to_be64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
