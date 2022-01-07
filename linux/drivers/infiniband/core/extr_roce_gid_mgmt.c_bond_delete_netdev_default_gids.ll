; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_bond_delete_netdev_default_gids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_bond_delete_netdev_default_gids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.net_device = type { i32 }

@BONDING_SLAVE_STATE_INACTIVE = common dso_local global i64 0, align 8
@IB_CACHE_GID_DEFAULT_MODE_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i32, %struct.net_device*, %struct.net_device*)* @bond_delete_netdev_default_gids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_delete_netdev_default_gids(%struct.ib_device* %0, i32 %1, %struct.net_device* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %8, align 8
  %12 = call %struct.net_device* @rdma_vlan_dev_real_dev(%struct.net_device* %11)
  store %struct.net_device* %12, %struct.net_device** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %50

16:                                               ; preds = %4
  %17 = load %struct.net_device*, %struct.net_device** %9, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %20, %struct.net_device** %9, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = icmp ne %struct.net_device* %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = call i32 @rdma_is_upper_dev_rcu(%struct.net_device* %27, %struct.net_device* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26, %21
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = load %struct.net_device*, %struct.net_device** %9, align 8
  %34 = call i64 @is_eth_active_slave_of_bonding_rcu(%struct.net_device* %32, %struct.net_device* %33)
  %35 = load i64, i64* @BONDING_SLAVE_STATE_INACTIVE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %26
  %38 = call i32 (...) @rcu_read_unlock()
  br label %50

39:                                               ; preds = %31
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @roce_gid_type_mask_support(%struct.ib_device* %41, i32 %42)
  store i64 %43, i64* %10, align 8
  %44 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.net_device*, %struct.net_device** %7, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i32, i32* @IB_CACHE_GID_DEFAULT_MODE_DELETE, align 4
  %49 = call i32 @ib_cache_gid_set_default_gid(%struct.ib_device* %44, i32 %45, %struct.net_device* %46, i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %39, %37, %15
  ret void
}

declare dso_local %struct.net_device* @rdma_vlan_dev_real_dev(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @rdma_is_upper_dev_rcu(%struct.net_device*, %struct.net_device*) #1

declare dso_local i64 @is_eth_active_slave_of_bonding_rcu(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @roce_gid_type_mask_support(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_cache_gid_set_default_gid(%struct.ib_device*, i32, %struct.net_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
