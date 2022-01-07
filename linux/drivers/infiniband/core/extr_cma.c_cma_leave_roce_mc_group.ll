; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_leave_roce_mc_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_leave_roce_mc_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i64, i32 }
%struct.cma_multicast = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.net_device = type { i32 }

@release_mc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_id_private*, %struct.cma_multicast*)* @cma_leave_roce_mc_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_leave_roce_mc_group(%struct.rdma_id_private* %0, %struct.cma_multicast* %1) #0 {
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.cma_multicast*, align 8
  %5 = alloca %struct.rdma_dev_addr*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  store %struct.cma_multicast* %1, %struct.cma_multicast** %4, align 8
  %7 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %8 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store %struct.rdma_dev_addr* %11, %struct.rdma_dev_addr** %5, align 8
  store %struct.net_device* null, %struct.net_device** %6, align 8
  %12 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %13 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %18 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %21 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.net_device* @dev_get_by_index(i32 %19, i64 %22)
  store %struct.net_device* %23, %struct.net_device** %6, align 8
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = icmp ne %struct.net_device* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = load %struct.cma_multicast*, %struct.cma_multicast** %4, align 8
  %30 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = call i32 @cma_igmp_send(%struct.net_device* %28, i32* %34, i32 0)
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = call i32 @dev_put(%struct.net_device* %36)
  br label %38

38:                                               ; preds = %27, %24
  %39 = load %struct.cma_multicast*, %struct.cma_multicast** %4, align 8
  %40 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %39, i32 0, i32 0
  %41 = load i32, i32* @release_mc, align 4
  %42 = call i32 @kref_put(i32* %40, i32 %41)
  ret void
}

declare dso_local %struct.net_device* @dev_get_by_index(i32, i64) #1

declare dso_local i32 @cma_igmp_send(%struct.net_device*, i32*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
