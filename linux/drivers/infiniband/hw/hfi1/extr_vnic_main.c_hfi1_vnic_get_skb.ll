; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_get_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_get_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32 }
%struct.hfi1_vnic_rx_queue = type { i32 }

@OPA_VNIC_ICRC_TAIL_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.hfi1_vnic_rx_queue*)* @hfi1_vnic_get_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @hfi1_vnic_get_skb(%struct.hfi1_vnic_rx_queue* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.hfi1_vnic_rx_queue*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.hfi1_vnic_rx_queue* %0, %struct.hfi1_vnic_rx_queue** %3, align 8
  %6 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %3, align 8
  %7 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %6, i32 0, i32 0
  %8 = call %struct.sk_buff* @skb_dequeue(i32* %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  %25 = getelementptr inbounds i8, i8* %24, i64 -1
  store i8* %25, i8** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @OPA_VNIC_ICRC_TAIL_LEN, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 7
  %36 = sub nsw i32 %31, %35
  %37 = call i32 @skb_trim(%struct.sk_buff* %26, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %2, align 8
  br label %39

39:                                               ; preds = %16, %15
  %40 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %40
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
