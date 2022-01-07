; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_netdev_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_netdev_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64 }
%struct.net_device = type { i32 }
%struct.hfi1_vnic_vport_info = type { %struct.TYPE_4__*, %struct.hfi1_devdata* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hfi1_devdata = type { i32 (%struct.hfi1_devdata*, i64, %struct.hfi1_vnic_vport_info*, %struct.sk_buff*, i32, i64)* }
%struct.opa_vnic_skb_mdata = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"xmit: queue %d skb len %d\0A\00", align 1
@OPA_VNIC_SKB_MDATA_ENCAP_ERR = common dso_local global i32 0, align 4
@OPA_VNIC_ICRC_TAIL_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"pbc 0x%016llX len %d pad_len %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@OPA_VNIC_HDR_LEN = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @hfi1_netdev_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_netdev_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.hfi1_vnic_vport_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hfi1_devdata*, align 8
  %10 = alloca %struct.opa_vnic_skb_mdata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.hfi1_vnic_vport_info* @opa_vnic_dev_priv(%struct.net_device* %15)
  store %struct.hfi1_vnic_vport_info* %16, %struct.hfi1_vnic_vport_info** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %6, align 8
  %21 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %20, i32 0, i32 1
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %21, align 8
  store %struct.hfi1_devdata* %22, %struct.hfi1_devdata** %9, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %13, align 4
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = call i32 (i8*, i64, i64, ...) @v_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %29)
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call i32 @netif_oper_up(%struct.net_device* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %2
  %39 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %6, align 8
  %40 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %172

47:                                               ; preds = %2
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.opa_vnic_skb_mdata*
  store %struct.opa_vnic_skb_mdata* %51, %struct.opa_vnic_skb_mdata** %10, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @skb_pull(%struct.sk_buff* %52, i32 8)
  %54 = load %struct.opa_vnic_skb_mdata*, %struct.opa_vnic_skb_mdata** %10, align 8
  %55 = getelementptr inbounds %struct.opa_vnic_skb_mdata, %struct.opa_vnic_skb_mdata* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @OPA_VNIC_SKB_MDATA_ENCAP_ERR, align 4
  %58 = and i32 %56, %57
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %47
  %62 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %6, align 8
  %63 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %172

70:                                               ; preds = %47
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @OPA_VNIC_ICRC_TAIL_LEN, align 4
  %75 = add nsw i32 %73, %74
  %76 = sub nsw i32 0, %75
  %77 = and i32 %76, 7
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %7, align 8
  %79 = load i32, i32* @OPA_VNIC_ICRC_TAIL_LEN, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %7, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %7, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %86, %87
  %89 = lshr i64 %88, 2
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 2
  store i32 %92, i32* %12, align 4
  %93 = load %struct.opa_vnic_skb_mdata*, %struct.opa_vnic_skb_mdata** %10, align 8
  %94 = getelementptr inbounds %struct.opa_vnic_skb_mdata, %struct.opa_vnic_skb_mdata* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @create_bypass_pbc(i32 %95, i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call i32 @skb_get(%struct.sk_buff* %98)
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %7, align 8
  %107 = call i32 (i8*, i64, i64, ...) @v_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %101, i64 %105, i64 %106)
  %108 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %109 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %108, i32 0, i32 0
  %110 = load i32 (%struct.hfi1_devdata*, i64, %struct.hfi1_vnic_vport_info*, %struct.sk_buff*, i32, i64)*, i32 (%struct.hfi1_devdata*, i64, %struct.hfi1_vnic_vport_info*, %struct.sk_buff*, i32, i64)** %109, align 8
  %111 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %6, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i64, i64* %7, align 8
  %117 = call i32 %110(%struct.hfi1_devdata* %111, i64 %112, %struct.hfi1_vnic_vport_info* %113, %struct.sk_buff* %114, i32 %115, i64 %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %153

121:                                              ; preds = %70
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %6, align 8
  %128 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i64, i64* %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  br label %152

136:                                              ; preds = %121
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @EBUSY, align 4
  %139 = sub nsw i32 0, %138
  %140 = icmp ne i32 %137, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %6, align 8
  %143 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i64, i64* %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %141, %136
  br label %152

152:                                              ; preds = %151, %126
  br label %153

153:                                              ; preds = %152, %70
  %154 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %155 = load i32, i32* @OPA_VNIC_HDR_LEN, align 4
  %156 = call i32 @skb_pull(%struct.sk_buff* %154, i32 %155)
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @EBUSY, align 4
  %159 = sub nsw i32 0, %158
  %160 = icmp eq i32 %157, %159
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %153
  %165 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %6, align 8
  %166 = load i64, i64* %8, align 8
  %167 = call i32 @hfi1_vnic_maybe_stop_tx(%struct.hfi1_vnic_vport_info* %165, i64 %166)
  %168 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %169 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %168)
  %170 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %170, i32* %3, align 4
  br label %181

171:                                              ; preds = %153
  br label %172

172:                                              ; preds = %171, %61, %38
  %173 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %6, align 8
  %174 = load i64, i64* %8, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @hfi1_vnic_update_tx_counters(%struct.hfi1_vnic_vport_info* %173, i64 %174, %struct.sk_buff* %175, i32 %176)
  %178 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %179 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %178)
  %180 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %172, %164
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local %struct.hfi1_vnic_vport_info* @opa_vnic_dev_priv(%struct.net_device*) #1

declare dso_local i32 @v_dbg(i8*, i64, i64, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_oper_up(%struct.net_device*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @create_bypass_pbc(i32, i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @hfi1_vnic_maybe_stop_tx(%struct.hfi1_vnic_vport_info*, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @hfi1_vnic_update_tx_counters(%struct.hfi1_vnic_vport_info*, i64, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
