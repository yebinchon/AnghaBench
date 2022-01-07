; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_addr_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_roce_gid_mgmt.c_addr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.sockaddr = type { i32 }
%struct.net_device = type { i64 }
%struct.update_gid_event_work = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.net_device* }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@GID_ADD = common dso_local global i32 0, align 4
@GID_DEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@update_gid_event_work_handler = common dso_local global i32 0, align 4
@gid_cache_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, %struct.sockaddr*, %struct.net_device*)* @addr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_event(%struct.notifier_block* %0, i64 %1, %struct.sockaddr* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.notifier_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.update_gid_event_work*, align 8
  %11 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %9, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ARPHRD_ETHER, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %18, i32* %5, align 4
  br label %60

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  switch i64 %20, label %25 [
    i64 128, label %21
    i64 129, label %23
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @GID_ADD, align 4
  store i32 %22, i32* %11, align 4
  br label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @GID_DEL, align 4
  store i32 %24, i32* %11, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %26, i32* %5, align 4
  br label %60

27:                                               ; preds = %23, %21
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.update_gid_event_work* @kmalloc(i32 24, i32 %28)
  store %struct.update_gid_event_work* %29, %struct.update_gid_event_work** %10, align 8
  %30 = load %struct.update_gid_event_work*, %struct.update_gid_event_work** %10, align 8
  %31 = icmp ne %struct.update_gid_event_work* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %33, i32* %5, align 4
  br label %60

34:                                               ; preds = %27
  %35 = load %struct.update_gid_event_work*, %struct.update_gid_event_work** %10, align 8
  %36 = getelementptr inbounds %struct.update_gid_event_work, %struct.update_gid_event_work* %35, i32 0, i32 1
  %37 = load i32, i32* @update_gid_event_work_handler, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  %39 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %40 = load %struct.update_gid_event_work*, %struct.update_gid_event_work** %10, align 8
  %41 = getelementptr inbounds %struct.update_gid_event_work, %struct.update_gid_event_work* %40, i32 0, i32 3
  %42 = call i32 @rdma_ip2gid(%struct.sockaddr* %39, i32* %41)
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.update_gid_event_work*, %struct.update_gid_event_work** %10, align 8
  %45 = getelementptr inbounds %struct.update_gid_event_work, %struct.update_gid_event_work* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.update_gid_event_work*, %struct.update_gid_event_work** %10, align 8
  %47 = getelementptr inbounds %struct.update_gid_event_work, %struct.update_gid_event_work* %46, i32 0, i32 2
  %48 = call i32 @memset(%struct.TYPE_2__* %47, i32 0, i32 8)
  %49 = load %struct.net_device*, %struct.net_device** %9, align 8
  %50 = call i32 @dev_hold(%struct.net_device* %49)
  %51 = load %struct.net_device*, %struct.net_device** %9, align 8
  %52 = load %struct.update_gid_event_work*, %struct.update_gid_event_work** %10, align 8
  %53 = getelementptr inbounds %struct.update_gid_event_work, %struct.update_gid_event_work* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store %struct.net_device* %51, %struct.net_device** %54, align 8
  %55 = load i32, i32* @gid_cache_wq, align 4
  %56 = load %struct.update_gid_event_work*, %struct.update_gid_event_work** %10, align 8
  %57 = getelementptr inbounds %struct.update_gid_event_work, %struct.update_gid_event_work* %56, i32 0, i32 1
  %58 = call i32 @queue_work(i32 %55, i32* %57)
  %59 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %34, %32, %25, %17
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.update_gid_event_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @rdma_ip2gid(%struct.sockaddr*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
