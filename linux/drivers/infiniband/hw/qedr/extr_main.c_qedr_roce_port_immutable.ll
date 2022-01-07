; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_roce_port_immutable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_roce_port_immutable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_attr = type { i32, i32 }

@RDMA_CORE_PORT_IBA_ROCE = common dso_local global i32 0, align 4
@RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP = common dso_local global i32 0, align 4
@IB_MGMT_MAD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_immutable*)* @qedr_roce_port_immutable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_roce_port_immutable(%struct.ib_device* %0, i32 %1, %struct.ib_port_immutable* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_immutable*, align 8
  %8 = alloca %struct.ib_port_attr, align 4
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_immutable* %2, %struct.ib_port_immutable** %7, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @qedr_query_port(%struct.ib_device* %10, i32 %11, %struct.ib_port_attr* %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %34

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %21 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %25 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @RDMA_CORE_PORT_IBA_ROCE, align 4
  %27 = load i32, i32* @RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %30 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @IB_MGMT_MAD_SIZE, align 4
  %32 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %33 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %17, %15
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @qedr_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
