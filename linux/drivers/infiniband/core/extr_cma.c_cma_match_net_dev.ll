; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_match_net_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_match_net_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rdma_addr }
%struct.rdma_addr = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i64 }
%struct.cma_req_info = type { i64 }

@AF_IB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.net_device*, %struct.cma_req_info*)* @cma_match_net_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_match_net_dev(%struct.rdma_cm_id* %0, %struct.net_device* %1, %struct.cma_req_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_cm_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cma_req_info*, align 8
  %8 = alloca %struct.rdma_addr*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cma_req_info* %2, %struct.cma_req_info** %7, align 8
  %9 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %10 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.rdma_addr* %11, %struct.rdma_addr** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %37, label %14

14:                                               ; preds = %3
  %15 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %16 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %21 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.cma_req_info*, %struct.cma_req_info** %7, align 8
  %24 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %19, %14
  %28 = load %struct.rdma_addr*, %struct.rdma_addr** %8, align 8
  %29 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_IB, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %27, %19
  %35 = phi i1 [ false, %19 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %4, align 4
  br label %72

37:                                               ; preds = %3
  %38 = load %struct.cma_req_info*, %struct.cma_req_info** %7, align 8
  %39 = call i32 @cma_is_req_ipv6_ll(%struct.cma_req_info* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %72

42:                                               ; preds = %37
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call i32 @dev_net(%struct.net_device* %43)
  %45 = load %struct.rdma_addr*, %struct.rdma_addr** %8, align 8
  %46 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @net_eq(i32 %44, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %42
  %52 = load %struct.rdma_addr*, %struct.rdma_addr** %8, align 8
  %53 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load %struct.rdma_addr*, %struct.rdma_addr** %8, align 8
  %61 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.net_device*, %struct.net_device** %6, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  %68 = zext i1 %67 to i32
  %69 = icmp eq i32 %59, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %72

71:                                               ; preds = %51, %42
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %70, %41, %34
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @cma_is_req_ipv6_ll(%struct.cma_req_info*) #1

declare dso_local i64 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
