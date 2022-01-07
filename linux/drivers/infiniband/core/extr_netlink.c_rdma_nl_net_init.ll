; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_netlink.c_rdma_nl_net_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_netlink.c_rdma_nl_net_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_dev_net = type { %struct.sock*, i32 }
%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.netlink_kernel_cfg = type { i32 }

@rdma_nl_rcv = common dso_local global i32 0, align 4
@NETLINK_RDMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_nl_net_init(%struct.rdma_dev_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_dev_net*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.netlink_kernel_cfg, align 4
  %6 = alloca %struct.sock*, align 8
  store %struct.rdma_dev_net* %0, %struct.rdma_dev_net** %3, align 8
  %7 = load %struct.rdma_dev_net*, %struct.rdma_dev_net** %3, align 8
  %8 = getelementptr inbounds %struct.rdma_dev_net, %struct.rdma_dev_net* %7, i32 0, i32 1
  %9 = call %struct.net* @read_pnet(i32* %8)
  store %struct.net* %9, %struct.net** %4, align 8
  %10 = getelementptr inbounds %struct.netlink_kernel_cfg, %struct.netlink_kernel_cfg* %5, i32 0, i32 0
  %11 = load i32, i32* @rdma_nl_rcv, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.net*, %struct.net** %4, align 8
  %13 = load i32, i32* @NETLINK_RDMA, align 4
  %14 = call %struct.sock* @netlink_kernel_create(%struct.net* %12, i32 %13, %struct.netlink_kernel_cfg* %5)
  store %struct.sock* %14, %struct.sock** %6, align 8
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = icmp ne %struct.sock* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %28

20:                                               ; preds = %1
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 10, %21
  %23 = load %struct.sock*, %struct.sock** %6, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sock*, %struct.sock** %6, align 8
  %26 = load %struct.rdma_dev_net*, %struct.rdma_dev_net** %3, align 8
  %27 = getelementptr inbounds %struct.rdma_dev_net, %struct.rdma_dev_net* %26, i32 0, i32 0
  store %struct.sock* %25, %struct.sock** %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %20, %17
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.net* @read_pnet(i32*) #1

declare dso_local %struct.sock* @netlink_kernel_create(%struct.net*, i32, %struct.netlink_kernel_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
