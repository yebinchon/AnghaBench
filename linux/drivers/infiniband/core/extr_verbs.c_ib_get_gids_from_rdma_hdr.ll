; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_get_gids_from_rdma_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_get_gids_from_rdma_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.rdma_network_hdr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %union.ib_gid, %union.ib_gid }
%union.ib_gid = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.in6_addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RDMA_NETWORK_IPV4 = common dso_local global i32 0, align 4
@RDMA_NETWORK_IPV6 = common dso_local global i32 0, align 4
@RDMA_NETWORK_IB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_get_gids_from_rdma_hdr(%union.rdma_network_hdr* %0, i32 %1, %union.ib_gid* %2, %union.ib_gid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.rdma_network_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.ib_gid*, align 8
  %9 = alloca %union.ib_gid*, align 8
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %union.rdma_network_hdr* %0, %union.rdma_network_hdr** %6, align 8
  store i32 %1, i32* %7, align 4
  store %union.ib_gid* %2, %union.ib_gid** %8, align 8
  store %union.ib_gid* %3, %union.ib_gid** %9, align 8
  %14 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %15 = icmp ne %union.ib_gid* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %18 = icmp ne %union.ib_gid* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %77

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @RDMA_NETWORK_IPV4, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %union.rdma_network_hdr*, %union.rdma_network_hdr** %6, align 8
  %30 = bitcast %union.rdma_network_hdr* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = call i32 @memcpy(i32* %28, i32* %31, i32 4)
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %union.rdma_network_hdr*, %union.rdma_network_hdr** %6, align 8
  %36 = bitcast %union.rdma_network_hdr* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @memcpy(i32* %34, i32* %37, i32 4)
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %47 = bitcast %union.ib_gid* %46 to %struct.in6_addr*
  %48 = call i32 @ipv6_addr_set_v4mapped(i32 %45, %struct.in6_addr* %47)
  %49 = load i32, i32* %13, align 4
  %50 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %51 = bitcast %union.ib_gid* %50 to %struct.in6_addr*
  %52 = call i32 @ipv6_addr_set_v4mapped(i32 %49, %struct.in6_addr* %51)
  store i32 0, i32* %5, align 4
  br label %77

53:                                               ; preds = %22
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @RDMA_NETWORK_IPV6, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @RDMA_NETWORK_IB, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57, %53
  %62 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %63 = load %union.rdma_network_hdr*, %union.rdma_network_hdr** %6, align 8
  %64 = bitcast %union.rdma_network_hdr* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = bitcast %union.ib_gid* %62 to i8*
  %67 = bitcast %union.ib_gid* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 4, i1 false)
  %68 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %69 = load %union.rdma_network_hdr*, %union.rdma_network_hdr** %6, align 8
  %70 = bitcast %union.rdma_network_hdr* %69 to %struct.TYPE_6__*
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = bitcast %union.ib_gid* %68 to i8*
  %73 = bitcast %union.ib_gid* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 4, i1 false)
  store i32 0, i32* %5, align 4
  br label %77

74:                                               ; preds = %57
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %61, %26, %19
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ipv6_addr_set_v4mapped(i32, %struct.in6_addr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
