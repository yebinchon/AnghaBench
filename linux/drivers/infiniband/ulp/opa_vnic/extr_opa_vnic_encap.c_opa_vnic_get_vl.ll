; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_encap.c_opa_vnic_get_vl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_encap.c_opa_vnic_get_vl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_adapter = type { %struct.__opa_veswport_info }
%struct.__opa_veswport_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64*, i64, i64 }
%struct.sk_buff = type { i32 }
%struct.ethhdr = type { i32 }

@VLAN_PRIO_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @opa_vnic_get_vl(%struct.opa_vnic_adapter* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.opa_vnic_adapter*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ethhdr*, align 8
  %6 = alloca %struct.__opa_veswport_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.opa_vnic_adapter* %0, %struct.opa_vnic_adapter** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i64 @skb_mac_header(%struct.sk_buff* %9)
  %11 = inttoptr i64 %10 to %struct.ethhdr*
  store %struct.ethhdr* %11, %struct.ethhdr** %5, align 8
  %12 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %12, i32 0, i32 0
  store %struct.__opa_veswport_info* %13, %struct.__opa_veswport_info** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i64 @skb_vlan_tag_get(%struct.sk_buff* %18)
  %20 = load i64, i64* @VLAN_PRIO_SHIFT, align 8
  %21 = lshr i64 %19, %20
  store i64 %21, i64* %8, align 8
  %22 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %23 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @is_multicast_ether_addr(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %6, align 8
  %29 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  br label %43

35:                                               ; preds = %17
  %36 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %6, align 8
  %37 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %35, %27
  br label %61

44:                                               ; preds = %2
  %45 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %46 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @is_multicast_ether_addr(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %6, align 8
  %52 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %7, align 8
  br label %60

55:                                               ; preds = %44
  %56 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %6, align 8
  %57 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %55, %50
  br label %61

61:                                               ; preds = %60, %43
  %62 = load i64, i64* %7, align 8
  ret i64 %62
}

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
