; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_handle_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_handle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_vnic_rx_queue = type { i32, i32, i32, %struct.hfi1_vnic_vport_info* }
%struct.hfi1_vnic_vport_info = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_vnic_rx_queue*, i32*, i32)* @hfi1_vnic_handle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_vnic_handle_rx(%struct.hfi1_vnic_rx_queue* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hfi1_vnic_rx_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_vnic_vport_info*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.hfi1_vnic_rx_queue* %0, %struct.hfi1_vnic_rx_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %4, align 8
  %11 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %10, i32 0, i32 3
  %12 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %11, align 8
  store %struct.hfi1_vnic_vport_info* %12, %struct.hfi1_vnic_vport_info** %7, align 8
  br label %13

13:                                               ; preds = %3, %43, %46
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %63

19:                                               ; preds = %13
  %20 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %4, align 8
  %21 = call %struct.sk_buff* @hfi1_vnic_get_skb(%struct.hfi1_vnic_rx_queue* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %63

29:                                               ; preds = %19
  %30 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = call i32 @hfi1_vnic_decap_skb(%struct.hfi1_vnic_rx_queue* %30, %struct.sk_buff* %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %7, align 8
  %34 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %4, align 8
  %35 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @hfi1_vnic_update_rx_counters(%struct.hfi1_vnic_vport_info* %33, i32 %36, %struct.sk_buff* %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %44)
  br label %13

46:                                               ; preds = %29
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %4, align 8
  %51 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @eth_type_trans(%struct.sk_buff* %49, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %4, align 8
  %57 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %56, i32 0, i32 0
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = call i32 @napi_gro_receive(i32* %57, %struct.sk_buff* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %13

63:                                               ; preds = %28, %18
  ret void
}

declare dso_local %struct.sk_buff* @hfi1_vnic_get_skb(%struct.hfi1_vnic_rx_queue*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hfi1_vnic_decap_skb(%struct.hfi1_vnic_rx_queue*, %struct.sk_buff*) #1

declare dso_local i32 @hfi1_vnic_update_rx_counters(%struct.hfi1_vnic_vport_info*, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
