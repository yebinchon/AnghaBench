; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_is_eth_active_slave_of_bonding_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_is_eth_active_slave_of_bonding_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@BONDING_SLAVE_STATE_ACTIVE = common dso_local global i32 0, align 4
@BONDING_SLAVE_STATE_INACTIVE = common dso_local global i32 0, align 4
@BONDING_SLAVE_STATE_NA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*)* @is_eth_active_slave_of_bonding_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_eth_active_slave_of_bonding_rcu(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call i64 @netif_is_bond_master(%struct.net_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i32 @netdev_priv(%struct.net_device* %14)
  %16 = call %struct.net_device* @bond_option_active_slave_get_rcu(i32 %15)
  store %struct.net_device* %16, %struct.net_device** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = icmp eq %struct.net_device* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @BONDING_SLAVE_STATE_ACTIVE, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @BONDING_SLAVE_STATE_INACTIVE, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29, %9, %2
  %31 = load i32, i32* @BONDING_SLAVE_STATE_NA, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @netif_is_bond_master(%struct.net_device*) #1

declare dso_local %struct.net_device* @bond_option_active_slave_get_rcu(i32) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
