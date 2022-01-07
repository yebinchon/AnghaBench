; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_free_rooms_in_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_free_rooms_in_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hsdma_device = type { i32, %struct.mtk_hsdma_vchan*, %struct.TYPE_7__*, %struct.mtk_hsdma_pchan* }
%struct.mtk_hsdma_vchan = type { i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mtk_hsdma_pchan = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.mtk_hsdma_cb*, %struct.mtk_hsdma_pdesc* }
%struct.mtk_hsdma_cb = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mtk_hsdma_pdesc = type { i32, i32 }
%struct.mtk_hsdma_vdesc = type { i32 }

@MTK_DMA_SIZE = common dso_local global i32 0, align 4
@MTK_HSDMA_INT_STATUS = common dso_local global i32 0, align 4
@MTK_HSDMA_INT_RXDONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cb->vd cannot be null\0A\00", align 1
@MTK_HSDMA_RX_CPU = common dso_local global i32 0, align 4
@MTK_HSDMA_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hsdma_device*)* @mtk_hsdma_free_rooms_in_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hsdma_free_rooms_in_ring(%struct.mtk_hsdma_device* %0) #0 {
  %2 = alloca %struct.mtk_hsdma_device*, align 8
  %3 = alloca %struct.mtk_hsdma_vchan*, align 8
  %4 = alloca %struct.mtk_hsdma_pdesc*, align 8
  %5 = alloca %struct.mtk_hsdma_vdesc*, align 8
  %6 = alloca %struct.mtk_hsdma_pchan*, align 8
  %7 = alloca %struct.mtk_hsdma_cb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.mtk_hsdma_device* %0, %struct.mtk_hsdma_device** %2, align 8
  %12 = load i32, i32* @MTK_DMA_SIZE, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %2, align 8
  %14 = load i32, i32* @MTK_HSDMA_INT_STATUS, align 4
  %15 = call i32 @mtk_dma_read(%struct.mtk_hsdma_device* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @MTK_HSDMA_INT_RXDONE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %209

25:                                               ; preds = %1
  %26 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %2, align 8
  %27 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %26, i32 0, i32 3
  %28 = load %struct.mtk_hsdma_pchan*, %struct.mtk_hsdma_pchan** %27, align 8
  store %struct.mtk_hsdma_pchan* %28, %struct.mtk_hsdma_pchan** %6, align 8
  br label %29

29:                                               ; preds = %141, %25
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %159

33:                                               ; preds = %29
  %34 = load %struct.mtk_hsdma_pchan*, %struct.mtk_hsdma_pchan** %6, align 8
  %35 = getelementptr inbounds %struct.mtk_hsdma_pchan, %struct.mtk_hsdma_pchan* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @MTK_DMA_SIZE, align 4
  %39 = call i64 @MTK_HSDMA_NEXT_DESP_IDX(i64 %37, i32 %38)
  store i64 %39, i64* %11, align 8
  %40 = load %struct.mtk_hsdma_pchan*, %struct.mtk_hsdma_pchan** %6, align 8
  %41 = getelementptr inbounds %struct.mtk_hsdma_pchan, %struct.mtk_hsdma_pchan* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load %struct.mtk_hsdma_pdesc*, %struct.mtk_hsdma_pdesc** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds %struct.mtk_hsdma_pdesc, %struct.mtk_hsdma_pdesc* %43, i64 %44
  store %struct.mtk_hsdma_pdesc* %45, %struct.mtk_hsdma_pdesc** %4, align 8
  %46 = load %struct.mtk_hsdma_pdesc*, %struct.mtk_hsdma_pdesc** %4, align 8
  %47 = getelementptr inbounds %struct.mtk_hsdma_pdesc, %struct.mtk_hsdma_pdesc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @READ_ONCE(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %2, align 8
  %52 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %50, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %33
  br label %159

59:                                               ; preds = %33
  %60 = load %struct.mtk_hsdma_pchan*, %struct.mtk_hsdma_pchan** %6, align 8
  %61 = getelementptr inbounds %struct.mtk_hsdma_pchan, %struct.mtk_hsdma_pchan* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load %struct.mtk_hsdma_cb*, %struct.mtk_hsdma_cb** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.mtk_hsdma_cb, %struct.mtk_hsdma_cb* %63, i64 %64
  store %struct.mtk_hsdma_cb* %65, %struct.mtk_hsdma_cb** %7, align 8
  %66 = load %struct.mtk_hsdma_cb*, %struct.mtk_hsdma_cb** %7, align 8
  %67 = getelementptr inbounds %struct.mtk_hsdma_cb, %struct.mtk_hsdma_cb* %66, i32 0, i32 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = icmp ne %struct.TYPE_11__* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %59
  %75 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %2, align 8
  %76 = call i32 @hsdma2dev(%struct.mtk_hsdma_device* %75)
  %77 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %159

78:                                               ; preds = %59
  %79 = load %struct.mtk_hsdma_cb*, %struct.mtk_hsdma_cb** %7, align 8
  %80 = getelementptr inbounds %struct.mtk_hsdma_cb, %struct.mtk_hsdma_cb* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = call %struct.mtk_hsdma_vdesc* @to_hsdma_vdesc(%struct.TYPE_11__* %81)
  store %struct.mtk_hsdma_vdesc* %82, %struct.mtk_hsdma_vdesc** %5, align 8
  %83 = load %struct.mtk_hsdma_pdesc*, %struct.mtk_hsdma_pdesc** %4, align 8
  %84 = getelementptr inbounds %struct.mtk_hsdma_pdesc, %struct.mtk_hsdma_pdesc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @MTK_HSDMA_DESC_PLEN_GET(i32 %85)
  %87 = load %struct.mtk_hsdma_vdesc*, %struct.mtk_hsdma_vdesc** %5, align 8
  %88 = getelementptr inbounds %struct.mtk_hsdma_vdesc, %struct.mtk_hsdma_vdesc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load %struct.mtk_hsdma_cb*, %struct.mtk_hsdma_cb** %7, align 8
  %94 = getelementptr inbounds %struct.mtk_hsdma_cb, %struct.mtk_hsdma_cb* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @IS_MTK_HSDMA_VDESC_FINISHED(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %141

98:                                               ; preds = %78
  %99 = load %struct.mtk_hsdma_cb*, %struct.mtk_hsdma_cb** %7, align 8
  %100 = getelementptr inbounds %struct.mtk_hsdma_cb, %struct.mtk_hsdma_cb* %99, i32 0, i32 0
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.mtk_hsdma_vchan* @to_hsdma_vchan(i32 %104)
  store %struct.mtk_hsdma_vchan* %105, %struct.mtk_hsdma_vchan** %3, align 8
  %106 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %107 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = call i32 @spin_lock(i32* %108)
  %110 = load %struct.mtk_hsdma_cb*, %struct.mtk_hsdma_cb** %7, align 8
  %111 = getelementptr inbounds %struct.mtk_hsdma_cb, %struct.mtk_hsdma_cb* %110, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = call i32 @list_del(i32* %113)
  %115 = load %struct.mtk_hsdma_cb*, %struct.mtk_hsdma_cb** %7, align 8
  %116 = getelementptr inbounds %struct.mtk_hsdma_cb, %struct.mtk_hsdma_cb* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = call i32 @vchan_cookie_complete(%struct.TYPE_11__* %117)
  %119 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %120 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %98
  %124 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %125 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %124, i32 0, i32 3
  %126 = call i64 @list_empty(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %130 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %129, i32 0, i32 2
  %131 = call i32 @complete(i32* %130)
  %132 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %133 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %132, i32 0, i32 0
  store i32 0, i32* %133, align 4
  br label %134

134:                                              ; preds = %128, %123, %98
  %135 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %136 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = call i32 @spin_unlock(i32* %137)
  %139 = load %struct.mtk_hsdma_cb*, %struct.mtk_hsdma_cb** %7, align 8
  %140 = getelementptr inbounds %struct.mtk_hsdma_cb, %struct.mtk_hsdma_cb* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %134, %78
  %142 = load %struct.mtk_hsdma_cb*, %struct.mtk_hsdma_cb** %7, align 8
  %143 = getelementptr inbounds %struct.mtk_hsdma_cb, %struct.mtk_hsdma_cb* %142, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %143, align 8
  %144 = load %struct.mtk_hsdma_pdesc*, %struct.mtk_hsdma_pdesc** %4, align 8
  %145 = getelementptr inbounds %struct.mtk_hsdma_pdesc, %struct.mtk_hsdma_pdesc* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @WRITE_ONCE(i32 %146, i32 0)
  %148 = load %struct.mtk_hsdma_pdesc*, %struct.mtk_hsdma_pdesc** %4, align 8
  %149 = getelementptr inbounds %struct.mtk_hsdma_pdesc, %struct.mtk_hsdma_pdesc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @WRITE_ONCE(i32 %150, i32 0)
  %152 = load i64, i64* %11, align 8
  %153 = load %struct.mtk_hsdma_pchan*, %struct.mtk_hsdma_pchan** %6, align 8
  %154 = getelementptr inbounds %struct.mtk_hsdma_pchan, %struct.mtk_hsdma_pchan* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  store i64 %152, i64* %155, align 8
  %156 = load %struct.mtk_hsdma_pchan*, %struct.mtk_hsdma_pchan** %6, align 8
  %157 = getelementptr inbounds %struct.mtk_hsdma_pchan, %struct.mtk_hsdma_pchan* %156, i32 0, i32 0
  %158 = call i32 @atomic_inc(i32* %157)
  br label %29

159:                                              ; preds = %74, %58, %29
  %160 = call i32 (...) @wmb()
  %161 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %2, align 8
  %162 = load i32, i32* @MTK_HSDMA_RX_CPU, align 4
  %163 = load %struct.mtk_hsdma_pchan*, %struct.mtk_hsdma_pchan** %6, align 8
  %164 = getelementptr inbounds %struct.mtk_hsdma_pchan, %struct.mtk_hsdma_pchan* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 @mtk_dma_write(%struct.mtk_hsdma_device* %161, i32 %162, i32 %167)
  %169 = load %struct.mtk_hsdma_pchan*, %struct.mtk_hsdma_pchan** %6, align 8
  %170 = getelementptr inbounds %struct.mtk_hsdma_pchan, %struct.mtk_hsdma_pchan* %169, i32 0, i32 0
  %171 = call i32 @atomic_read(i32* %170)
  %172 = load i32, i32* @MTK_DMA_SIZE, align 4
  %173 = sub nsw i32 %172, 1
  %174 = icmp sge i32 %171, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %159
  %176 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %2, align 8
  %177 = load i32, i32* @MTK_HSDMA_INT_STATUS, align 4
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @mtk_dma_write(%struct.mtk_hsdma_device* %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %175, %159
  store i32 0, i32* %8, align 4
  br label %181

181:                                              ; preds = %205, %180
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %2, align 8
  %184 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %208

187:                                              ; preds = %181
  %188 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %2, align 8
  %189 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %188, i32 0, i32 1
  %190 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %190, i64 %192
  store %struct.mtk_hsdma_vchan* %193, %struct.mtk_hsdma_vchan** %3, align 8
  %194 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %195 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = call i32 @spin_lock(i32* %196)
  %198 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %2, align 8
  %199 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %200 = call i32 @mtk_hsdma_issue_vchan_pending(%struct.mtk_hsdma_device* %198, %struct.mtk_hsdma_vchan* %199)
  %201 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %3, align 8
  %202 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = call i32 @spin_unlock(i32* %203)
  br label %205

205:                                              ; preds = %187
  %206 = load i32, i32* %8, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %8, align 4
  br label %181

208:                                              ; preds = %181
  br label %209

209:                                              ; preds = %208, %24
  %210 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %2, align 8
  %211 = load i32, i32* @MTK_HSDMA_INT_ENABLE, align 4
  %212 = load i32, i32* @MTK_HSDMA_INT_RXDONE, align 4
  %213 = call i32 @mtk_dma_set(%struct.mtk_hsdma_device* %210, i32 %211, i32 %212)
  ret void
}

declare dso_local i32 @mtk_dma_read(%struct.mtk_hsdma_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @MTK_HSDMA_NEXT_DESP_IDX(i64, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hsdma2dev(%struct.mtk_hsdma_device*) #1

declare dso_local %struct.mtk_hsdma_vdesc* @to_hsdma_vdesc(%struct.TYPE_11__*) #1

declare dso_local i64 @MTK_HSDMA_DESC_PLEN_GET(i32) #1

declare dso_local i64 @IS_MTK_HSDMA_VDESC_FINISHED(i64) #1

declare dso_local %struct.mtk_hsdma_vchan* @to_hsdma_vchan(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @vchan_cookie_complete(%struct.TYPE_11__*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mtk_dma_write(%struct.mtk_hsdma_device*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mtk_hsdma_issue_vchan_pending(%struct.mtk_hsdma_device*, %struct.mtk_hsdma_vchan*) #1

declare dso_local i32 @mtk_dma_set(%struct.mtk_hsdma_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
