; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_is_ndev_for_default_gid_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_is_ndev_for_default_gid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.net_device*, i8*)* @is_ndev_for_default_gid_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ndev_for_default_gid_filter(%struct.ib_device* %0, i32 %1, %struct.net_device* %2, i8* %3) #0 {
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
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %10, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %42

17:                                               ; preds = %4
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.net_device*, %struct.net_device** %10, align 8
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = icmp eq %struct.net_device* %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.net_device*, %struct.net_device** %8, align 8
  %24 = call i32 @netif_is_bond_slave(%struct.net_device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22, %17
  %27 = load %struct.net_device*, %struct.net_device** %10, align 8
  %28 = call i64 @netif_is_bond_master(%struct.net_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = load %struct.net_device*, %struct.net_device** %10, align 8
  %33 = call i64 @rdma_is_upper_dev_rcu(%struct.net_device* %31, %struct.net_device* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i1 [ false, %26 ], [ %34, %30 ]
  br label %37

37:                                               ; preds = %35, %22
  %38 = phi i1 [ true, %22 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %37, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @netif_is_bond_slave(%struct.net_device*) #1

declare dso_local i64 @netif_is_bond_master(%struct.net_device*) #1

declare dso_local i64 @rdma_is_upper_dev_rcu(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
