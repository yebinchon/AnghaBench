; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_rdma_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_rdma_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, %struct.ocrdma_rdma_stats_resp*, %struct.ocrdma_rdma_stats_resp }
%struct.ocrdma_rdma_stats_resp = type { i32, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ocrdma_rdma_stats_req = type { i32, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.ocrdma_mqe = type { i32, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.ocrdma_mbx_hdr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_MQE_HDR_SGE_CNT_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_MQE_HDR_SGE_CNT_MASK = common dso_local global i32 0, align 4
@OCRDMA_CMD_GET_RDMA_STATS = common dso_local global i32 0, align 4
@OCRDMA_SUBSYS_ROCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mbx_rdma_stats(%struct.ocrdma_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocrdma_rdma_stats_req*, align 8
  %7 = alloca %struct.ocrdma_mqe*, align 8
  %8 = alloca %struct.ocrdma_rdma_stats_resp*, align 8
  %9 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %11 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %13 = load %struct.ocrdma_rdma_stats_resp*, %struct.ocrdma_rdma_stats_resp** %12, align 8
  %14 = bitcast %struct.ocrdma_rdma_stats_resp* %13 to %struct.ocrdma_rdma_stats_req*
  store %struct.ocrdma_rdma_stats_req* %14, %struct.ocrdma_rdma_stats_req** %6, align 8
  %15 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %16 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  %18 = bitcast %struct.ocrdma_rdma_stats_resp* %17 to %struct.ocrdma_mqe*
  store %struct.ocrdma_mqe* %18, %struct.ocrdma_mqe** %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ocrdma_rdma_stats_resp* @kmalloc(i32 24, i32 %19)
  store %struct.ocrdma_rdma_stats_resp* %20, %struct.ocrdma_rdma_stats_resp** %8, align 8
  %21 = load %struct.ocrdma_rdma_stats_resp*, %struct.ocrdma_rdma_stats_resp** %8, align 8
  %22 = icmp eq %struct.ocrdma_rdma_stats_resp* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %137

26:                                               ; preds = %2
  %27 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %7, align 8
  %28 = bitcast %struct.ocrdma_mqe* %27 to %struct.ocrdma_rdma_stats_resp*
  %29 = call i32 @memset(%struct.ocrdma_rdma_stats_resp* %28, i32 0, i32 24)
  %30 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %31 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %7, align 8
  %35 = getelementptr inbounds %struct.ocrdma_mqe, %struct.ocrdma_mqe* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @OCRDMA_MQE_HDR_SGE_CNT_SHIFT, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* @OCRDMA_MQE_HDR_SGE_CNT_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %7, align 8
  %42 = getelementptr inbounds %struct.ocrdma_mqe, %struct.ocrdma_mqe* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %40
  store i32 %45, i32* %43, align 4
  %46 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %47 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = zext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %7, align 8
  %53 = getelementptr inbounds %struct.ocrdma_mqe, %struct.ocrdma_mqe* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store i8* %51, i8** %58, align 8
  %59 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %60 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @upper_32_bits(i32 %62)
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %7, align 8
  %66 = getelementptr inbounds %struct.ocrdma_mqe, %struct.ocrdma_mqe* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i8* %64, i8** %71, align 8
  %72 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %73 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %7, align 8
  %77 = getelementptr inbounds %struct.ocrdma_mqe, %struct.ocrdma_mqe* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 %75, i32* %82, align 8
  %83 = load %struct.ocrdma_rdma_stats_resp*, %struct.ocrdma_rdma_stats_resp** %8, align 8
  %84 = load %struct.ocrdma_rdma_stats_req*, %struct.ocrdma_rdma_stats_req** %6, align 8
  %85 = bitcast %struct.ocrdma_rdma_stats_req* %84 to %struct.ocrdma_rdma_stats_resp*
  %86 = call i32 @memcpy(%struct.ocrdma_rdma_stats_resp* %83, %struct.ocrdma_rdma_stats_resp* %85, i32 24)
  %87 = load %struct.ocrdma_rdma_stats_req*, %struct.ocrdma_rdma_stats_req** %6, align 8
  %88 = bitcast %struct.ocrdma_rdma_stats_req* %87 to %struct.ocrdma_rdma_stats_resp*
  %89 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %90 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @memset(%struct.ocrdma_rdma_stats_resp* %88, i32 0, i32 %92)
  %94 = load %struct.ocrdma_rdma_stats_req*, %struct.ocrdma_rdma_stats_req** %6, align 8
  %95 = bitcast %struct.ocrdma_rdma_stats_req* %94 to %struct.ocrdma_mbx_hdr*
  %96 = load i32, i32* @OCRDMA_CMD_GET_RDMA_STATS, align 4
  %97 = load i32, i32* @OCRDMA_SUBSYS_ROCE, align 4
  %98 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %99 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ocrdma_init_mch(%struct.ocrdma_mbx_hdr* %95, i32 %96, i32 %97, i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %26
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.ocrdma_rdma_stats_req*, %struct.ocrdma_rdma_stats_req** %6, align 8
  %108 = getelementptr inbounds %struct.ocrdma_rdma_stats_req, %struct.ocrdma_rdma_stats_req* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %26
  %110 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %111 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %7, align 8
  %112 = bitcast %struct.ocrdma_mqe* %111 to %struct.ocrdma_rdma_stats_resp*
  %113 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %114 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load %struct.ocrdma_rdma_stats_resp*, %struct.ocrdma_rdma_stats_resp** %115, align 8
  %117 = call i32 @ocrdma_nonemb_mbx_cmd(%struct.ocrdma_dev* %110, %struct.ocrdma_rdma_stats_resp* %112, %struct.ocrdma_rdma_stats_resp* %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %109
  %121 = load %struct.ocrdma_rdma_stats_req*, %struct.ocrdma_rdma_stats_req** %6, align 8
  %122 = bitcast %struct.ocrdma_rdma_stats_req* %121 to %struct.ocrdma_rdma_stats_resp*
  %123 = load %struct.ocrdma_rdma_stats_resp*, %struct.ocrdma_rdma_stats_resp** %8, align 8
  %124 = call i32 @memcpy(%struct.ocrdma_rdma_stats_resp* %122, %struct.ocrdma_rdma_stats_resp* %123, i32 24)
  br label %133

125:                                              ; preds = %109
  %126 = load %struct.ocrdma_rdma_stats_req*, %struct.ocrdma_rdma_stats_req** %6, align 8
  %127 = bitcast %struct.ocrdma_rdma_stats_req* %126 to %struct.ocrdma_rdma_stats_resp*
  %128 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %129 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @ocrdma_le32_to_cpu(%struct.ocrdma_rdma_stats_resp* %127, i32 %131)
  br label %133

133:                                              ; preds = %125, %120
  %134 = load %struct.ocrdma_rdma_stats_resp*, %struct.ocrdma_rdma_stats_resp** %8, align 8
  %135 = call i32 @kfree(%struct.ocrdma_rdma_stats_resp* %134)
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %133, %23
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.ocrdma_rdma_stats_resp* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ocrdma_rdma_stats_resp*, i32, i32) #1

declare dso_local i64 @upper_32_bits(i32) #1

declare dso_local i32 @memcpy(%struct.ocrdma_rdma_stats_resp*, %struct.ocrdma_rdma_stats_resp*, i32) #1

declare dso_local i32 @ocrdma_init_mch(%struct.ocrdma_mbx_hdr*, i32, i32, i32) #1

declare dso_local i32 @ocrdma_nonemb_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_rdma_stats_resp*, %struct.ocrdma_rdma_stats_resp*) #1

declare dso_local i32 @ocrdma_le32_to_cpu(%struct.ocrdma_rdma_stats_resp*, i32) #1

declare dso_local i32 @kfree(%struct.ocrdma_rdma_stats_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
