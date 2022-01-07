; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_get_master_net_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_get_master_net_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.net_device*)* @ipoib_get_master_net_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @ipoib_get_master_net_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device* %6)
  store %struct.net_device* %7, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32 @dev_hold(%struct.net_device* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = call i32 (...) @rcu_read_unlock()
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %18, %struct.net_device** %2, align 8
  br label %23

19:                                               ; preds = %13
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @dev_hold(%struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  store %struct.net_device* %22, %struct.net_device** %2, align 8
  br label %23

23:                                               ; preds = %19, %17
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %24
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
