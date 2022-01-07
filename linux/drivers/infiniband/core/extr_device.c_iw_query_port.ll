; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_iw_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_iw_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.ib_device.0*, i32, %struct.ib_port_attr*)* }
%struct.ib_device.0 = type opaque
%struct.ib_port_attr = type { i32, i32, i32, i32 }
%struct.in_device = type { i64 }
%struct.net_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4
@IB_PORT_DOWN = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_DISABLED = common dso_local global i32 0, align 4
@IB_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_LINK_UP = common dso_local global i32 0, align 4
@IB_PORT_INIT = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_PORT_CONFIGURATION_TRAINING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_attr*)* @iw_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iw_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_attr*, align 8
  %8 = alloca %struct.in_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %7, align 8
  %11 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %12 = call i32 @memset(%struct.ib_port_attr* %11, i32 0, i32 16)
  %13 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.net_device* @ib_device_get_netdev(%struct.ib_device* %13, i32 %14)
  store %struct.net_device* %15, %struct.net_device** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %9, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %85

21:                                               ; preds = %3
  %22 = load i32, i32* @IB_MTU_4096, align 4
  %23 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %24 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.net_device*, %struct.net_device** %9, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ib_mtu_int_to_enum(i32 %27)
  %29 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %30 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.net_device*, %struct.net_device** %9, align 8
  %32 = call i32 @netif_carrier_ok(%struct.net_device* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* @IB_PORT_DOWN, align 4
  %36 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %37 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @IB_PORT_PHYS_STATE_DISABLED, align 4
  %39 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %40 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %68

41:                                               ; preds = %21
  %42 = call i32 (...) @rcu_read_lock()
  %43 = load %struct.net_device*, %struct.net_device** %9, align 8
  %44 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %43)
  store %struct.in_device* %44, %struct.in_device** %8, align 8
  %45 = load %struct.in_device*, %struct.in_device** %8, align 8
  %46 = icmp ne %struct.in_device* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load %struct.in_device*, %struct.in_device** %8, align 8
  %49 = getelementptr inbounds %struct.in_device, %struct.in_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* @IB_PORT_ACTIVE, align 4
  %54 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %55 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @IB_PORT_PHYS_STATE_LINK_UP, align 4
  %57 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %58 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %66

59:                                               ; preds = %47, %41
  %60 = load i32, i32* @IB_PORT_INIT, align 4
  %61 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %62 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @IB_PORT_PHYS_STATE_PORT_CONFIGURATION_TRAINING, align 4
  %64 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %65 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %52
  %67 = call i32 (...) @rcu_read_unlock()
  br label %68

68:                                               ; preds = %66, %34
  %69 = load %struct.net_device*, %struct.net_device** %9, align 8
  %70 = call i32 @dev_put(%struct.net_device* %69)
  %71 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %72 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32 (%struct.ib_device.0*, i32, %struct.ib_port_attr*)*, i32 (%struct.ib_device.0*, i32, %struct.ib_port_attr*)** %73, align 8
  %75 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %76 = bitcast %struct.ib_device* %75 to %struct.ib_device.0*
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %79 = call i32 %74(%struct.ib_device.0* %76, i32 %77, %struct.ib_port_attr* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %82, %18
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @memset(%struct.ib_port_attr*, i32, i32) #1

declare dso_local %struct.net_device* @ib_device_get_netdev(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_mtu_int_to_enum(i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
