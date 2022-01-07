; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_pma_get_opa_port_dctrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_pma_get_opa_port_dctrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct._port_dctrs = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.hfi1_devdata = type { i32 }

@C_DC_XMIT_FLITS = common dso_local global i32 0, align 4
@CNTR_INVALID_VL = common dso_local global i32 0, align 4
@C_DC_RCV_FLITS = common dso_local global i32 0, align 4
@C_DC_XMIT_PKTS = common dso_local global i32 0, align 4
@C_DC_RCV_PKTS = common dso_local global i32 0, align 4
@C_DC_MC_XMIT_PKTS = common dso_local global i32 0, align 4
@C_DC_MC_RCV_PKTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, %struct._port_dctrs*)* @pma_get_opa_port_dctrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pma_get_opa_port_dctrs(%struct.ib_device* %0, %struct._port_dctrs* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct._port_dctrs*, align 8
  %5 = alloca %struct.hfi1_devdata*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct._port_dctrs* %1, %struct._port_dctrs** %4, align 8
  %6 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %7 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %6)
  store %struct.hfi1_devdata* %7, %struct.hfi1_devdata** %5, align 8
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %9 = load i32, i32* @C_DC_XMIT_FLITS, align 4
  %10 = load i32, i32* @CNTR_INVALID_VL, align 4
  %11 = call i32 @read_dev_cntr(%struct.hfi1_devdata* %8, i32 %9, i32 %10)
  %12 = call i8* @cpu_to_be64(i32 %11)
  %13 = load %struct._port_dctrs*, %struct._port_dctrs** %4, align 8
  %14 = getelementptr inbounds %struct._port_dctrs, %struct._port_dctrs* %13, i32 0, i32 5
  store i8* %12, i8** %14, align 8
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %16 = load i32, i32* @C_DC_RCV_FLITS, align 4
  %17 = load i32, i32* @CNTR_INVALID_VL, align 4
  %18 = call i32 @read_dev_cntr(%struct.hfi1_devdata* %15, i32 %16, i32 %17)
  %19 = call i8* @cpu_to_be64(i32 %18)
  %20 = load %struct._port_dctrs*, %struct._port_dctrs** %4, align 8
  %21 = getelementptr inbounds %struct._port_dctrs, %struct._port_dctrs* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %23 = load i32, i32* @C_DC_XMIT_PKTS, align 4
  %24 = load i32, i32* @CNTR_INVALID_VL, align 4
  %25 = call i32 @read_dev_cntr(%struct.hfi1_devdata* %22, i32 %23, i32 %24)
  %26 = call i8* @cpu_to_be64(i32 %25)
  %27 = load %struct._port_dctrs*, %struct._port_dctrs** %4, align 8
  %28 = getelementptr inbounds %struct._port_dctrs, %struct._port_dctrs* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %30 = load i32, i32* @C_DC_RCV_PKTS, align 4
  %31 = load i32, i32* @CNTR_INVALID_VL, align 4
  %32 = call i32 @read_dev_cntr(%struct.hfi1_devdata* %29, i32 %30, i32 %31)
  %33 = call i8* @cpu_to_be64(i32 %32)
  %34 = load %struct._port_dctrs*, %struct._port_dctrs** %4, align 8
  %35 = getelementptr inbounds %struct._port_dctrs, %struct._port_dctrs* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %37 = load i32, i32* @C_DC_MC_XMIT_PKTS, align 4
  %38 = load i32, i32* @CNTR_INVALID_VL, align 4
  %39 = call i32 @read_dev_cntr(%struct.hfi1_devdata* %36, i32 %37, i32 %38)
  %40 = call i8* @cpu_to_be64(i32 %39)
  %41 = load %struct._port_dctrs*, %struct._port_dctrs** %4, align 8
  %42 = getelementptr inbounds %struct._port_dctrs, %struct._port_dctrs* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %44 = load i32, i32* @C_DC_MC_RCV_PKTS, align 4
  %45 = load i32, i32* @CNTR_INVALID_VL, align 4
  %46 = call i32 @read_dev_cntr(%struct.hfi1_devdata* %43, i32 %44, i32 %45)
  %47 = call i8* @cpu_to_be64(i32 %46)
  %48 = load %struct._port_dctrs*, %struct._port_dctrs** %4, align 8
  %49 = getelementptr inbounds %struct._port_dctrs, %struct._port_dctrs* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  ret void
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @read_dev_cntr(%struct.hfi1_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
