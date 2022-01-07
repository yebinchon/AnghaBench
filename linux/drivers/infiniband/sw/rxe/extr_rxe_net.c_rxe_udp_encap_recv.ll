; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_udp_encap_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_udp_encap_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.udphdr = type { i32 }
%struct.rxe_dev = type { i32 }
%struct.rxe_pkt_info = type { i32, i64, i32, i32*, %struct.rxe_dev* }

@.str = private unnamed_addr constant [22 x i8] c"skb_linearize failed\0A\00", align 1
@RXE_GRH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @rxe_udp_encap_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_udp_encap_recv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.udphdr*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.rxe_dev*, align 8
  %10 = alloca %struct.rxe_pkt_info*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %14, %struct.net_device** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call %struct.rxe_dev* @rxe_get_dev_from_net(%struct.net_device* %15)
  store %struct.rxe_dev* %16, %struct.rxe_dev** %9, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call %struct.rxe_pkt_info* @SKB_TO_PKT(%struct.sk_buff* %17)
  store %struct.rxe_pkt_info* %18, %struct.rxe_pkt_info** %10, align 8
  %19 = load %struct.rxe_dev*, %struct.rxe_dev** %9, align 8
  %20 = icmp ne %struct.rxe_dev* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = call i64 @is_vlan_dev(%struct.net_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.net_device*, %struct.net_device** %7, align 8
  %27 = call %struct.net_device* @vlan_dev_real_dev(%struct.net_device* %26)
  store %struct.net_device* %27, %struct.net_device** %8, align 8
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = call %struct.rxe_dev* @rxe_get_dev_from_net(%struct.net_device* %28)
  store %struct.rxe_dev* %29, %struct.rxe_dev** %9, align 8
  br label %30

30:                                               ; preds = %25, %21, %2
  %31 = load %struct.rxe_dev*, %struct.rxe_dev** %9, align 8
  %32 = icmp ne %struct.rxe_dev* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %71

34:                                               ; preds = %30
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i64 @skb_linearize(%struct.sk_buff* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.rxe_dev*, %struct.rxe_dev** %9, align 8
  %41 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %40, i32 0, i32 0
  %42 = call i32 @ib_device_put(i32* %41)
  br label %71

43:                                               ; preds = %34
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %44)
  store %struct.udphdr* %45, %struct.udphdr** %6, align 8
  %46 = load %struct.rxe_dev*, %struct.rxe_dev** %9, align 8
  %47 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %10, align 8
  %48 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %47, i32 0, i32 4
  store %struct.rxe_dev* %46, %struct.rxe_dev** %48, align 8
  %49 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %10, align 8
  %50 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.udphdr*, %struct.udphdr** %6, align 8
  %52 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %51, i64 1
  %53 = bitcast %struct.udphdr* %52 to i32*
  %54 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %10, align 8
  %55 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %54, i32 0, i32 3
  store i32* %53, i32** %55, align 8
  %56 = load i32, i32* @RXE_GRH_MASK, align 4
  %57 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %10, align 8
  %58 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.udphdr*, %struct.udphdr** %6, align 8
  %60 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @be16_to_cpu(i32 %61)
  %63 = sub i64 %62, 4
  %64 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %10, align 8
  %65 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = call i32 @rxe_rcv(%struct.sk_buff* %66)
  %68 = load %struct.rxe_dev*, %struct.rxe_dev** %9, align 8
  %69 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %68, i32 0, i32 0
  %70 = call i32 @ib_device_put(i32* %69)
  store i32 0, i32* %3, align 4
  br label %74

71:                                               ; preds = %38, %33
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i32 @kfree_skb(%struct.sk_buff* %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %43
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.rxe_dev* @rxe_get_dev_from_net(%struct.net_device*) #1

declare dso_local %struct.rxe_pkt_info* @SKB_TO_PKT(%struct.sk_buff*) #1

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local %struct.net_device* @vlan_dev_real_dev(%struct.net_device*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ib_device_put(i32*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @rxe_rcv(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
