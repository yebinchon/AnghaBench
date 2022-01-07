; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.hfi1_vnic_vport_info = type { i32 }
%struct.opa_vnic_skb_mdata = type { i32, i32 }
%struct.sdma_engine = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)* @hfi1_vnic_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_vnic_select_queue(%struct.net_device* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.hfi1_vnic_vport_info*, align 8
  %8 = alloca %struct.opa_vnic_skb_mdata*, align 8
  %9 = alloca %struct.sdma_engine*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.hfi1_vnic_vport_info* @opa_vnic_dev_priv(%struct.net_device* %10)
  store %struct.hfi1_vnic_vport_info* %11, %struct.hfi1_vnic_vport_info** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.opa_vnic_skb_mdata*
  store %struct.opa_vnic_skb_mdata* %15, %struct.opa_vnic_skb_mdata** %8, align 8
  %16 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %7, align 8
  %17 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.opa_vnic_skb_mdata*, %struct.opa_vnic_skb_mdata** %8, align 8
  %20 = getelementptr inbounds %struct.opa_vnic_skb_mdata, %struct.opa_vnic_skb_mdata* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.opa_vnic_skb_mdata*, %struct.opa_vnic_skb_mdata** %8, align 8
  %23 = getelementptr inbounds %struct.opa_vnic_skb_mdata, %struct.opa_vnic_skb_mdata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.sdma_engine* @sdma_select_engine_vl(i32 %18, i32 %21, i32 %24)
  store %struct.sdma_engine* %25, %struct.sdma_engine** %9, align 8
  %26 = load %struct.sdma_engine*, %struct.sdma_engine** %9, align 8
  %27 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  ret i32 %28
}

declare dso_local %struct.hfi1_vnic_vport_info* @opa_vnic_dev_priv(%struct.net_device*) #1

declare dso_local %struct.sdma_engine* @sdma_select_engine_vl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
