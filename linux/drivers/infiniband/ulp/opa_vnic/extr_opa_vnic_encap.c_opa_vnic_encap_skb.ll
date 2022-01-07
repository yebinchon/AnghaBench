; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_encap.c_opa_vnic_encap_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_encap.c_opa_vnic_encap_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_adapter = type { %struct.__opa_veswport_info }
%struct.__opa_veswport_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.opa_vnic_skb_mdata = type { i64, i32, i32 }

@OPA_VNIC_HDR_LEN = common dso_local global i32 0, align 4
@OPA_VNIC_SKB_MDATA_ENCAP_ERR = common dso_local global i64 0, align 8
@OPA_VNIC_L4_ETHR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opa_vnic_encap_skb(%struct.opa_vnic_adapter* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.opa_vnic_adapter*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.__opa_veswport_info*, align 8
  %6 = alloca %struct.opa_vnic_skb_mdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.opa_vnic_adapter* %0, %struct.opa_vnic_adapter** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %15 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %15, i32 0, i32 0
  store %struct.__opa_veswport_info* %16, %struct.__opa_veswport_info** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* @OPA_VNIC_HDR_LEN, align 4
  %19 = call i8* @skb_push(%struct.sk_buff* %17, i32 %18)
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %11, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @opa_vnic_calc_entropy(%struct.sk_buff* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @opa_vnic_get_def_port(%struct.opa_vnic_adapter* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @opa_vnic_wire_length(%struct.sk_buff* %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @opa_vnic_get_dlid(%struct.opa_vnic_adapter* %28, %struct.sk_buff* %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %5, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @opa_vnic_get_sc(%struct.__opa_veswport_info* %32, %struct.sk_buff* %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %5, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @opa_vnic_get_rc(%struct.__opa_veswport_info* %35, %struct.sk_buff* %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %5, align 8
  %39 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i8* @skb_push(%struct.sk_buff* %42, i32 16)
  %44 = bitcast i8* %43 to %struct.opa_vnic_skb_mdata*
  store %struct.opa_vnic_skb_mdata* %44, %struct.opa_vnic_skb_mdata** %6, align 8
  %45 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i32 @opa_vnic_get_vl(%struct.opa_vnic_adapter* %45, %struct.sk_buff* %46)
  %48 = load %struct.opa_vnic_skb_mdata*, %struct.opa_vnic_skb_mdata** %6, align 8
  %49 = getelementptr inbounds %struct.opa_vnic_skb_mdata, %struct.opa_vnic_skb_mdata* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.opa_vnic_skb_mdata*, %struct.opa_vnic_skb_mdata** %6, align 8
  %52 = getelementptr inbounds %struct.opa_vnic_skb_mdata, %struct.opa_vnic_skb_mdata* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.opa_vnic_skb_mdata*, %struct.opa_vnic_skb_mdata** %6, align 8
  %54 = getelementptr inbounds %struct.opa_vnic_skb_mdata, %struct.opa_vnic_skb_mdata* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %2
  %62 = load i64, i64* @OPA_VNIC_SKB_MDATA_ENCAP_ERR, align 8
  %63 = load %struct.opa_vnic_skb_mdata*, %struct.opa_vnic_skb_mdata** %6, align 8
  %64 = getelementptr inbounds %struct.opa_vnic_skb_mdata, %struct.opa_vnic_skb_mdata* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %83

65:                                               ; preds = %2
  %66 = load i32*, i32** %11, align 8
  %67 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %5, align 8
  %68 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.__opa_veswport_info*, %struct.__opa_veswport_info** %5, align 8
  %74 = getelementptr inbounds %struct.__opa_veswport_info, %struct.__opa_veswport_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @OPA_VNIC_L4_ETHR, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @opa_vnic_make_header(i32* %66, i32 %70, i32 %71, i32 %72, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %65, %61
  ret void
}

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @opa_vnic_calc_entropy(%struct.sk_buff*) #1

declare dso_local i32 @opa_vnic_get_def_port(%struct.opa_vnic_adapter*, i32) #1

declare dso_local i32 @opa_vnic_wire_length(%struct.sk_buff*) #1

declare dso_local i32 @opa_vnic_get_dlid(%struct.opa_vnic_adapter*, %struct.sk_buff*, i32) #1

declare dso_local i32 @opa_vnic_get_sc(%struct.__opa_veswport_info*, %struct.sk_buff*) #1

declare dso_local i32 @opa_vnic_get_rc(%struct.__opa_veswport_info*, %struct.sk_buff*) #1

declare dso_local i32 @opa_vnic_get_vl(%struct.opa_vnic_adapter*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @opa_vnic_make_header(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
