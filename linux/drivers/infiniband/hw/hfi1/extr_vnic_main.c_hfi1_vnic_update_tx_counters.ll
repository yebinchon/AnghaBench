; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_update_tx_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_update_tx_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_vnic_vport_info = type { %struct.opa_vnic_stats* }
%struct.opa_vnic_stats = type { %struct.TYPE_2__, %struct.opa_vnic_grp_stats }
%struct.TYPE_2__ = type { i32, i32 }
%struct.opa_vnic_grp_stats = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.ethhdr = type { i32 }

@ETH_FCS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_vnic_vport_info*, i64, %struct.sk_buff*, i32)* @hfi1_vnic_update_tx_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_vnic_update_tx_counters(%struct.hfi1_vnic_vport_info* %0, i64 %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.hfi1_vnic_vport_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ethhdr*, align 8
  %10 = alloca %struct.opa_vnic_stats*, align 8
  %11 = alloca %struct.opa_vnic_grp_stats*, align 8
  %12 = alloca i32, align 4
  store %struct.hfi1_vnic_vport_info* %0, %struct.hfi1_vnic_vport_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call i64 @skb_mac_header(%struct.sk_buff* %13)
  %15 = inttoptr i64 %14 to %struct.ethhdr*
  store %struct.ethhdr* %15, %struct.ethhdr** %9, align 8
  %16 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %5, align 8
  %17 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %16, i32 0, i32 0
  %18 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %18, i64 %19
  store %struct.opa_vnic_stats* %20, %struct.opa_vnic_stats** %10, align 8
  %21 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %10, align 8
  %22 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %21, i32 0, i32 1
  store %struct.opa_vnic_grp_stats* %22, %struct.opa_vnic_grp_stats** %11, align 8
  %23 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %10, align 8
  %24 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ETH_FCS_LEN, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %10, align 8
  %34 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %32
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %11, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @update_len_counters(%struct.opa_vnic_grp_stats* %40, i64 %43)
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %4
  br label %79

49:                                               ; preds = %4
  %50 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %51 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @is_multicast_ether_addr(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %11, align 8
  %57 = getelementptr inbounds %struct.opa_vnic_grp_stats, %struct.opa_vnic_grp_stats* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %65

60:                                               ; preds = %49
  %61 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %11, align 8
  %62 = getelementptr inbounds %struct.opa_vnic_grp_stats, %struct.opa_vnic_grp_stats* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = call i32 @__vlan_get_tag(%struct.sk_buff* %66, i32* %12)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %11, align 8
  %71 = getelementptr inbounds %struct.opa_vnic_grp_stats, %struct.opa_vnic_grp_stats* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %79

74:                                               ; preds = %65
  %75 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %11, align 8
  %76 = getelementptr inbounds %struct.opa_vnic_grp_stats, %struct.opa_vnic_grp_stats* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %48, %74, %69
  ret void
}

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @update_len_counters(%struct.opa_vnic_grp_stats*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @__vlan_get_tag(%struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
