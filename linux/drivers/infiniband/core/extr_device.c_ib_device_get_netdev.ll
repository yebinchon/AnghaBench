; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_device_get_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_device_get_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.ib_device = type { %struct.TYPE_2__, %struct.ib_port_data* }
%struct.TYPE_2__ = type { %struct.net_device* (%struct.ib_device.0*, i32)* }
%struct.ib_device.0 = type opaque
%struct.ib_port_data = type { i32, i32 }

@NETREG_REGISTERED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @ib_device_get_netdev(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_data*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @rdma_is_port_valid(%struct.ib_device* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %68

13:                                               ; preds = %2
  %14 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %15 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %14, i32 0, i32 1
  %16 = load %struct.ib_port_data*, %struct.ib_port_data** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %16, i64 %18
  store %struct.ib_port_data* %19, %struct.ib_port_data** %6, align 8
  %20 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %21 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.net_device* (%struct.ib_device.0*, i32)*, %struct.net_device* (%struct.ib_device.0*, i32)** %22, align 8
  %24 = icmp ne %struct.net_device* (%struct.ib_device.0*, i32)* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %13
  %26 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %27 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.net_device* (%struct.ib_device.0*, i32)*, %struct.net_device* (%struct.ib_device.0*, i32)** %28, align 8
  %30 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %31 = bitcast %struct.ib_device* %30 to %struct.ib_device.0*
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.net_device* %29(%struct.ib_device.0* %31, i32 %32)
  store %struct.net_device* %33, %struct.net_device** %7, align 8
  br label %54

34:                                               ; preds = %13
  %35 = load %struct.ib_port_data*, %struct.ib_port_data** %6, align 8
  %36 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.ib_port_data*, %struct.ib_port_data** %6, align 8
  %39 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ib_port_data*, %struct.ib_port_data** %6, align 8
  %42 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %41, i32 0, i32 0
  %43 = call i32 @lockdep_is_held(i32* %42)
  %44 = call %struct.net_device* @rcu_dereference_protected(i32 %40, i32 %43)
  store %struct.net_device* %44, %struct.net_device** %7, align 8
  %45 = load %struct.net_device*, %struct.net_device** %7, align 8
  %46 = icmp ne %struct.net_device* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load %struct.net_device*, %struct.net_device** %7, align 8
  %49 = call i32 @dev_hold(%struct.net_device* %48)
  br label %50

50:                                               ; preds = %47, %34
  %51 = load %struct.ib_port_data*, %struct.ib_port_data** %6, align 8
  %52 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  br label %54

54:                                               ; preds = %50, %25
  %55 = load %struct.net_device*, %struct.net_device** %7, align 8
  %56 = icmp ne %struct.net_device* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NETREG_REGISTERED, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.net_device*, %struct.net_device** %7, align 8
  %65 = call i32 @dev_put(%struct.net_device* %64)
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %68

66:                                               ; preds = %57, %54
  %67 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %67, %struct.net_device** %3, align 8
  br label %68

68:                                               ; preds = %66, %63, %12
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %69
}

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.net_device* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
