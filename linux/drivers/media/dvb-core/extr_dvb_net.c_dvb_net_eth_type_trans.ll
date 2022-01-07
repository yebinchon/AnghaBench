; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_eth_type_trans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_eth_type_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32 }
%struct.net_device = type { i32, i32 }
%struct.ethhdr = type { i32*, i32 }

@PACKET_BROADCAST = common dso_local global i32 0, align 4
@PACKET_MULTICAST = common dso_local global i32 0, align 4
@ETH_P_802_3_MIN = common dso_local global i64 0, align 8
@ETH_P_802_3 = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @dvb_net_eth_type_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_net_eth_type_trans(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i32 @skb_reset_mac_header(%struct.sk_buff* %8)
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @skb_pull(%struct.sk_buff* %10, i32 %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %15)
  store %struct.ethhdr* %16, %struct.ethhdr** %6, align 8
  %17 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %18 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %2
  %24 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %25 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ether_addr_equal(i32* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32, i32* @PACKET_BROADCAST, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %40

36:                                               ; preds = %23
  %37 = load i32, i32* @PACKET_MULTICAST, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %43 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @ntohs(i32 %44)
  %46 = load i64, i64* @ETH_P_802_3_MIN, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %50 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %3, align 4
  br label %67

52:                                               ; preds = %41
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = bitcast i8* %56 to i16*
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = icmp eq i32 %59, 65535
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @ETH_P_802_3, align 4
  %63 = call i32 @htons(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %67

64:                                               ; preds = %52
  %65 = load i32, i32* @ETH_P_802_2, align 4
  %66 = call i32 @htons(i32 %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %61, %48
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ether_addr_equal(i32*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
