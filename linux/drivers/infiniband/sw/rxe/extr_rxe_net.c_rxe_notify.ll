; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i64, i64 }
%struct.rxe_dev = type { i32 }

@NOTIFY_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s changed mtu to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ignoring netdev event = %ld for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @rxe_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.rxe_dev*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %10)
  store %struct.net_device* %11, %struct.net_device** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %8, align 8
  %13 = call %struct.rxe_dev* @rxe_get_dev_from_net(%struct.net_device* %12)
  store %struct.rxe_dev* %13, %struct.rxe_dev** %9, align 8
  %14 = load %struct.rxe_dev*, %struct.rxe_dev** %9, align 8
  %15 = icmp ne %struct.rxe_dev* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %17, i32* %4, align 4
  br label %58

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  switch i64 %19, label %47 [
    i64 129, label %20
    i64 128, label %24
    i64 133, label %27
    i64 135, label %30
    i64 137, label %43
    i64 130, label %46
    i64 131, label %46
    i64 136, label %46
    i64 134, label %46
    i64 132, label %46
  ]

20:                                               ; preds = %18
  %21 = load %struct.rxe_dev*, %struct.rxe_dev** %9, align 8
  %22 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %21, i32 0, i32 0
  %23 = call i32 @ib_unregister_device_queued(i32* %22)
  br label %53

24:                                               ; preds = %18
  %25 = load %struct.rxe_dev*, %struct.rxe_dev** %9, align 8
  %26 = call i32 @rxe_port_up(%struct.rxe_dev* %25)
  br label %53

27:                                               ; preds = %18
  %28 = load %struct.rxe_dev*, %struct.rxe_dev** %9, align 8
  %29 = call i32 @rxe_port_down(%struct.rxe_dev* %28)
  br label %53

30:                                               ; preds = %18
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %36)
  %38 = load %struct.rxe_dev*, %struct.rxe_dev** %9, align 8
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @rxe_set_mtu(%struct.rxe_dev* %38, i64 %41)
  br label %53

43:                                               ; preds = %18
  %44 = load %struct.rxe_dev*, %struct.rxe_dev** %9, align 8
  %45 = call i32 @rxe_set_port_state(%struct.rxe_dev* %44)
  br label %53

46:                                               ; preds = %18, %18, %18, %18, %18
  br label %47

47:                                               ; preds = %18, %46
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.net_device*, %struct.net_device** %8, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 %51)
  br label %53

53:                                               ; preds = %47, %43, %30, %27, %24, %20
  %54 = load %struct.rxe_dev*, %struct.rxe_dev** %9, align 8
  %55 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %54, i32 0, i32 0
  %56 = call i32 @ib_device_put(i32* %55)
  %57 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %53, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.rxe_dev* @rxe_get_dev_from_net(%struct.net_device*) #1

declare dso_local i32 @ib_unregister_device_queued(i32*) #1

declare dso_local i32 @rxe_port_up(%struct.rxe_dev*) #1

declare dso_local i32 @rxe_port_down(%struct.rxe_dev*) #1

declare dso_local i32 @pr_info(i8*, i64, i64) #1

declare dso_local i32 @rxe_set_mtu(%struct.rxe_dev*, i64) #1

declare dso_local i32 @rxe_set_port_state(%struct.rxe_dev*) #1

declare dso_local i32 @ib_device_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
