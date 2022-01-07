; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_recv.c_rxe_match_dgid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_recv.c_rxe_match_dgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.ib_gid_attr = type { i32 }
%union.ib_gid = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@IB_GID_TYPE_ROCE_UDP_ENCAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_dev*, %struct.sk_buff*)* @rxe_match_dgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_match_dgid(%struct.rxe_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ib_gid_attr*, align 8
  %7 = alloca %union.ib_gid, align 4
  %8 = alloca %union.ib_gid*, align 8
  store %struct.rxe_dev* %0, %struct.rxe_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @ETH_P_IP, align 4
  %13 = call i64 @htons(i32 %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.ib_gid* %7 to %struct.in6_addr*
  %21 = call i32 @ipv6_addr_set_v4mapped(i32 %19, %struct.in6_addr* %20)
  store %union.ib_gid* %7, %union.ib_gid** %8, align 8
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to %union.ib_gid*
  store %union.ib_gid* %26, %union.ib_gid** %8, align 8
  br label %27

27:                                               ; preds = %22, %15
  %28 = load %struct.rxe_dev*, %struct.rxe_dev** %4, align 8
  %29 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %28, i32 0, i32 0
  %30 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %31 = load i32, i32* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.ib_gid_attr* @rdma_find_gid_by_port(i32* %29, %union.ib_gid* %30, i32 %31, i32 1, i32 %34)
  store %struct.ib_gid_attr* %35, %struct.ib_gid_attr** %6, align 8
  %36 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %6, align 8
  %37 = call i64 @IS_ERR(%struct.ib_gid_attr* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %6, align 8
  %41 = call i32 @PTR_ERR(%struct.ib_gid_attr* %40)
  store i32 %41, i32* %3, align 4
  br label %45

42:                                               ; preds = %27
  %43 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %6, align 8
  %44 = call i32 @rdma_put_gid_attr(%struct.ib_gid_attr* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ipv6_addr_set_v4mapped(i32, %struct.in6_addr*) #1

declare dso_local %struct.TYPE_4__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ib_gid_attr* @rdma_find_gid_by_port(i32*, %union.ib_gid*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_gid_attr*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_gid_attr*) #1

declare dso_local i32 @rdma_put_gid_attr(%struct.ib_gid_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
