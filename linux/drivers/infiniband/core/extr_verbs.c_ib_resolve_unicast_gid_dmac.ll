; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_resolve_unicast_gid_dmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_resolve_unicast_gid_dmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_ah_attr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ib_global_route = type { i32, %struct.TYPE_4__, %struct.ib_gid_attr* }
%struct.TYPE_4__ = type { i64 }
%struct.ib_gid_attr = type { i64, i32 }
%struct.in6_addr = type { i32 }

@IB_GID_TYPE_ROCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.rdma_ah_attr*)* @ib_resolve_unicast_gid_dmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_resolve_unicast_gid_dmac(%struct.ib_device* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  %6 = alloca %struct.ib_global_route*, align 8
  %7 = alloca %struct.ib_gid_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  %10 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %11 = call %struct.ib_global_route* @rdma_ah_retrieve_grh(%struct.rdma_ah_attr* %10)
  store %struct.ib_global_route* %11, %struct.ib_global_route** %6, align 8
  %12 = load %struct.ib_global_route*, %struct.ib_global_route** %6, align 8
  %13 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %12, i32 0, i32 2
  %14 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %13, align 8
  store %struct.ib_gid_attr* %14, %struct.ib_gid_attr** %7, align 8
  store i32 255, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.ib_global_route*, %struct.ib_global_route** %6, align 8
  %16 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.in6_addr*
  %20 = call i64 @rdma_link_local_addr(%struct.in6_addr* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %2
  %23 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %7, align 8
  %24 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IB_GID_TYPE_ROCE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load %struct.ib_global_route*, %struct.ib_global_route** %6, align 8
  %30 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.in6_addr*
  %34 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %35 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rdma_get_ll_mac(%struct.in6_addr* %33, i32 %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %55

40:                                               ; preds = %22, %2
  %41 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %7, align 8
  %42 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %41, i32 0, i32 1
  %43 = load %struct.ib_global_route*, %struct.ib_global_route** %6, align 8
  %44 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %43, i32 0, i32 1
  %45 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %46 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %7, align 8
  %50 = call i32 @rdma_addr_find_l2_eth_by_grh(i32* %42, %struct.TYPE_4__* %44, i32 %48, %struct.ib_gid_attr* %49, i32* %8)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.ib_global_route*, %struct.ib_global_route** %6, align 8
  %53 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %40, %28
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.ib_global_route* @rdma_ah_retrieve_grh(%struct.rdma_ah_attr*) #1

declare dso_local i64 @rdma_link_local_addr(%struct.in6_addr*) #1

declare dso_local i32 @rdma_get_ll_mac(%struct.in6_addr*, i32) #1

declare dso_local i32 @rdma_addr_find_l2_eth_by_grh(i32*, %struct.TYPE_4__*, i32, %struct.ib_gid_attr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
