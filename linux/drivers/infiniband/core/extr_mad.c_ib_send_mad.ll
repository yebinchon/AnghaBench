; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_send_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_send_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_wr_private = type { i8*, i8*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.ib_sge*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__, %struct.TYPE_13__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i32, %struct.list_head }
%struct.list_head = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, %struct.ib_mad_agent* }
%struct.ib_mad_agent = type { i32, i32 }
%struct.ib_sge = type { i32, i8* }
%struct.TYPE_8__ = type { %struct.ib_mad_qp_info* }
%struct.ib_mad_qp_info = type { %struct.TYPE_13__, %struct.list_head }

@ib_mad_send_done = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_send_mad(%struct.ib_mad_send_wr_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_mad_send_wr_private*, align 8
  %4 = alloca %struct.ib_mad_qp_info*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.ib_mad_agent*, align 8
  %7 = alloca %struct.ib_sge*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ib_mad_send_wr_private* %0, %struct.ib_mad_send_wr_private** %3, align 8
  %10 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %11 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %10, i32 0, i32 6
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %13, align 8
  store %struct.ib_mad_qp_info* %14, %struct.ib_mad_qp_info** %4, align 8
  %15 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %16 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %15, i32 0, i32 0
  %17 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %18 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %19, align 8
  %20 = load i32, i32* @ib_mad_send_done, align 4
  %21 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %22 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %26 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %29 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %31, align 8
  %32 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %33 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %34, align 8
  store %struct.ib_mad_agent* %35, %struct.ib_mad_agent** %6, align 8
  %36 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %37 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %36, i32 0, i32 5
  %38 = load %struct.ib_sge*, %struct.ib_sge** %37, align 8
  store %struct.ib_sge* %38, %struct.ib_sge** %7, align 8
  %39 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %6, align 8
  %40 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %43 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %47 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %46, i64 0
  %48 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @DMA_TO_DEVICE, align 4
  %51 = call i8* @ib_dma_map_single(i32 %41, i32 %45, i32 %49, i32 %50)
  %52 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %53 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %52, i64 0
  %54 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %53, i32 0, i32 1
  store i8* %51, i8** %54, align 8
  %55 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %6, align 8
  %56 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %59 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %58, i64 0
  %60 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @ib_dma_mapping_error(i32 %57, i8* %61)
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %1
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %201

68:                                               ; preds = %1
  %69 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %70 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %69, i64 0
  %71 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %74 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %6, align 8
  %76 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %79 = call i32 @ib_get_payload(%struct.ib_mad_send_wr_private* %78)
  %80 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %81 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %80, i64 1
  %82 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @DMA_TO_DEVICE, align 4
  %85 = call i8* @ib_dma_map_single(i32 %77, i32 %79, i32 %83, i32 %84)
  %86 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %87 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %86, i64 1
  %88 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  %89 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %6, align 8
  %90 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %93 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %92, i64 1
  %94 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @ib_dma_mapping_error(i32 %91, i8* %95)
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %68
  %100 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %6, align 8
  %101 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %104 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %107 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %106, i64 0
  %108 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @DMA_TO_DEVICE, align 4
  %111 = call i32 @ib_dma_unmap_single(i32 %102, i8* %105, i32 %109, i32 %110)
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %201

114:                                              ; preds = %68
  %115 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %116 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %115, i64 1
  %117 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %120 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  %121 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %122 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @spin_lock_irqsave(i32* %123, i64 %124)
  %126 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %127 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %131 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp slt i64 %129, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %114
  %136 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %137 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %138 = call i32 @trace_ib_mad_ib_send_mad(%struct.ib_mad_send_wr_private* %136, %struct.ib_mad_qp_info* %137)
  %139 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %6, align 8
  %140 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %143 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = call i32 @ib_post_send(i32 %141, %struct.TYPE_14__* %144, i32* null)
  store i32 %145, i32* %9, align 4
  %146 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %147 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 3
  store %struct.list_head* %148, %struct.list_head** %5, align 8
  br label %152

149:                                              ; preds = %114
  store i32 0, i32* %9, align 4
  %150 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %151 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %150, i32 0, i32 1
  store %struct.list_head* %151, %struct.list_head** %5, align 8
  br label %152

152:                                              ; preds = %149, %135
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %152
  %156 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %157 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %158, align 8
  %161 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %162 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load %struct.list_head*, %struct.list_head** %5, align 8
  %165 = call i32 @list_add_tail(i32* %163, %struct.list_head* %164)
  br label %166

166:                                              ; preds = %155, %152
  %167 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %168 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  %170 = load i64, i64* %8, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* %169, i64 %170)
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %199

174:                                              ; preds = %166
  %175 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %6, align 8
  %176 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %179 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %182 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %181, i64 0
  %183 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @DMA_TO_DEVICE, align 4
  %186 = call i32 @ib_dma_unmap_single(i32 %177, i8* %180, i32 %184, i32 %185)
  %187 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %6, align 8
  %188 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %191 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %194 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %193, i64 1
  %195 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @DMA_TO_DEVICE, align 4
  %198 = call i32 @ib_dma_unmap_single(i32 %189, i8* %192, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %174, %166
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %199, %99, %65
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i8* @ib_dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ib_dma_mapping_error(i32, i8*) #1

declare dso_local i32 @ib_get_payload(%struct.ib_mad_send_wr_private*) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @trace_ib_mad_ib_send_mad(%struct.ib_mad_send_wr_private*, %struct.ib_mad_qp_info*) #1

declare dso_local i32 @ib_post_send(i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
