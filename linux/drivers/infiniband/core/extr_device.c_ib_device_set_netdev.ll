; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_device_set_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_device_set_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.ib_port_data* }
%struct.ib_port_data = type { i32, i32 }
%struct.net_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_device_set_netdev(%struct.ib_device* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ib_port_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %13 = call i32 @alloc_port_data(%struct.ib_device* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %4, align 4
  br label %76

18:                                               ; preds = %3
  %19 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @rdma_is_port_valid(%struct.ib_device* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %76

26:                                               ; preds = %18
  %27 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %28 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %27, i32 0, i32 0
  %29 = load %struct.ib_port_data*, %struct.ib_port_data** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %29, i64 %31
  store %struct.ib_port_data* %32, %struct.ib_port_data** %9, align 8
  %33 = load %struct.ib_port_data*, %struct.ib_port_data** %9, align 8
  %34 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %33, i32 0, i32 0
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.ib_port_data*, %struct.ib_port_data** %9, align 8
  %38 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ib_port_data*, %struct.ib_port_data** %9, align 8
  %41 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %40, i32 0, i32 0
  %42 = call i32 @lockdep_is_held(i32* %41)
  %43 = call %struct.net_device* @rcu_dereference_protected(i32 %39, i32 %42)
  store %struct.net_device* %43, %struct.net_device** %8, align 8
  %44 = load %struct.net_device*, %struct.net_device** %8, align 8
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = icmp eq %struct.net_device* %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %26
  %48 = load %struct.ib_port_data*, %struct.ib_port_data** %9, align 8
  %49 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %48, i32 0, i32 0
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  store i32 0, i32* %4, align 4
  br label %76

52:                                               ; preds = %26
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = icmp ne %struct.net_device* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = call i32 @dev_hold(%struct.net_device* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.ib_port_data*, %struct.ib_port_data** %9, align 8
  %60 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = call i32 @rcu_assign_pointer(i32 %61, %struct.net_device* %62)
  %64 = load %struct.ib_port_data*, %struct.ib_port_data** %9, align 8
  %65 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %64, i32 0, i32 0
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.ib_port_data*, %struct.ib_port_data** %9, align 8
  %69 = call i32 @add_ndev_hash(%struct.ib_port_data* %68)
  %70 = load %struct.net_device*, %struct.net_device** %8, align 8
  %71 = icmp ne %struct.net_device* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %58
  %73 = load %struct.net_device*, %struct.net_device** %8, align 8
  %74 = call i32 @dev_put(%struct.net_device* %73)
  br label %75

75:                                               ; preds = %72, %58
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %47, %23, %16
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @alloc_port_data(%struct.ib_device*) #1

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.net_device* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.net_device*) #1

declare dso_local i32 @add_ndev_hash(%struct.ib_port_data*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
