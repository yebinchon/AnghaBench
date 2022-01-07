; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_bind_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_bind_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in6 = type { i32, i32 }
%struct.sockaddr_ib = type { i32 }

@CONFIG_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@AF_IB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.sockaddr*, %struct.sockaddr*)* @cma_bind_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_bind_addr(%struct.rdma_cm_id* %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %6, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %10 = icmp ne %struct.sockaddr* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %78, label %16

16:                                               ; preds = %11, %3
  %17 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %18 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = bitcast i32* %20 to %struct.sockaddr*
  store %struct.sockaddr* %21, %struct.sockaddr** %5, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @CONFIG_IPV6, align 4
  %28 = call i64 @IS_ENABLED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %16
  %31 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %32 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AF_INET6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %30
  %37 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %38 = bitcast %struct.sockaddr* %37 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %38, %struct.sockaddr_in6** %7, align 8
  %39 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %40 = bitcast %struct.sockaddr* %39 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %40, %struct.sockaddr_in6** %8, align 8
  %41 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %46, i32 0, i32 1
  %48 = call i32 @ipv6_addr_type(i32* %47)
  %49 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %36
  %53 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %57 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %55, i32* %60, align 4
  br label %61

61:                                               ; preds = %52, %36
  br label %77

62:                                               ; preds = %30, %16
  %63 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %64 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AF_IB, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %70 = bitcast %struct.sockaddr* %69 to %struct.sockaddr_ib*
  %71 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %74 = bitcast %struct.sockaddr* %73 to %struct.sockaddr_ib*
  %75 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %68, %62
  br label %77

77:                                               ; preds = %76, %61
  br label %78

78:                                               ; preds = %77, %11
  %79 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %80 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %81 = call i32 @rdma_bind_addr(%struct.rdma_cm_id* %79, %struct.sockaddr* %80)
  ret i32 %81
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @rdma_bind_addr(%struct.rdma_cm_id*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
