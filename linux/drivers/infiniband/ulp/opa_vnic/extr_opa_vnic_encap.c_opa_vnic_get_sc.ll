; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_encap.c_opa_vnic_get_sc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_encap.c_opa_vnic_get_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__opa_veswport_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64*, i64, i64 }
%struct.sk_buff = type { i32 }
%struct.ethhdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.__opa_veswport_info*, %struct.sk_buff*)* @opa_vnic_get_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @opa_vnic_get_sc(%struct.__opa_veswport_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.__opa_veswport_info*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ethhdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.__opa_veswport_info* %0, %struct.__opa_veswport_info** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i64 @skb_mac_header(%struct.sk_buff* %9)
  %11 = inttoptr i64 %10 to %struct.ethhdr*
  store %struct.ethhdr* %11, %struct.ethhdr** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @__vlan_get_tag(%struct.sk_buff* %12, i32* %6)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @OPA_VNIC_VLAN_PCP(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %19 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @is_multicast_ether_addr(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %3, align 8
  %25 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  br label %39

31:                                               ; preds = %15
  %32 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %3, align 8
  %33 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %31, %23
  br label %57

40:                                               ; preds = %2
  %41 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %42 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @is_multicast_ether_addr(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %3, align 8
  %48 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  br label %56

51:                                               ; preds = %40
  %52 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %3, align 8
  %53 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %51, %46
  br label %57

57:                                               ; preds = %56, %39
  %58 = load i64, i64* %7, align 8
  ret i64 %58
}

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_get_tag(%struct.sk_buff*, i32*) #1

declare dso_local i64 @OPA_VNIC_VLAN_PCP(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
