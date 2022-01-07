; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_resolve_eth_dmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_resolve_eth_dmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_ah_attr = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.rdma_ah_attr*)* @ib_resolve_eth_dmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_resolve_eth_dmac(%struct.ib_device* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.rdma_ah_attr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %8 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.in6_addr*
  %13 = call i64 @rdma_is_multicast_addr(%struct.in6_addr* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %2
  %16 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %17 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.in6_addr*
  %22 = call i64 @ipv6_addr_v4mapped(%struct.in6_addr* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  %25 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %26 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 12
  %31 = call i32 @memcpy(i32* %6, i64 %30, i32 4)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %34 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @ip_eth_mc_map(i32 %32, i8* %37)
  br label %52

39:                                               ; preds = %15
  %40 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %41 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.in6_addr*
  %46 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %47 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @ipv6_eth_mc_map(%struct.in6_addr* %45, i8* %50)
  br label %52

52:                                               ; preds = %39, %24
  br label %57

53:                                               ; preds = %2
  %54 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %55 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %56 = call i32 @ib_resolve_unicast_gid_dmac(%struct.ib_device* %54, %struct.rdma_ah_attr* %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %52
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @rdma_is_multicast_addr(%struct.in6_addr*) #1

declare dso_local i64 @ipv6_addr_v4mapped(%struct.in6_addr*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @ip_eth_mc_map(i32, i8*) #1

declare dso_local i32 @ipv6_eth_mc_map(%struct.in6_addr*, i8*) #1

declare dso_local i32 @ib_resolve_unicast_gid_dmac(%struct.ib_device*, %struct.rdma_ah_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
