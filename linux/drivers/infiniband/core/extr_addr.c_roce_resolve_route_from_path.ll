; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_roce_resolve_route_from_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_roce_resolve_route_from_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_path_rec = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_gid_attr = type { i32 }
%union.anon = type { %struct.sockaddr }
%struct.sockaddr = type { i64 }
%struct.rdma_dev_addr = type { i64, %struct.ib_gid_attr*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@RDMA_NETWORK_IPV4 = common dso_local global i64 0, align 8
@RDMA_NETWORK_IPV6 = common dso_local global i64 0, align 8
@SA_PATH_REC_TYPE_ROCE_V2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @roce_resolve_route_from_path(%struct.sa_path_rec* %0, %struct.ib_gid_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sa_path_rec*, align 8
  %5 = alloca %struct.ib_gid_attr*, align 8
  %6 = alloca %union.anon, align 8
  %7 = alloca %union.anon, align 8
  %8 = alloca %struct.rdma_dev_addr, align 8
  %9 = alloca i32, align 4
  store %struct.sa_path_rec* %0, %struct.sa_path_rec** %4, align 8
  store %struct.ib_gid_attr* %1, %struct.ib_gid_attr** %5, align 8
  %10 = bitcast %struct.rdma_dev_addr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %12 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

17:                                               ; preds = %2
  %18 = bitcast %union.anon* %6 to %struct.sockaddr*
  %19 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %20 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %19, i32 0, i32 3
  %21 = call i32 @rdma_gid2ip(%struct.sockaddr* %18, i32* %20)
  %22 = bitcast %union.anon* %7 to %struct.sockaddr*
  %23 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %24 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %23, i32 0, i32 2
  %25 = call i32 @rdma_gid2ip(%struct.sockaddr* %22, i32* %24)
  %26 = bitcast %union.anon* %6 to %struct.sockaddr*
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = bitcast %union.anon* %7 to %struct.sockaddr*
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %81

36:                                               ; preds = %17
  %37 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %38 = icmp ne %struct.ib_gid_attr* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %41 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %81

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %8, i32 0, i32 2
  store i32* @init_net, i32** %48, align 8
  %49 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %50 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %8, i32 0, i32 1
  store %struct.ib_gid_attr* %49, %struct.ib_gid_attr** %50, align 8
  %51 = bitcast %union.anon* %6 to %struct.sockaddr*
  %52 = bitcast %union.anon* %7 to %struct.sockaddr*
  %53 = call i32 @addr_resolve(%struct.sockaddr* %51, %struct.sockaddr* %52, %struct.rdma_dev_addr* %8, i32 0, i32 1, i32 0)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %81

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %8, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RDMA_NETWORK_IPV4, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %8, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @RDMA_NETWORK_IPV6, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %63, %58
  %69 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %70 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SA_PATH_REC_TYPE_ROCE_V2, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %81

77:                                               ; preds = %68, %63
  %78 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %79 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %74, %56, %44, %33, %16
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rdma_gid2ip(%struct.sockaddr*, i32*) #2

declare dso_local i32 @addr_resolve(%struct.sockaddr*, %struct.sockaddr*, %struct.rdma_dev_addr*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
