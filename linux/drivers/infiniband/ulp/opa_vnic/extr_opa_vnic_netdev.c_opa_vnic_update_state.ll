; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_netdev.c_opa_vnic_update_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_netdev.c_opa_vnic_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_adapter = type { i32, i32, %struct.__opa_veswport_info }
%struct.__opa_veswport_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }

@OPA_VNIC_STATE_FORWARDING = common dso_local global i64 0, align 8
@OPA_VNIC_ETH_LINK_UP = common dso_local global i32 0, align 4
@OPA_VNIC_STATE_DROP_ALL = common dso_local global i64 0, align 8
@OPA_VNIC_ETH_LINK_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opa_vnic_adapter*, i32)* @opa_vnic_update_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opa_vnic_update_state(%struct.opa_vnic_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.opa_vnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.__opa_veswport_info*, align 8
  store %struct.opa_vnic_adapter* %0, %struct.opa_vnic_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %6, i32 0, i32 2
  store %struct.__opa_veswport_info* %7, %struct.__opa_veswport_info** %5, align 8
  %8 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %5, align 8
  %12 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OPA_VNIC_STATE_FORWARDING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i64, i64* @OPA_VNIC_STATE_FORWARDING, align 8
  %22 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %5, align 8
  %23 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i64 %21, i64* %24, align 8
  %25 = load i32, i32* @OPA_VNIC_ETH_LINK_UP, align 4
  %26 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %5, align 8
  %27 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  br label %38

29:                                               ; preds = %17, %2
  %30 = load i64, i64* @OPA_VNIC_STATE_DROP_ALL, align 8
  %31 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %5, align 8
  %32 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i64 %30, i64* %33, align 8
  %34 = load i32, i32* @OPA_VNIC_ETH_LINK_DOWN, align 4
  %35 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %5, align 8
  %36 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 8
  br label %38

38:                                               ; preds = %29, %20
  %39 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %5, align 8
  %40 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @OPA_VNIC_STATE_FORWARDING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @netif_dormant_off(i32 %48)
  br label %55

50:                                               ; preds = %38
  %51 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @netif_dormant_on(i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netif_dormant_off(i32) #1

declare dso_local i32 @netif_dormant_on(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
