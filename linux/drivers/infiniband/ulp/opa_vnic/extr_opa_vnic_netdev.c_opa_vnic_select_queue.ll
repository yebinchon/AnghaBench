; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_netdev.c_opa_vnic_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_netdev.c_opa_vnic_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.opa_vnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)* }
%struct.opa_vnic_skb_mdata = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)* @opa_vnic_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opa_vnic_select_queue(%struct.net_device* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.opa_vnic_adapter*, align 8
  %8 = alloca %struct.opa_vnic_skb_mdata*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.opa_vnic_adapter* @opa_vnic_priv(%struct.net_device* %10)
  store %struct.opa_vnic_adapter* %11, %struct.opa_vnic_adapter** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.opa_vnic_skb_mdata* @skb_push(%struct.sk_buff* %12, i32 8)
  store %struct.opa_vnic_skb_mdata* %13, %struct.opa_vnic_skb_mdata** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @opa_vnic_calc_entropy(%struct.sk_buff* %14)
  %16 = load %struct.opa_vnic_skb_mdata*, %struct.opa_vnic_skb_mdata** %8, align 8
  %17 = getelementptr inbounds %struct.opa_vnic_skb_mdata, %struct.opa_vnic_skb_mdata* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @opa_vnic_get_vl(%struct.opa_vnic_adapter* %18, %struct.sk_buff* %19)
  %21 = load %struct.opa_vnic_skb_mdata*, %struct.opa_vnic_skb_mdata** %8, align 8
  %22 = getelementptr inbounds %struct.opa_vnic_skb_mdata, %struct.opa_vnic_skb_mdata* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %7, align 8
  %24 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)*, i32 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)** %26, align 8
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call i32 %27(%struct.net_device* %28, %struct.sk_buff* %29, %struct.net_device* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @skb_pull(%struct.sk_buff* %32, i32 8)
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local %struct.opa_vnic_adapter* @opa_vnic_priv(%struct.net_device*) #1

declare dso_local %struct.opa_vnic_skb_mdata* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @opa_vnic_calc_entropy(%struct.sk_buff*) #1

declare dso_local i32 @opa_vnic_get_vl(%struct.opa_vnic_adapter*, %struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
