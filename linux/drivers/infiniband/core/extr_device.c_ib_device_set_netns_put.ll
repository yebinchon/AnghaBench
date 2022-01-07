; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_device_set_netns_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_device_set_netns_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ib_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.net = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ib_devices_shared_netns = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_device_set_netns_put(%struct.sk_buff* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.ib_device* %1, %struct.ib_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.net* @get_net_ns_by_fd(i32 %10)
  store %struct.net* %11, %struct.net** %8, align 8
  %12 = load %struct.net*, %struct.net** %8, align 8
  %13 = call i64 @IS_ERR(%struct.net* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.net*, %struct.net** %8, align 8
  %17 = call i32 @PTR_ERR(%struct.net* %16)
  store i32 %17, i32* %9, align 4
  br label %70

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = load %struct.net*, %struct.net** %8, align 8
  %21 = getelementptr inbounds %struct.net, %struct.net* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CAP_NET_ADMIN, align 4
  %24 = call i32 @netlink_ns_capable(%struct.sk_buff* %19, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %67

29:                                               ; preds = %18
  %30 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %31 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %37 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* @ib_devices_shared_netns, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %35, %29
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %67

47:                                               ; preds = %41
  %48 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %49 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %48, i32 0, i32 0
  %50 = call i32 @get_device(i32* %49)
  %51 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %52 = call i32 @ib_device_put(%struct.ib_device* %51)
  %53 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.net*, %struct.net** %8, align 8
  %60 = call i32 @rdma_dev_change_netns(%struct.ib_device* %53, i32 %58, %struct.net* %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %62 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %61, i32 0, i32 0
  %63 = call i32 @put_device(i32* %62)
  %64 = load %struct.net*, %struct.net** %8, align 8
  %65 = call i32 @put_net(%struct.net* %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %74

67:                                               ; preds = %44, %26
  %68 = load %struct.net*, %struct.net** %8, align 8
  %69 = call i32 @put_net(%struct.net* %68)
  br label %70

70:                                               ; preds = %67, %15
  %71 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %72 = call i32 @ib_device_put(%struct.ib_device* %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %47
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.net* @get_net_ns_by_fd(i32) #1

declare dso_local i64 @IS_ERR(%struct.net*) #1

declare dso_local i32 @PTR_ERR(%struct.net*) #1

declare dso_local i32 @netlink_ns_capable(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @ib_device_put(%struct.ib_device*) #1

declare dso_local i32 @rdma_dev_change_netns(%struct.ib_device*, i32, %struct.net*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @put_net(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
