; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_netdev.c_opa_vnic_rem_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_netdev.c_opa_vnic_rem_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_adapter = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.rdma_netdev = type { i32 (%struct.net_device.0*)* }
%struct.net_device.0 = type opaque

@.str = private unnamed_addr constant [10 x i8] c"removing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opa_vnic_rem_netdev(%struct.opa_vnic_adapter* %0) #0 {
  %2 = alloca %struct.opa_vnic_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rdma_netdev*, align 8
  store %struct.opa_vnic_adapter* %0, %struct.opa_vnic_adapter** %2, align 8
  %5 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %5, i32 0, i32 2
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.rdma_netdev* @netdev_priv(%struct.net_device* %8)
  store %struct.rdma_netdev* %9, %struct.rdma_netdev** %4, align 8
  %10 = call i32 @v_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 @unregister_netdev(%struct.net_device* %11)
  %13 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %2, align 8
  %14 = call i32 @opa_vnic_release_mac_tbl(%struct.opa_vnic_adapter* %13)
  %15 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %15, i32 0, i32 1
  %17 = call i32 @mutex_destroy(i32* %16)
  %18 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %18, i32 0, i32 0
  %20 = call i32 @mutex_destroy(i32* %19)
  %21 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %2, align 8
  %22 = call i32 @kfree(%struct.opa_vnic_adapter* %21)
  %23 = load %struct.rdma_netdev*, %struct.rdma_netdev** %4, align 8
  %24 = getelementptr inbounds %struct.rdma_netdev, %struct.rdma_netdev* %23, i32 0, i32 0
  %25 = load i32 (%struct.net_device.0*)*, i32 (%struct.net_device.0*)** %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = bitcast %struct.net_device* %26 to %struct.net_device.0*
  %28 = call i32 %25(%struct.net_device.0* %27)
  ret void
}

declare dso_local %struct.rdma_netdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @v_info(i8*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @opa_vnic_release_mac_tbl(%struct.opa_vnic_adapter*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.opa_vnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
