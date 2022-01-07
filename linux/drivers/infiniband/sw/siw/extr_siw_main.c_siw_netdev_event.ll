; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_main.c_siw_netdev_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_main.c_siw_netdev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.ib_device = type { i32 }
%struct.siw_device = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"siw: event %lu\0A\00", align 1
@init_net = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@RDMA_DRIVER_SIW = common dso_local global i32 0, align 4
@IB_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_PORT_DOWN = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unexpected NETDEV_REGISTER event\0A\00", align 1
@IB_EVENT_LID_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @siw_netdev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_netdev_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ib_device*, align 8
  %10 = alloca %struct.siw_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %11)
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %8, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = call i32* @dev_net(%struct.net_device* %17)
  %19 = icmp ne i32* %18, @init_net
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %21, i32* %4, align 4
  br label %69

22:                                               ; preds = %3
  %23 = load %struct.net_device*, %struct.net_device** %8, align 8
  %24 = load i32, i32* @RDMA_DRIVER_SIW, align 4
  %25 = call %struct.ib_device* @ib_device_get_by_netdev(%struct.net_device* %23, i32 %24)
  store %struct.ib_device* %25, %struct.ib_device** %9, align 8
  %26 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %27 = icmp ne %struct.ib_device* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %29, i32* %4, align 4
  br label %69

30:                                               ; preds = %22
  %31 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %32 = call %struct.siw_device* @to_siw_dev(%struct.ib_device* %31)
  store %struct.siw_device* %32, %struct.siw_device** %10, align 8
  %33 = load i64, i64* %6, align 8
  switch i64 %33, label %63 [
    i64 128, label %34
    i64 131, label %41
    i64 132, label %44
    i64 130, label %51
    i64 129, label %54
    i64 134, label %58
    i64 133, label %62
    i64 135, label %62
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @IB_PORT_ACTIVE, align 4
  %36 = load %struct.siw_device*, %struct.siw_device** %10, align 8
  %37 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.siw_device*, %struct.siw_device** %10, align 8
  %39 = load i32, i32* @IB_EVENT_PORT_ACTIVE, align 4
  %40 = call i32 @siw_port_event(%struct.siw_device* %38, i32 1, i32 %39)
  br label %64

41:                                               ; preds = %30
  %42 = load %struct.siw_device*, %struct.siw_device** %10, align 8
  %43 = call i32 @siw_device_goes_down(%struct.siw_device* %42)
  br label %64

44:                                               ; preds = %30
  %45 = load i32, i32* @IB_PORT_DOWN, align 4
  %46 = load %struct.siw_device*, %struct.siw_device** %10, align 8
  %47 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.siw_device*, %struct.siw_device** %10, align 8
  %49 = load i32, i32* @IB_EVENT_PORT_ERR, align 4
  %50 = call i32 @siw_port_event(%struct.siw_device* %48, i32 1, i32 %49)
  br label %64

51:                                               ; preds = %30
  %52 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %53 = call i32 @siw_dbg(%struct.ib_device* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %64

54:                                               ; preds = %30
  %55 = load %struct.siw_device*, %struct.siw_device** %10, align 8
  %56 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %55, i32 0, i32 0
  %57 = call i32 @ib_unregister_device_queued(i32* %56)
  br label %64

58:                                               ; preds = %30
  %59 = load %struct.siw_device*, %struct.siw_device** %10, align 8
  %60 = load i32, i32* @IB_EVENT_LID_CHANGE, align 4
  %61 = call i32 @siw_port_event(%struct.siw_device* %59, i32 1, i32 %60)
  br label %64

62:                                               ; preds = %30, %30
  br label %64

63:                                               ; preds = %30
  br label %64

64:                                               ; preds = %63, %62, %58, %54, %51, %44, %41, %34
  %65 = load %struct.siw_device*, %struct.siw_device** %10, align 8
  %66 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %65, i32 0, i32 0
  %67 = call i32 @ib_device_put(i32* %66)
  %68 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %28, %20
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32* @dev_net(%struct.net_device*) #1

declare dso_local %struct.ib_device* @ib_device_get_by_netdev(%struct.net_device*, i32) #1

declare dso_local %struct.siw_device* @to_siw_dev(%struct.ib_device*) #1

declare dso_local i32 @siw_port_event(%struct.siw_device*, i32, i32) #1

declare dso_local i32 @siw_device_goes_down(%struct.siw_device*) #1

declare dso_local i32 @siw_dbg(%struct.ib_device*, i8*) #1

declare dso_local i32 @ib_unregister_device_queued(i32*) #1

declare dso_local i32 @ib_device_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
