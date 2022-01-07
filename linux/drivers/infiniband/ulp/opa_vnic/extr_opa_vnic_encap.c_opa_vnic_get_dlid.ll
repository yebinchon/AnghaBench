; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_encap.c_opa_vnic_get_dlid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_encap.c_opa_vnic_get_dlid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_adapter = type { %struct.__opa_veswport_info }
%struct.__opa_veswport_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.sk_buff = type { i32 }
%struct.ethhdr = type { i32* }

@.str = private unnamed_addr constant [26 x i8] c"Null dlid in MAC address\0A\00", align 1
@OPA_VNIC_INVALID_PORT = common dso_local global i64 0, align 8
@OPA_VESW_MAX_NUM_DEF_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_vnic_adapter*, %struct.sk_buff*, i64)* @opa_vnic_get_dlid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opa_vnic_get_dlid(%struct.opa_vnic_adapter* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.opa_vnic_adapter*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.__opa_veswport_info*, align 8
  %9 = alloca %struct.ethhdr*, align 8
  %10 = alloca i32, align 4
  store %struct.opa_vnic_adapter* %0, %struct.opa_vnic_adapter** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %11, i32 0, i32 0
  store %struct.__opa_veswport_info* %12, %struct.__opa_veswport_info** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i64 @skb_mac_header(%struct.sk_buff* %13)
  %15 = inttoptr i64 %14 to %struct.ethhdr*
  store %struct.ethhdr* %15, %struct.ethhdr** %9, align 8
  %16 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %5, align 8
  %17 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %18 = call i32 @opa_vnic_chk_mac_tbl(%struct.opa_vnic_adapter* %16, %struct.ethhdr* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %90

23:                                               ; preds = %3
  %24 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %25 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @is_multicast_ether_addr(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %8, align 8
  %31 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  br label %88

34:                                               ; preds = %23
  %35 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %36 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @is_local_ether_addr(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %34
  %41 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %42 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 5
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 16
  %47 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %48 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 8
  %53 = or i32 %46, %52
  %54 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %55 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %53, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %40
  %67 = call i32 @v_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %40
  br label %87

69:                                               ; preds = %34
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @OPA_VNIC_INVALID_PORT, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @OPA_VESW_MAX_NUM_DEF_PORT, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %8, align 8
  %79 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %77, %73
  br label %86

86:                                               ; preds = %85, %69
  br label %87

87:                                               ; preds = %86, %68
  br label %88

88:                                               ; preds = %87, %29
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %21
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @opa_vnic_chk_mac_tbl(%struct.opa_vnic_adapter*, %struct.ethhdr*) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i64 @is_local_ether_addr(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @v_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
