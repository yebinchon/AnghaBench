; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe.c_rxe_init_port_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe.c_rxe_init_port_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IB_PORT_DOWN = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4
@IB_MTU_256 = common dso_local global i32 0, align 4
@RXE_PORT_GID_TBL_LEN = common dso_local global i32 0, align 4
@RXE_PORT_PORT_CAP_FLAGS = common dso_local global i32 0, align 4
@RXE_PORT_MAX_MSG_SZ = common dso_local global i32 0, align 4
@RXE_PORT_BAD_PKEY_CNTR = common dso_local global i32 0, align 4
@RXE_PORT_QKEY_VIOL_CNTR = common dso_local global i32 0, align 4
@RXE_PORT_PKEY_TBL_LEN = common dso_local global i32 0, align 4
@RXE_PORT_LID = common dso_local global i32 0, align 4
@RXE_PORT_SM_LID = common dso_local global i32 0, align 4
@RXE_PORT_LMC = common dso_local global i32 0, align 4
@RXE_PORT_MAX_VL_NUM = common dso_local global i32 0, align 4
@RXE_PORT_SM_SL = common dso_local global i32 0, align 4
@RXE_PORT_SUBNET_TIMEOUT = common dso_local global i32 0, align 4
@RXE_PORT_INIT_TYPE_REPLY = common dso_local global i32 0, align 4
@RXE_PORT_ACTIVE_WIDTH = common dso_local global i32 0, align 4
@RXE_PORT_ACTIVE_SPEED = common dso_local global i32 0, align 4
@RXE_PORT_PHYS_STATE = common dso_local global i32 0, align 4
@RXE_PORT_SUBNET_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_port*)* @rxe_init_port_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_init_port_param(%struct.rxe_port* %0) #0 {
  %2 = alloca %struct.rxe_port*, align 8
  store %struct.rxe_port* %0, %struct.rxe_port** %2, align 8
  %3 = load i32, i32* @IB_PORT_DOWN, align 4
  %4 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %5 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 18
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @IB_MTU_4096, align 4
  %8 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %9 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 17
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @IB_MTU_256, align 4
  %12 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %13 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 16
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @RXE_PORT_GID_TBL_LEN, align 4
  %16 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %17 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 15
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @RXE_PORT_PORT_CAP_FLAGS, align 4
  %20 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %21 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 14
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @RXE_PORT_MAX_MSG_SZ, align 4
  %24 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %25 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 13
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @RXE_PORT_BAD_PKEY_CNTR, align 4
  %28 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %29 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 12
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @RXE_PORT_QKEY_VIOL_CNTR, align 4
  %32 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %33 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 11
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @RXE_PORT_PKEY_TBL_LEN, align 4
  %36 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %37 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 10
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @RXE_PORT_LID, align 4
  %40 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %41 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 9
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @RXE_PORT_SM_LID, align 4
  %44 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %45 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 8
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @RXE_PORT_LMC, align 4
  %48 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %49 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 7
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @RXE_PORT_MAX_VL_NUM, align 4
  %52 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %53 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 6
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @RXE_PORT_SM_SL, align 4
  %56 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %57 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 5
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @RXE_PORT_SUBNET_TIMEOUT, align 4
  %60 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %61 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @RXE_PORT_INIT_TYPE_REPLY, align 4
  %64 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %65 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @RXE_PORT_ACTIVE_WIDTH, align 4
  %68 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %69 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @RXE_PORT_ACTIVE_SPEED, align 4
  %72 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %73 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @RXE_PORT_PHYS_STATE, align 4
  %76 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %77 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @IB_MTU_256, align 4
  %80 = call i32 @ib_mtu_enum_to_int(i32 %79)
  %81 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %82 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @RXE_PORT_SUBNET_PREFIX, align 4
  %84 = call i32 @cpu_to_be64(i32 %83)
  %85 = load %struct.rxe_port*, %struct.rxe_port** %2, align 8
  %86 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  ret i32 0
}

declare dso_local i32 @ib_mtu_enum_to_int(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
