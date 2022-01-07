; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_del_netdev_default_ips_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_del_netdev_default_ips_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i32, %struct.net_device*, i8*)* @del_netdev_default_ips_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_netdev_default_ips_join(%struct.ib_device* %0, i32 %1, %struct.net_device* %2, i8* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.net_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = call %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device* %11)
  store %struct.net_device* %12, %struct.net_device** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %9, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.net_device*, %struct.net_device** %9, align 8
  %17 = call i32 @dev_hold(%struct.net_device* %16)
  br label %18

18:                                               ; preds = %15, %4
  %19 = call i32 (...) @rcu_read_unlock()
  %20 = load %struct.net_device*, %struct.net_device** %9, align 8
  %21 = icmp ne %struct.net_device* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = load %struct.net_device*, %struct.net_device** %9, align 8
  %27 = call i32 @bond_delete_netdev_default_gids(%struct.ib_device* %23, i32 %24, %struct.net_device* %25, %struct.net_device* %26)
  %28 = load %struct.net_device*, %struct.net_device** %9, align 8
  %29 = call i32 @dev_put(%struct.net_device* %28)
  br label %30

30:                                               ; preds = %22, %18
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @bond_delete_netdev_default_gids(%struct.ib_device*, i32, %struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
