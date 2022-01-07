; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_update_rx_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_update_rx_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_vnic_vport_info = type { %struct.opa_vnic_stats* }
%struct.opa_vnic_stats = type { %struct.TYPE_2__, %struct.opa_vnic_grp_stats }
%struct.TYPE_2__ = type { i32, i32 }
%struct.opa_vnic_grp_stats = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ethhdr = type { i32 }

@ETH_FCS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_vnic_vport_info*, i64, %struct.sk_buff*, i32)* @hfi1_vnic_update_rx_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_vnic_update_rx_counters(%struct.hfi1_vnic_vport_info* %0, i64 %1, %struct.sk_buff* %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ethhdr*
  store %struct.ethhdr* %16, %struct.ethhdr** %9, align 8
  %17 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %5, align 8
  %18 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %17, i32 0, i32 0
  %19 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %19, i64 %20
  store %struct.opa_vnic_stats* %21, %struct.opa_vnic_stats** %10, align 8
  %22 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %10, align 8
  %23 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %22, i32 0, i32 1
  store %struct.opa_vnic_grp_stats* %23, %struct.opa_vnic_grp_stats** %11, align 8
  %24 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %10, align 8
  %25 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ETH_FCS_LEN, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.opa_vnic_stats*, %struct.opa_vnic_stats** %10, align 8
  %35 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %33
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %11, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @update_len_counters(%struct.opa_vnic_grp_stats* %41, i64 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %4
  br label %80

50:                                               ; preds = %4
  %51 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %52 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @is_multicast_ether_addr(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %11, align 8
  %58 = getelementptr inbounds %struct.opa_vnic_grp_stats, %struct.opa_vnic_grp_stats* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %66

61:                                               ; preds = %50
  %62 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %11, align 8
  %63 = getelementptr inbounds %struct.opa_vnic_grp_stats, %struct.opa_vnic_grp_stats* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = call i32 @__vlan_get_tag(%struct.sk_buff* %67, i32* %12)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %11, align 8
  %72 = getelementptr inbounds %struct.opa_vnic_grp_stats, %struct.opa_vnic_grp_stats* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %80

75:                                               ; preds = %66
  %76 = load %struct.opa_vnic_grp_stats*, %struct.opa_vnic_grp_stats** %11, align 8
  %77 = getelementptr inbounds %struct.opa_vnic_grp_stats, %struct.opa_vnic_grp_stats* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %49, %75, %70
  ret void
}

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
