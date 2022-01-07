; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_roce_get_net_dev_by_cm_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_roce_get_net_dev_by_cm_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_cm_event = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.ib_gid_attr* }
%struct.ib_gid_attr = type { i32 }
%struct.TYPE_4__ = type { %struct.ib_gid_attr* }

@IB_CM_REQ_RECEIVED = common dso_local global i64 0, align 8
@IB_CM_SIDR_REQ_RECEIVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.ib_cm_event*)* @roce_get_net_dev_by_cm_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @roce_get_net_dev_by_cm_event(%struct.ib_cm_event* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ib_cm_event*, align 8
  %4 = alloca %struct.ib_gid_attr*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.ib_cm_event* %0, %struct.ib_cm_event** %3, align 8
  store %struct.ib_gid_attr* null, %struct.ib_gid_attr** %4, align 8
  %6 = load %struct.ib_cm_event*, %struct.ib_cm_event** %3, align 8
  %7 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IB_CM_REQ_RECEIVED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.ib_cm_event*, %struct.ib_cm_event** %3, align 8
  %13 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %15, align 8
  store %struct.ib_gid_attr* %16, %struct.ib_gid_attr** %4, align 8
  br label %30

17:                                               ; preds = %1
  %18 = load %struct.ib_cm_event*, %struct.ib_cm_event** %3, align 8
  %19 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IB_CM_SIDR_REQ_RECEIVED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.ib_cm_event*, %struct.ib_cm_event** %3, align 8
  %25 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %27, align 8
  store %struct.ib_gid_attr* %28, %struct.ib_gid_attr** %4, align 8
  br label %29

29:                                               ; preds = %23, %17
  br label %30

30:                                               ; preds = %29, %11
  %31 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %32 = icmp ne %struct.ib_gid_attr* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %48

34:                                               ; preds = %30
  %35 = call i32 (...) @rcu_read_lock()
  %36 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %37 = call %struct.net_device* @rdma_read_gid_attr_ndev_rcu(%struct.ib_gid_attr* %36)
  store %struct.net_device* %37, %struct.net_device** %5, align 8
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i64 @IS_ERR(%struct.net_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store %struct.net_device* null, %struct.net_device** %5, align 8
  br label %45

42:                                               ; preds = %34
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = call i32 @dev_hold(%struct.net_device* %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = call i32 (...) @rcu_read_unlock()
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %47, %struct.net_device** %2, align 8
  br label %48

48:                                               ; preds = %45, %33
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %49
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @rdma_read_gid_attr_ndev_rcu(%struct.ib_gid_attr*) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
