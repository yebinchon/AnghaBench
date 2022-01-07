; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_rdma_addr_find_l2_eth_by_grh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_rdma_addr_find_l2_eth_by_grh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ib_gid = type { i32 }
%struct.ib_gid_attr = type { i32 }
%struct.rdma_dev_addr = type { i32, i32, %struct.ib_gid_attr*, i32* }
%struct.resolve_cb_context = type { i32, i32 }
%union.anon = type { %struct.sockaddr_in }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@init_net = common dso_local global i32 0, align 4
@resolve_cb = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_addr_find_l2_eth_by_grh(%union.ib_gid* %0, %union.ib_gid* %1, i32* %2, %struct.ib_gid_attr* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %union.ib_gid*, align 8
  %8 = alloca %union.ib_gid*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ib_gid_attr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rdma_dev_addr, align 8
  %13 = alloca %struct.resolve_cb_context, align 4
  %14 = alloca %union.anon, align 4
  %15 = alloca %union.anon, align 4
  %16 = alloca i32, align 4
  store %union.ib_gid* %0, %union.ib_gid** %7, align 8
  store %union.ib_gid* %1, %union.ib_gid** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.ib_gid_attr* %3, %struct.ib_gid_attr** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = bitcast %union.anon* %14 to %struct.sockaddr*
  %18 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %19 = call i32 @rdma_gid2ip(%struct.sockaddr* %17, %union.ib_gid* %18)
  %20 = bitcast %union.anon* %15 to %struct.sockaddr*
  %21 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %22 = call i32 @rdma_gid2ip(%struct.sockaddr* %20, %union.ib_gid* %21)
  %23 = call i32 @memset(%struct.rdma_dev_addr* %12, i32 0, i32 24)
  %24 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %12, i32 0, i32 3
  store i32* @init_net, i32** %24, align 8
  %25 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %10, align 8
  %26 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %12, i32 0, i32 2
  store %struct.ib_gid_attr* %25, %struct.ib_gid_attr** %26, align 8
  %27 = getelementptr inbounds %struct.resolve_cb_context, %struct.resolve_cb_context* %13, i32 0, i32 1
  %28 = call i32 @init_completion(i32* %27)
  %29 = bitcast %union.anon* %14 to %struct.sockaddr*
  %30 = bitcast %union.anon* %15 to %struct.sockaddr*
  %31 = load i32, i32* @resolve_cb, align 4
  %32 = call i32 @rdma_resolve_ip(%struct.sockaddr* %29, %struct.sockaddr* %30, %struct.rdma_dev_addr* %12, i32 1000, i32 %31, i32 1, %struct.resolve_cb_context* %13)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %6, align 4
  br label %55

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.resolve_cb_context, %struct.resolve_cb_context* %13, i32 0, i32 1
  %39 = call i32 @wait_for_completion(i32* %38)
  %40 = getelementptr inbounds %struct.resolve_cb_context, %struct.resolve_cb_context* %13, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %6, align 4
  br label %55

46:                                               ; preds = %37
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %12, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = call i32 @memcpy(i32* %47, i32 %49, i32 %50)
  %52 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %12, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %46, %44, %35
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @rdma_gid2ip(%struct.sockaddr*, %union.ib_gid*) #1

declare dso_local i32 @memset(%struct.rdma_dev_addr*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @rdma_resolve_ip(%struct.sockaddr*, %struct.sockaddr*, %struct.rdma_dev_addr*, i32, i32, i32, %struct.resolve_cb_context*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
