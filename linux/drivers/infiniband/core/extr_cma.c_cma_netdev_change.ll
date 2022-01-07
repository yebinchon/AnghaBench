; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_netdev_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_netdev_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, i32, i32 }
%struct.rdma_id_private = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i64, i32, i32 }
%struct.cma_ndev_work = type { i32, %struct.TYPE_7__, %struct.rdma_id_private* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"RDMA CM addr change for ndev %s used by id %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cma_ndev_work_handler = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_ADDR_CHANGE = common dso_local global i32 0, align 4
@cma_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.rdma_id_private*)* @cma_netdev_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_netdev_change(%struct.net_device* %0, %struct.rdma_id_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.rdma_id_private*, align 8
  %6 = alloca %struct.rdma_dev_addr*, align 8
  %7 = alloca %struct.cma_ndev_work*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.rdma_id_private* %1, %struct.rdma_id_private** %5, align 8
  %8 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %9 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.rdma_dev_addr* %12, %struct.rdma_dev_addr** %6, align 8
  %13 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %6, align 8
  %14 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 @dev_net(%struct.net_device* %21)
  %23 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %6, align 8
  %24 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @net_eq(i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %20
  %29 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %6, align 8
  %30 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @memcmp(i32 %31, i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %28
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %45 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %44, i32 0, i32 1
  %46 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %43, %struct.TYPE_8__* %45)
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.cma_ndev_work* @kzalloc(i32 16, i32 %47)
  store %struct.cma_ndev_work* %48, %struct.cma_ndev_work** %7, align 8
  %49 = load %struct.cma_ndev_work*, %struct.cma_ndev_work** %7, align 8
  %50 = icmp ne %struct.cma_ndev_work* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %74

54:                                               ; preds = %40
  %55 = load %struct.cma_ndev_work*, %struct.cma_ndev_work** %7, align 8
  %56 = getelementptr inbounds %struct.cma_ndev_work, %struct.cma_ndev_work* %55, i32 0, i32 0
  %57 = load i32, i32* @cma_ndev_work_handler, align 4
  %58 = call i32 @INIT_WORK(i32* %56, i32 %57)
  %59 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %60 = load %struct.cma_ndev_work*, %struct.cma_ndev_work** %7, align 8
  %61 = getelementptr inbounds %struct.cma_ndev_work, %struct.cma_ndev_work* %60, i32 0, i32 2
  store %struct.rdma_id_private* %59, %struct.rdma_id_private** %61, align 8
  %62 = load i32, i32* @RDMA_CM_EVENT_ADDR_CHANGE, align 4
  %63 = load %struct.cma_ndev_work*, %struct.cma_ndev_work** %7, align 8
  %64 = getelementptr inbounds %struct.cma_ndev_work, %struct.cma_ndev_work* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %67 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %66, i32 0, i32 0
  %68 = call i32 @atomic_inc(i32* %67)
  %69 = load i32, i32* @cma_wq, align 4
  %70 = load %struct.cma_ndev_work*, %struct.cma_ndev_work** %7, align 8
  %71 = getelementptr inbounds %struct.cma_ndev_work, %struct.cma_ndev_work* %70, i32 0, i32 0
  %72 = call i32 @queue_work(i32 %69, i32* %71)
  br label %73

73:                                               ; preds = %54, %28, %20, %2
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %51
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, %struct.TYPE_8__*) #1

declare dso_local %struct.cma_ndev_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
