; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_is_eth_port_of_netdev_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_is_eth_port_of_netdev_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.net_device = type { i32 }

@REQUIRED_BOND_STATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.net_device*, i8*)* @is_eth_port_of_netdev_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_eth_port_of_netdev_filter(%struct.ib_device* %0, i32 %1, %struct.net_device* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %8, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

15:                                               ; preds = %4
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load i8*, i8** %9, align 8
  %18 = call %struct.net_device* @rdma_vlan_dev_real_dev(i8* %17)
  store %struct.net_device* %18, %struct.net_device** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %10, align 8
  %20 = icmp ne %struct.net_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.net_device*
  store %struct.net_device* %23, %struct.net_device** %10, align 8
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.net_device*, %struct.net_device** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @rdma_is_upper_dev_rcu(%struct.net_device* %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = load %struct.net_device*, %struct.net_device** %10, align 8
  %32 = call i32 @is_eth_active_slave_of_bonding_rcu(%struct.net_device* %30, %struct.net_device* %31)
  %33 = load i32, i32* @REQUIRED_BOND_STATES, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29, %24
  %37 = load %struct.net_device*, %struct.net_device** %10, align 8
  %38 = load %struct.net_device*, %struct.net_device** %8, align 8
  %39 = icmp eq %struct.net_device* %37, %38
  br label %40

40:                                               ; preds = %36, %29
  %41 = phi i1 [ true, %29 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = call i32 (...) @rcu_read_unlock()
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %14
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @rdma_vlan_dev_real_dev(i8*) #1

declare dso_local i64 @rdma_is_upper_dev_rcu(%struct.net_device*, i8*) #1

declare dso_local i32 @is_eth_active_slave_of_bonding_rcu(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
