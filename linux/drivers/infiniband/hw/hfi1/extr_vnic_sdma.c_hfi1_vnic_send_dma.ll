; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_sdma.c_hfi1_vnic_send_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_sdma.c_hfi1_vnic_send_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hfi1_vnic_vport_info = type { %struct.hfi1_vnic_sdma* }
%struct.hfi1_vnic_sdma = type { i32, i32, i32, %struct.sdma_engine* }
%struct.sdma_engine = type { i32 }
%struct.sk_buff = type { i32 }
%struct.vnic_txreq = type { i64, i32, i32, %struct.sk_buff*, %struct.hfi1_vnic_sdma* }

@ECOMM = common dso_local global i32 0, align 4
@HFI1_VNIC_SDMA_Q_ACTIVE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_vnic_send_dma(%struct.hfi1_devdata* %0, i64 %1, %struct.hfi1_vnic_vport_info* %2, %struct.sk_buff* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfi1_devdata*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hfi1_vnic_vport_info*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.hfi1_vnic_sdma*, align 8
  %15 = alloca %struct.sdma_engine*, align 8
  %16 = alloca %struct.vnic_txreq*, align 8
  %17 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.hfi1_vnic_vport_info* %2, %struct.hfi1_vnic_vport_info** %10, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %18 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %10, align 8
  %19 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %18, i32 0, i32 0
  %20 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %20, i64 %21
  store %struct.hfi1_vnic_sdma* %22, %struct.hfi1_vnic_sdma** %14, align 8
  %23 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %14, align 8
  %24 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %23, i32 0, i32 3
  %25 = load %struct.sdma_engine*, %struct.sdma_engine** %24, align 8
  store %struct.sdma_engine* %25, %struct.sdma_engine** %15, align 8
  %26 = load i32, i32* @ECOMM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %17, align 4
  %28 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %14, align 8
  %29 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @READ_ONCE(i32 %30)
  %32 = load i64, i64* @HFI1_VNIC_SDMA_Q_ACTIVE, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  br label %143

38:                                               ; preds = %6
  %39 = load %struct.sdma_engine*, %struct.sdma_engine** %15, align 8
  %40 = icmp ne %struct.sdma_engine* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.sdma_engine*, %struct.sdma_engine** %15, align 8
  %43 = call i32 @sdma_running(%struct.sdma_engine* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi i1 [ true, %38 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %143

52:                                               ; preds = %46
  %53 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %54 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call %struct.vnic_txreq* @kmem_cache_alloc(i32 %56, i32 %57)
  store %struct.vnic_txreq* %58, %struct.vnic_txreq** %16, align 8
  %59 = load %struct.vnic_txreq*, %struct.vnic_txreq** %16, align 8
  %60 = icmp ne %struct.vnic_txreq* %59, null
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %17, align 4
  br label %143

68:                                               ; preds = %52
  %69 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %14, align 8
  %70 = load %struct.vnic_txreq*, %struct.vnic_txreq** %16, align 8
  %71 = getelementptr inbounds %struct.vnic_txreq, %struct.vnic_txreq* %70, i32 0, i32 4
  store %struct.hfi1_vnic_sdma* %69, %struct.hfi1_vnic_sdma** %71, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %73 = load %struct.vnic_txreq*, %struct.vnic_txreq** %16, align 8
  %74 = getelementptr inbounds %struct.vnic_txreq, %struct.vnic_txreq* %73, i32 0, i32 3
  store %struct.sk_buff* %72, %struct.sk_buff** %74, align 8
  %75 = load %struct.vnic_txreq*, %struct.vnic_txreq** %16, align 8
  %76 = getelementptr inbounds %struct.vnic_txreq, %struct.vnic_txreq* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @hfi1_vnic_update_pad(i32 %77, i64 %78)
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.vnic_txreq*, %struct.vnic_txreq** %16, align 8
  %82 = getelementptr inbounds %struct.vnic_txreq, %struct.vnic_txreq* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.sdma_engine*, %struct.sdma_engine** %15, align 8
  %84 = load %struct.vnic_txreq*, %struct.vnic_txreq** %16, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @build_vnic_tx_desc(%struct.sdma_engine* %83, %struct.vnic_txreq* %84, i32 %85)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %68
  br label %132

91:                                               ; preds = %68
  %92 = load %struct.sdma_engine*, %struct.sdma_engine** %15, align 8
  %93 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %14, align 8
  %94 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %93, i32 0, i32 1
  %95 = call i32 @iowait_get_ib_work(i32* %94)
  %96 = load %struct.vnic_txreq*, %struct.vnic_txreq** %16, align 8
  %97 = getelementptr inbounds %struct.vnic_txreq, %struct.vnic_txreq* %96, i32 0, i32 1
  %98 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %14, align 8
  %99 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @sdma_send_txreq(%struct.sdma_engine* %92, i32 %95, i32* %97, i32 %100)
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %91
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* @ECOMM, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp ne i32 %105, %107
  %109 = zext i1 %108 to i32
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %104, %91
  %113 = phi i1 [ false, %91 ], [ %111, %104 ]
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %132

118:                                              ; preds = %112
  %119 = load i32, i32* %17, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %118
  %122 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %14, align 8
  %123 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %14, align 8
  %125 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %14, align 8
  %128 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %127, i32 0, i32 1
  %129 = call i32 @iowait_starve_clear(i32 %126, i32* %128)
  br label %130

130:                                              ; preds = %121, %118
  %131 = load i32, i32* %17, align 4
  store i32 %131, i32* %7, align 4
  br label %156

132:                                              ; preds = %117, %90
  %133 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %134 = load %struct.vnic_txreq*, %struct.vnic_txreq** %16, align 8
  %135 = getelementptr inbounds %struct.vnic_txreq, %struct.vnic_txreq* %134, i32 0, i32 1
  %136 = call i32 @sdma_txclean(%struct.hfi1_devdata* %133, i32* %135)
  %137 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %138 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.vnic_txreq*, %struct.vnic_txreq** %16, align 8
  %142 = call i32 @kmem_cache_free(i32 %140, %struct.vnic_txreq* %141)
  br label %143

143:                                              ; preds = %132, %65, %51, %37
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* @EBUSY, align 4
  %146 = sub nsw i32 0, %145
  %147 = icmp ne i32 %144, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %150 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %149)
  br label %154

151:                                              ; preds = %143
  %152 = load %struct.hfi1_vnic_sdma*, %struct.hfi1_vnic_sdma** %14, align 8
  %153 = getelementptr inbounds %struct.hfi1_vnic_sdma, %struct.hfi1_vnic_sdma* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i32, i32* %17, align 4
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %154, %130
  %157 = load i32, i32* %7, align 4
  ret i32 %157
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @sdma_running(%struct.sdma_engine*) #1

declare dso_local %struct.vnic_txreq* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @hfi1_vnic_update_pad(i32, i64) #1

declare dso_local i32 @build_vnic_tx_desc(%struct.sdma_engine*, %struct.vnic_txreq*, i32) #1

declare dso_local i32 @sdma_send_txreq(%struct.sdma_engine*, i32, i32*, i32) #1

declare dso_local i32 @iowait_get_ib_work(i32*) #1

declare dso_local i32 @iowait_starve_clear(i32, i32*) #1

declare dso_local i32 @sdma_txclean(%struct.hfi1_devdata*, i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.vnic_txreq*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
