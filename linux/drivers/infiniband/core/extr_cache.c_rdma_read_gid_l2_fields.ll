; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_rdma_read_gid_l2_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_rdma_read_gid_l2_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_gid_attr = type { i32 }
%struct.net_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@get_lower_dev_vlan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_gid_attr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.ib_gid_attr* %0, %struct.ib_gid_attr** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %11 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.net_device* @rcu_dereference(i32 %12)
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = call i32 (...) @rcu_read_unlock()
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %51

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.net_device*, %struct.net_device** %8, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ether_addr_copy(i32* %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i32*, i32** %6, align 8
  store i32 65535, i32* %33, align 4
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = call i64 @is_vlan_dev(%struct.net_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.net_device*, %struct.net_device** %8, align 8
  %39 = call i32 @vlan_dev_vlan_id(%struct.net_device* %38)
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  br label %48

41:                                               ; preds = %32
  %42 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %43 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @get_lower_dev_vlan, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @netdev_walk_all_lower_dev_rcu(i32 %44, i32 %45, i32* %46)
  br label %48

48:                                               ; preds = %41, %37
  br label %49

49:                                               ; preds = %48, %29
  %50 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local i32 @vlan_dev_vlan_id(%struct.net_device*) #1

declare dso_local i32 @netdev_walk_all_lower_dev_rcu(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
