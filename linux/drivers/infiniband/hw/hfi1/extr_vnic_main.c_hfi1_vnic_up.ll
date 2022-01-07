; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_vnic_vport_info = type { i32, i32, %struct.hfi1_vnic_rx_queue*, i32, %struct.net_device*, %struct.hfi1_devdata* }
%struct.hfi1_vnic_rx_queue = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.hfi1_devdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@HFI1_VNIC_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_vnic_vport_info*)* @hfi1_vnic_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_vnic_up(%struct.hfi1_vnic_vport_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_vnic_vport_info*, align 8
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfi1_vnic_rx_queue*, align 8
  store %struct.hfi1_vnic_vport_info* %0, %struct.hfi1_vnic_vport_info** %3, align 8
  %9 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %3, align 8
  %10 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %9, i32 0, i32 5
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  store %struct.hfi1_devdata* %11, %struct.hfi1_devdata** %4, align 8
  %12 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %3, align 8
  %13 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %12, i32 0, i32 4
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %3, align 8
  %16 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %68

22:                                               ; preds = %1
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %3, align 8
  %27 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %3, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @xa_insert(i32* %25, i32 %28, %struct.hfi1_vnic_vport_info* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %68

36:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %3, align 8
  %40 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %3, align 8
  %45 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %44, i32 0, i32 2
  %46 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %46, i64 %48
  store %struct.hfi1_vnic_rx_queue* %49, %struct.hfi1_vnic_rx_queue** %8, align 8
  %50 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %8, align 8
  %51 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %50, i32 0, i32 1
  %52 = call i32 @skb_queue_head_init(i32* %51)
  %53 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %8, align 8
  %54 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %53, i32 0, i32 0
  %55 = call i32 @napi_enable(i32* %54)
  br label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %37

59:                                               ; preds = %37
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = call i32 @netif_carrier_on(%struct.net_device* %60)
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = call i32 @netif_tx_start_all_queues(%struct.net_device* %62)
  %64 = load i32, i32* @HFI1_VNIC_UP, align 4
  %65 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %3, align 8
  %66 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %65, i32 0, i32 1
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %59, %34, %19
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @xa_insert(i32*, i32, %struct.hfi1_vnic_vport_info*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
