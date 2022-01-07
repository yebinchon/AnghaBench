; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_prepare6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_prepare6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_pkt_info = type { %struct.rxe_qp* }
%struct.rxe_qp = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dst_entry = type { i32 }
%struct.rxe_av = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.in6_addr }

@.str = private unnamed_addr constant [20 x i8] c"Host not reachable\0A\00", align 1
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ROCE_V2_UDP_DPORT = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_pkt_info*, %struct.sk_buff*)* @prepare6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare6(%struct.rxe_pkt_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_pkt_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rxe_qp*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.rxe_av*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  store %struct.rxe_pkt_info* %0, %struct.rxe_pkt_info** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %12 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %11, i32 0, i32 0
  %13 = load %struct.rxe_qp*, %struct.rxe_qp** %12, align 8
  store %struct.rxe_qp* %13, %struct.rxe_qp** %6, align 8
  %14 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %15 = call %struct.rxe_av* @rxe_get_av(%struct.rxe_pkt_info* %14)
  store %struct.rxe_av* %15, %struct.rxe_av** %8, align 8
  %16 = load %struct.rxe_av*, %struct.rxe_av** %8, align 8
  %17 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store %struct.in6_addr* %19, %struct.in6_addr** %9, align 8
  %20 = load %struct.rxe_av*, %struct.rxe_av** %8, align 8
  %21 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store %struct.in6_addr* %23, %struct.in6_addr** %10, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %28 = load %struct.rxe_av*, %struct.rxe_av** %8, align 8
  %29 = call %struct.dst_entry* @rxe_find_route(i32 %26, %struct.rxe_qp* %27, %struct.rxe_av* %28)
  store %struct.dst_entry* %29, %struct.dst_entry** %7, align 8
  %30 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %31 = icmp ne %struct.dst_entry* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EHOSTUNREACH, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %61

36:                                               ; preds = %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %39 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpu_to_be16(i32 %40)
  %42 = load i32, i32* @ROCE_V2_UDP_DPORT, align 4
  %43 = call i32 @cpu_to_be16(i32 %42)
  %44 = call i32 @prepare_udp_hdr(%struct.sk_buff* %37, i32 %41, i32 %43)
  %45 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %48 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %49 = load i32, i32* @IPPROTO_UDP, align 4
  %50 = load %struct.rxe_av*, %struct.rxe_av** %8, align 8
  %51 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rxe_av*, %struct.rxe_av** %8, align 8
  %55 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @prepare_ipv6_hdr(%struct.dst_entry* %45, %struct.sk_buff* %46, %struct.in6_addr* %47, %struct.in6_addr* %48, i32 %49, i32 %53, i32 %57)
  %59 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %60 = call i32 @dst_release(%struct.dst_entry* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %36, %32
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.rxe_av* @rxe_get_av(%struct.rxe_pkt_info*) #1

declare dso_local %struct.dst_entry* @rxe_find_route(i32, %struct.rxe_qp*, %struct.rxe_av*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @prepare_udp_hdr(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @prepare_ipv6_hdr(%struct.dst_entry*, %struct.sk_buff*, %struct.in6_addr*, %struct.in6_addr*, i32, i32, i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
