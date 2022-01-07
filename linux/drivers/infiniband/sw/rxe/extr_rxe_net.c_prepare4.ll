; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_prepare4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_prepare4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_pkt_info = type { %struct.rxe_qp* }
%struct.rxe_qp = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dst_entry = type { i32 }
%struct.rxe_av = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.in_addr }

@IP_DF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Host not reachable\0A\00", align 1
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ROCE_V2_UDP_DPORT = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_pkt_info*, %struct.sk_buff*)* @prepare4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare4(%struct.rxe_pkt_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_pkt_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rxe_qp*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rxe_av*, align 8
  %11 = alloca %struct.in_addr*, align 8
  %12 = alloca %struct.in_addr*, align 8
  store %struct.rxe_pkt_info* %0, %struct.rxe_pkt_info** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %14 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %13, i32 0, i32 0
  %15 = load %struct.rxe_qp*, %struct.rxe_qp** %14, align 8
  store %struct.rxe_qp* %15, %struct.rxe_qp** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* @IP_DF, align 4
  %17 = call i32 @htons(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %19 = call %struct.rxe_av* @rxe_get_av(%struct.rxe_pkt_info* %18)
  store %struct.rxe_av* %19, %struct.rxe_av** %10, align 8
  %20 = load %struct.rxe_av*, %struct.rxe_av** %10, align 8
  %21 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store %struct.in_addr* %23, %struct.in_addr** %11, align 8
  %24 = load %struct.rxe_av*, %struct.rxe_av** %10, align 8
  %25 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store %struct.in_addr* %27, %struct.in_addr** %12, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %32 = load %struct.rxe_av*, %struct.rxe_av** %10, align 8
  %33 = call %struct.dst_entry* @rxe_find_route(i32 %30, %struct.rxe_qp* %31, %struct.rxe_av* %32)
  store %struct.dst_entry* %33, %struct.dst_entry** %7, align 8
  %34 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %35 = icmp ne %struct.dst_entry* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %2
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EHOSTUNREACH, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %71

40:                                               ; preds = %2
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load %struct.rxe_qp*, %struct.rxe_qp** %6, align 8
  %43 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cpu_to_be16(i32 %44)
  %46 = load i32, i32* @ROCE_V2_UDP_DPORT, align 4
  %47 = call i32 @cpu_to_be16(i32 %46)
  %48 = call i32 @prepare_udp_hdr(%struct.sk_buff* %41, i32 %45, i32 %47)
  %49 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load %struct.in_addr*, %struct.in_addr** %11, align 8
  %52 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.in_addr*, %struct.in_addr** %12, align 8
  %55 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IPPROTO_UDP, align 4
  %58 = load %struct.rxe_av*, %struct.rxe_av** %10, align 8
  %59 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rxe_av*, %struct.rxe_av** %10, align 8
  %63 = getelementptr inbounds %struct.rxe_av, %struct.rxe_av* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @prepare_ipv4_hdr(%struct.dst_entry* %49, %struct.sk_buff* %50, i32 %53, i32 %56, i32 %57, i32 %61, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %70 = call i32 @dst_release(%struct.dst_entry* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %40, %36
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.rxe_av* @rxe_get_av(%struct.rxe_pkt_info*) #1

declare dso_local %struct.dst_entry* @rxe_find_route(i32, %struct.rxe_qp*, %struct.rxe_av*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @prepare_udp_hdr(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @prepare_ipv4_hdr(%struct.dst_entry*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
