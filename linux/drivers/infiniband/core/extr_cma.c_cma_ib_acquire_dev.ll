; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_ib_acquire_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_ib_acquire_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i64, i64 }
%struct.cma_req_info = type { i32, i32 }
%struct.ib_gid_attr = type { i32 }
%union.ib_gid = type { i32 }
%struct.sockaddr = type { i32 }

@ARPHRD_INFINIBAND = common dso_local global i64 0, align 8
@RDMA_PS_IPOIB = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.rdma_id_private*, %struct.cma_req_info*)* @cma_ib_acquire_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_ib_acquire_dev(%struct.rdma_id_private* %0, %struct.rdma_id_private* %1, %struct.cma_req_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_id_private*, align 8
  %6 = alloca %struct.rdma_id_private*, align 8
  %7 = alloca %struct.cma_req_info*, align 8
  %8 = alloca %struct.rdma_dev_addr*, align 8
  %9 = alloca %struct.ib_gid_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.ib_gid, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %5, align 8
  store %struct.rdma_id_private* %1, %struct.rdma_id_private** %6, align 8
  store %struct.cma_req_info* %2, %struct.cma_req_info** %7, align 8
  %12 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %13 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store %struct.rdma_dev_addr* %16, %struct.rdma_dev_addr** %8, align 8
  %17 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %8, align 8
  %18 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ARPHRD_INFINIBAND, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %24 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RDMA_PS_IPOIB, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %102

32:                                               ; preds = %22, %3
  %33 = load %struct.cma_req_info*, %struct.cma_req_info** %7, align 8
  %34 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cma_req_info*, %struct.cma_req_info** %7, align 8
  %37 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @rdma_protocol_roce(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %43 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = bitcast i32* %46 to %struct.sockaddr*
  %48 = call i32 @rdma_ip2gid(%struct.sockaddr* %47, %union.ib_gid* %11)
  br label %57

49:                                               ; preds = %32
  %50 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %8, align 8
  %51 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %8, align 8
  %54 = call i64 @rdma_addr_gid_offset(%struct.rdma_dev_addr* %53)
  %55 = add nsw i64 %52, %54
  %56 = call i32 @memcpy(%union.ib_gid* %11, i64 %55, i32 4)
  br label %57

57:                                               ; preds = %49, %41
  %58 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %59 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.cma_req_info*, %struct.cma_req_info** %7, align 8
  %64 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  %70 = load %struct.cma_req_info*, %struct.cma_req_info** %7, align 8
  %71 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cma_req_info*, %struct.cma_req_info** %7, align 8
  %74 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %78 = call %struct.ib_gid_attr* @cma_validate_port(i32 %72, i32 %75, i32 %76, %union.ib_gid* %11, %struct.rdma_id_private* %77)
  store %struct.ib_gid_attr* %78, %struct.ib_gid_attr** %9, align 8
  %79 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %9, align 8
  %80 = call i64 @IS_ERR(%struct.ib_gid_attr* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %57
  %83 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %9, align 8
  %84 = call i32 @PTR_ERR(%struct.ib_gid_attr* %83)
  store i32 %84, i32* %4, align 4
  br label %102

85:                                               ; preds = %57
  %86 = load %struct.cma_req_info*, %struct.cma_req_info** %7, align 8
  %87 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %90 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 8
  %92 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %93 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %9, align 8
  %94 = call i32 @cma_bind_sgid_attr(%struct.rdma_id_private* %92, %struct.ib_gid_attr* %93)
  %95 = call i32 @mutex_lock(i32* @lock)
  %96 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %97 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %98 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = call i32 @cma_attach_to_dev(%struct.rdma_id_private* %96, %struct.TYPE_8__* %99)
  %101 = call i32 @mutex_unlock(i32* @lock)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %85, %82, %29
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @rdma_protocol_roce(i32, i32) #1

declare dso_local i32 @rdma_ip2gid(%struct.sockaddr*, %union.ib_gid*) #1

declare dso_local i32 @memcpy(%union.ib_gid*, i64, i32) #1

declare dso_local i64 @rdma_addr_gid_offset(%struct.rdma_dev_addr*) #1

declare dso_local %struct.ib_gid_attr* @cma_validate_port(i32, i32, i32, %union.ib_gid*, %struct.rdma_id_private*) #1

declare dso_local i64 @IS_ERR(%struct.ib_gid_attr*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_gid_attr*) #1

declare dso_local i32 @cma_bind_sgid_attr(%struct.rdma_id_private*, %struct.ib_gid_attr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cma_attach_to_dev(%struct.rdma_id_private*, %struct.TYPE_8__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
