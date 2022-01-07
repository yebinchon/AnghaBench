; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_rdma_set_src_addr_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_rdma_set_src_addr_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_dev_addr = type { i32 }
%struct.sockaddr = type { i32 }
%struct.dst_entry = type { i32 }
%struct.net_device = type { i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_dev_addr*, i32*, %struct.sockaddr*, %struct.dst_entry*)* @rdma_set_src_addr_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_set_src_addr_rcu(%struct.rdma_dev_addr* %0, i32* %1, %struct.sockaddr* %2, %struct.dst_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rdma_dev_addr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.rdma_dev_addr* %0, %struct.rdma_dev_addr** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store %struct.dst_entry* %3, %struct.dst_entry** %9, align 8
  %11 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %12 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net_device* @READ_ONCE(i32 %13)
  store %struct.net_device* %14, %struct.net_device** %10, align 8
  %15 = load %struct.net_device*, %struct.net_device** %10, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.net_device*, %struct.net_device** %10, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFF_LOOPBACK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %4
  %26 = load %struct.net_device*, %struct.net_device** %10, align 8
  %27 = call i32 @dev_net(%struct.net_device* %26)
  %28 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %29 = call %struct.net_device* @rdma_find_ndev_for_src_ip_rcu(i32 %27, %struct.sockaddr* %28)
  store %struct.net_device* %29, %struct.net_device** %10, align 8
  %30 = load %struct.net_device*, %struct.net_device** %10, align 8
  %31 = call i64 @IS_ERR(%struct.net_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %43

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %4
  %38 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %6, align 8
  %39 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %40 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %41 = load %struct.net_device*, %struct.net_device** %10, align 8
  %42 = call i32 @copy_src_l2_addr(%struct.rdma_dev_addr* %38, %struct.sockaddr* %39, %struct.dst_entry* %40, %struct.net_device* %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %33
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.net_device* @READ_ONCE(i32) #1

declare dso_local %struct.net_device* @rdma_find_ndev_for_src_ip_rcu(i32, %struct.sockaddr*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @copy_src_l2_addr(%struct.rdma_dev_addr*, %struct.sockaddr*, %struct.dst_entry*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
