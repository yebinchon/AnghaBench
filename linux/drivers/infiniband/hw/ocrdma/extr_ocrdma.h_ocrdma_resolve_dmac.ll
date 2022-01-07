; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma.h_ocrdma_resolve_dmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma.h_ocrdma_resolve_dmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.rdma_ah_attr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.rdma_ah_attr*, %struct.in6_addr*)* @ocrdma_resolve_dmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_resolve_dmac(%struct.ocrdma_dev* %0, %struct.rdma_ah_attr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.in6_addr, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  %8 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %9 = call %struct.TYPE_6__* @rdma_ah_read_grh(%struct.rdma_ah_attr* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(%struct.in6_addr* %7, i32 %12, i32 4)
  %14 = call i64 @rdma_is_multicast_addr(%struct.in6_addr* %7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %18 = call i32 @rdma_get_mcast_mac(%struct.in6_addr* %7, %struct.in6_addr* %17)
  br label %34

19:                                               ; preds = %3
  %20 = call i64 @rdma_link_local_addr(%struct.in6_addr* %7)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %24 = call i32 @rdma_get_ll_mac(%struct.in6_addr* %7, %struct.in6_addr* %23)
  br label %33

25:                                               ; preds = %19
  %26 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %27 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %28 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i32 @memcpy(%struct.in6_addr* %26, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %22
  br label %34

34:                                               ; preds = %33, %16
  ret i32 0
}

declare dso_local i32 @memcpy(%struct.in6_addr*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i64 @rdma_is_multicast_addr(%struct.in6_addr*) #1

declare dso_local i32 @rdma_get_mcast_mac(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i64 @rdma_link_local_addr(%struct.in6_addr*) #1

declare dso_local i32 @rdma_get_ll_mac(%struct.in6_addr*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
