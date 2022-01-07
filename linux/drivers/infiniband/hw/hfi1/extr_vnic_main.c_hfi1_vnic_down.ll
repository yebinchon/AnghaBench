; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_vnic_vport_info = type { i64, %struct.hfi1_vnic_rx_queue*, i32, i32, i32, %struct.hfi1_devdata* }
%struct.hfi1_vnic_rx_queue = type { i32, i32 }
%struct.hfi1_devdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HFI1_VNIC_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_vnic_vport_info*)* @hfi1_vnic_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_vnic_down(%struct.hfi1_vnic_vport_info* %0) #0 {
  %2 = alloca %struct.hfi1_vnic_vport_info*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hfi1_vnic_rx_queue*, align 8
  store %struct.hfi1_vnic_vport_info* %0, %struct.hfi1_vnic_vport_info** %2, align 8
  %6 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %7 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %6, i32 0, i32 5
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  store %struct.hfi1_devdata* %8, %struct.hfi1_devdata** %3, align 8
  %9 = load i32, i32* @HFI1_VNIC_UP, align 4
  %10 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %11 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %10, i32 0, i32 4
  %12 = call i32 @clear_bit(i32 %9, i32* %11)
  %13 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %14 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netif_carrier_off(i32 %15)
  %17 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %18 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netif_tx_disable(i32 %19)
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %22 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %25 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @xa_erase(i32* %23, i32 %26)
  %28 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %29 = call i32 @msix_vnic_synchronize_irq(%struct.hfi1_devdata* %28)
  store i64 0, i64* %4, align 8
  br label %30

30:                                               ; preds = %48, %1
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %33 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %38 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %37, i32 0, i32 1
  %39 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %39, i64 %40
  store %struct.hfi1_vnic_rx_queue* %41, %struct.hfi1_vnic_rx_queue** %5, align 8
  %42 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %5, align 8
  %43 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %42, i32 0, i32 1
  %44 = call i32 @napi_disable(i32* %43)
  %45 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %5, align 8
  %46 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %45, i32 0, i32 0
  %47 = call i32 @skb_queue_purge(i32* %46)
  br label %48

48:                                               ; preds = %36
  %49 = load i64, i64* %4, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %4, align 8
  br label %30

51:                                               ; preds = %30
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netif_tx_disable(i32) #1

declare dso_local i32 @xa_erase(i32*, i32) #1

declare dso_local i32 @msix_vnic_synchronize_irq(%struct.hfi1_devdata*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
