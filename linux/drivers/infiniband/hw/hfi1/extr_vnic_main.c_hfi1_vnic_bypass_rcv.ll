; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_bypass_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_bypass_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.hfi1_vnic_vport_info = type { %struct.TYPE_8__*, i32, %struct.hfi1_vnic_rx_queue* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.hfi1_vnic_rx_queue = type { i32, i32 }
%struct.sk_buff = type { i32 }

@OPA_16B_L4_ETHR = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i32 0, align 4
@XA_PRESENT = common dso_local global i32 0, align 4
@vport_cntr_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"vnic rcv err: l4 %d vesw id %d ctx %d\0A\00", align 1
@HFI1_VNIC_RCV_Q_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"napi %d scheduling\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_vnic_bypass_rcv(%struct.hfi1_packet* %0) #0 {
  %2 = alloca %struct.hfi1_packet*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.hfi1_vnic_vport_info*, align 8
  %5 = alloca %struct.hfi1_vnic_rx_queue*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.hfi1_vnic_vport_info*, align 8
  %11 = alloca i64, align 8
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %2, align 8
  %12 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %13 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %15, align 8
  store %struct.hfi1_devdata* %16, %struct.hfi1_devdata** %3, align 8
  store %struct.hfi1_vnic_vport_info* null, %struct.hfi1_vnic_vport_info** %4, align 8
  store i32 -1, i32* %8, align 4
  %17 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %18 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @hfi1_16B_get_l4(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @OPA_16B_L4_ETHR, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %1
  %28 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %29 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @HFI1_VNIC_GET_VESWID(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %33 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.hfi1_vnic_vport_info* @xa_load(i32* %34, i32 %35)
  store %struct.hfi1_vnic_vport_info* %36, %struct.hfi1_vnic_vport_info** %4, align 8
  %37 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %4, align 8
  %38 = icmp ne %struct.hfi1_vnic_vport_info* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %27
  store i64 0, i64* %11, align 8
  %44 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %45 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* @ULONG_MAX, align 4
  %48 = load i32, i32* @XA_PRESENT, align 4
  %49 = call %struct.hfi1_vnic_vport_info* @xa_find(i32* %46, i64* %11, i32 %47, i32 %48)
  store %struct.hfi1_vnic_vport_info* %49, %struct.hfi1_vnic_vport_info** %10, align 8
  %50 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %10, align 8
  %51 = icmp ne %struct.hfi1_vnic_vport_info* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %43
  %53 = call i32 @spin_lock(i32* @vport_cntr_lock)
  %54 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %10, align 8
  %55 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = call i32 @spin_unlock(i32* @vport_cntr_lock)
  br label %63

63:                                               ; preds = %52, %43
  br label %64

64:                                               ; preds = %63, %27
  br label %65

65:                                               ; preds = %64, %1
  %66 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %4, align 8
  %67 = icmp ne %struct.hfi1_vnic_vport_info* %66, null
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %77 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dd_dev_warn(%struct.hfi1_devdata* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75, i32 %80)
  br label %187

82:                                               ; preds = %65
  %83 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %84 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %83, i32 0, i32 2
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %9, align 8
  %88 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %4, align 8
  %89 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %88, i32 0, i32 2
  %90 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %90, i64 %91
  store %struct.hfi1_vnic_rx_queue* %92, %struct.hfi1_vnic_rx_queue** %5, align 8
  %93 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %4, align 8
  %94 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @netif_oper_up(i32 %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %82
  %103 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %4, align 8
  %104 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = load i64, i64* %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %5, align 8
  %112 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %111, i32 0, i32 1
  %113 = call i32 @skb_queue_purge(i32* %112)
  br label %187

114:                                              ; preds = %82
  %115 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %5, align 8
  %116 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %115, i32 0, i32 1
  %117 = call i64 @skb_queue_len(i32* %116)
  %118 = load i64, i64* @HFI1_VNIC_RCV_Q_SIZE, align 8
  %119 = icmp sgt i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %114
  %124 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %4, align 8
  %125 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %187

133:                                              ; preds = %114
  %134 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %4, align 8
  %135 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %138 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call %struct.sk_buff* @netdev_alloc_skb(i32 %136, i32 %139)
  store %struct.sk_buff* %140, %struct.sk_buff** %6, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = icmp ne %struct.sk_buff* %141, null
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = call i64 @unlikely(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %133
  %148 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %4, align 8
  %149 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %148, i32 0, i32 0
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = load i64, i64* %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  br label %187

157:                                              ; preds = %133
  %158 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %162 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %165 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @memcpy(i32 %160, i32 %163, i32 %166)
  %168 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %169 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %170 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @skb_put(%struct.sk_buff* %168, i32 %171)
  %173 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %5, align 8
  %174 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %173, i32 0, i32 1
  %175 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %176 = call i32 @skb_queue_tail(i32* %174, %struct.sk_buff* %175)
  %177 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %5, align 8
  %178 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %177, i32 0, i32 0
  %179 = call i64 @napi_schedule_prep(i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %157
  %182 = load i64, i64* %9, align 8
  %183 = call i32 @v_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %182)
  %184 = load %struct.hfi1_vnic_rx_queue*, %struct.hfi1_vnic_rx_queue** %5, align 8
  %185 = getelementptr inbounds %struct.hfi1_vnic_rx_queue, %struct.hfi1_vnic_rx_queue* %184, i32 0, i32 0
  %186 = call i32 @__napi_schedule(i32* %185)
  br label %187

187:                                              ; preds = %72, %102, %123, %147, %181, %157
  ret void
}

declare dso_local i32 @hfi1_16B_get_l4(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @HFI1_VNIC_GET_VESWID(i32) #1

declare dso_local %struct.hfi1_vnic_vport_info* @xa_load(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.hfi1_vnic_vport_info* @xa_find(i32*, i64*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dd_dev_warn(%struct.hfi1_devdata*, i8*, i32, i32, i32) #1

declare dso_local i32 @netif_oper_up(i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @v_dbg(i8*, i64) #1

declare dso_local i32 @__napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
