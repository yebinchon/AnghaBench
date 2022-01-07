; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_get_net_type_by_grh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_get_net_type_by_grh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_grh = type { i64 }
%union.rdma_network_hdr = type { i32 }

@RDMA_NETWORK_IB = common dso_local global i32 0, align 4
@RDMA_NETWORK_IPV4 = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@RDMA_NETWORK_IPV6 = common dso_local global i32 0, align 4
@RDMA_NETWORK_ROCE_V1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_grh*)* @ib_get_net_type_by_grh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_get_net_type_by_grh(%struct.ib_device* %0, i32 %1, %struct.ib_grh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_grh*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_grh* %2, %struct.ib_grh** %7, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @rdma_protocol_ib(%struct.ib_device* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @RDMA_NETWORK_IB, align 4
  store i32 %14, i32* %4, align 4
  br label %33

15:                                               ; preds = %3
  %16 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %17 = bitcast %struct.ib_grh* %16 to %union.rdma_network_hdr*
  %18 = call i32 @ib_get_rdma_header_version(%union.rdma_network_hdr* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @RDMA_NETWORK_IPV4, align 4
  store i32 %22, i32* %4, align 4
  br label %33

23:                                               ; preds = %15
  %24 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %25 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IPPROTO_UDP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @RDMA_NETWORK_IPV6, align 4
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @RDMA_NETWORK_ROCE_V1, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %29, %21, %13
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @rdma_protocol_ib(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_get_rdma_header_version(%union.rdma_network_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
