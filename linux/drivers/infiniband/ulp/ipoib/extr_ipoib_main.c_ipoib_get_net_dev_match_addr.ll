; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_get_net_dev_match_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_get_net_dev_match_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.net_device = type { i32 }
%struct.ipoib_walk_data = type { %struct.net_device*, %struct.sockaddr* }

@ipoib_upper_walk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.sockaddr*, %struct.net_device*)* @ipoib_get_net_dev_match_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @ipoib_get_net_dev_match_addr(%struct.sockaddr* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ipoib_walk_data, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = getelementptr inbounds %struct.ipoib_walk_data, %struct.ipoib_walk_data* %5, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %6, align 8
  %7 = getelementptr inbounds %struct.ipoib_walk_data, %struct.ipoib_walk_data* %5, i32 0, i32 1
  %8 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  store %struct.sockaddr* %8, %struct.sockaddr** %7, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i64 @ipoib_is_dev_match_addr_rcu(%struct.sockaddr* %10, %struct.net_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 @dev_hold(%struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = getelementptr inbounds %struct.ipoib_walk_data, %struct.ipoib_walk_data* %5, i32 0, i32 0
  store %struct.net_device* %17, %struct.net_device** %18, align 8
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load i32, i32* @ipoib_upper_walk, align 4
  %22 = call i32 @netdev_walk_all_upper_dev_rcu(%struct.net_device* %20, i32 %21, %struct.ipoib_walk_data* %5)
  br label %23

23:                                               ; preds = %19, %14
  %24 = call i32 (...) @rcu_read_unlock()
  %25 = getelementptr inbounds %struct.ipoib_walk_data, %struct.ipoib_walk_data* %5, i32 0, i32 0
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  ret %struct.net_device* %26
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @ipoib_is_dev_match_addr_rcu(%struct.sockaddr*, %struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @netdev_walk_all_upper_dev_rcu(%struct.net_device*, i32, %struct.ipoib_walk_data*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
