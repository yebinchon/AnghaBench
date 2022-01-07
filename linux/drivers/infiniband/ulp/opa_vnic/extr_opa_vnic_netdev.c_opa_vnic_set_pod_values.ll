; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_netdev.c_opa_vnic_set_pod_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_netdev.c_opa_vnic_set_pod_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_adapter = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@OPA_VNIC_MAC_TBL_MAX_ENTRIES = common dso_local global i32 0, align 4
@OPA_VNIC_MAX_SMAC_LIMIT = common dso_local global i32 0, align 4
@OPA_VNIC_STATE_DROP_ALL = common dso_local global i32 0, align 4
@OPA_VNIC_ETH_LINK_DOWN = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opa_vnic_adapter*)* @opa_vnic_set_pod_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opa_vnic_set_pod_values(%struct.opa_vnic_adapter* %0) #0 {
  %2 = alloca %struct.opa_vnic_adapter*, align 8
  store %struct.opa_vnic_adapter* %0, %struct.opa_vnic_adapter** %2, align 8
  %3 = load i32, i32* @OPA_VNIC_MAC_TBL_MAX_ENTRIES, align 4
  %4 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  store i32 %3, i32* %7, align 4
  %8 = load i32, i32* @OPA_VNIC_MAX_SMAC_LIMIT, align 4
  %9 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32 %8, i32* %12, align 4
  %13 = load i32, i32* @OPA_VNIC_STATE_DROP_ALL, align 4
  %14 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* @OPA_VNIC_ETH_LINK_DOWN, align 4
  %19 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @ETH_DATA_LEN, align 4
  %24 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
