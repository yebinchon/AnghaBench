; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_netdevice_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_netdevice_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.i40iw_device = type { i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.i40iw_handler = type { %struct.i40iw_device }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@RDMA_DEV_REGISTERED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_netdevice_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.i40iw_device*, align 8
  %11 = alloca %struct.i40iw_handler*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %12)
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = call %struct.i40iw_handler* @i40iw_find_netdev(%struct.net_device* %14)
  store %struct.i40iw_handler* %15, %struct.i40iw_handler** %11, align 8
  %16 = load %struct.i40iw_handler*, %struct.i40iw_handler** %11, align 8
  %17 = icmp ne %struct.i40iw_handler* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %19, i32* %4, align 4
  br label %59

20:                                               ; preds = %3
  %21 = load %struct.i40iw_handler*, %struct.i40iw_handler** %11, align 8
  %22 = getelementptr inbounds %struct.i40iw_handler, %struct.i40iw_handler* %21, i32 0, i32 0
  store %struct.i40iw_device* %22, %struct.i40iw_device** %10, align 8
  %23 = load %struct.i40iw_device*, %struct.i40iw_device** %10, align 8
  %24 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RDMA_DEV_REGISTERED, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %20
  %29 = load %struct.i40iw_device*, %struct.i40iw_device** %10, align 8
  %30 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %20
  %34 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %34, i32* %4, align 4
  br label %59

35:                                               ; preds = %28
  %36 = load %struct.i40iw_device*, %struct.i40iw_device** %10, align 8
  %37 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.net_device*, %struct.net_device** %39, align 8
  store %struct.net_device* %40, %struct.net_device** %9, align 8
  %41 = load %struct.net_device*, %struct.net_device** %9, align 8
  %42 = load %struct.net_device*, %struct.net_device** %8, align 8
  %43 = icmp ne %struct.net_device* %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %45, i32* %4, align 4
  br label %59

46:                                               ; preds = %35
  %47 = load %struct.i40iw_device*, %struct.i40iw_device** %10, align 8
  %48 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  %49 = load i64, i64* %6, align 8
  switch i64 %49, label %56 [
    i64 129, label %50
    i64 128, label %53
  ]

50:                                               ; preds = %46
  %51 = load %struct.i40iw_device*, %struct.i40iw_device** %10, align 8
  %52 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %51, i32 0, i32 1
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %46, %50
  %54 = load %struct.i40iw_device*, %struct.i40iw_device** %10, align 8
  %55 = call i32 @i40iw_port_ibevent(%struct.i40iw_device* %54)
  br label %57

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %44, %33, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.i40iw_handler* @i40iw_find_netdev(%struct.net_device*) #1

declare dso_local i32 @i40iw_port_ibevent(%struct.i40iw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
