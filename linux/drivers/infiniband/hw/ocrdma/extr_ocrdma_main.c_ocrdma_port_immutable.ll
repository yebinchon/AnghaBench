; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_main.c_ocrdma_port_immutable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_main.c_ocrdma_port_immutable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_attr = type { i32, i32 }
%struct.ocrdma_dev = type { i32 }

@RDMA_CORE_PORT_IBA_ROCE = common dso_local global i32 0, align 4
@RDMA_CORE_CAP_PROT_ROCE_UDP_ENCAP = common dso_local global i32 0, align 4
@IB_MGMT_MAD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_immutable*)* @ocrdma_port_immutable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_port_immutable(%struct.ib_device* %0, i32 %1, %struct.ib_port_immutable* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_immutable*, align 8
  %8 = alloca %struct.ib_port_attr, align 4
  %9 = alloca %struct.ocrdma_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_immutable* %2, %struct.ib_port_immutable** %7, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = call %struct.ocrdma_dev* @get_ocrdma_dev(%struct.ib_device* %11)
  store %struct.ocrdma_dev* %12, %struct.ocrdma_dev** %9, align 8
  %13 = load i32, i32* @RDMA_CORE_PORT_IBA_ROCE, align 4
  %14 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %15 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %17 = call i64 @ocrdma_is_udp_encap_supported(%struct.ocrdma_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32, i32* @RDMA_CORE_CAP_PROT_ROCE_UDP_ENCAP, align 4
  %21 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %22 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %19, %3
  %26 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ib_query_port(%struct.ib_device* %26, i32 %27, %struct.ib_port_attr* %8)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %45

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %37 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %41 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @IB_MGMT_MAD_SIZE, align 4
  %43 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %44 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %33, %31
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(%struct.ib_device*) #1

declare dso_local i64 @ocrdma_is_udp_encap_supported(%struct.ocrdma_dev*) #1

declare dso_local i32 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
