; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_device_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_device_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dw_edma_transfer = type { i32, i32, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i8*, i64 }
%struct.TYPE_7__ = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.dw_edma_chan = type { i64, i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.dw_edma_chunk = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.dw_edma_burst = type { i8*, i8*, i64 }
%struct.dw_edma_desc = type { i32, i32 }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@EDMA_DIR_WRITE = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@EDMA_DIR_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dw_edma_transfer*)* @dw_edma_device_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @dw_edma_device_transfer(%struct.dw_edma_transfer* %0) #0 {
  %2 = alloca %struct.dma_async_tx_descriptor*, align 8
  %3 = alloca %struct.dw_edma_transfer*, align 8
  %4 = alloca %struct.dw_edma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.dw_edma_chunk*, align 8
  %10 = alloca %struct.dw_edma_burst*, align 8
  %11 = alloca %struct.dw_edma_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dw_edma_transfer* %0, %struct.dw_edma_transfer** %3, align 8
  %14 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %15 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.dw_edma_chan* @dchan2dw_edma_chan(i32 %16)
  store %struct.dw_edma_chan* %17, %struct.dw_edma_chan** %4, align 8
  %18 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %19 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %4, align 8
  %26 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EDMA_DIR_WRITE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %24, %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %4, align 8
  %36 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EDMA_DIR_READ, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %24
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %2, align 8
  br label %291

41:                                               ; preds = %34, %30
  %42 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %43 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %48 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %55 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53, %46
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %2, align 8
  br label %291

61:                                               ; preds = %53
  br label %71

62:                                               ; preds = %41
  %63 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %64 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %2, align 8
  br label %291

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %61
  %72 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %4, align 8
  %73 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %2, align 8
  br label %291

77:                                               ; preds = %71
  %78 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %4, align 8
  %79 = call %struct.dw_edma_desc* @dw_edma_alloc_desc(%struct.dw_edma_chan* %78)
  store %struct.dw_edma_desc* %79, %struct.dw_edma_desc** %11, align 8
  %80 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %11, align 8
  %81 = icmp ne %struct.dw_edma_desc* %80, null
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %284

87:                                               ; preds = %77
  %88 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %11, align 8
  %89 = call %struct.dw_edma_chunk* @dw_edma_alloc_chunk(%struct.dw_edma_desc* %88)
  store %struct.dw_edma_chunk* %89, %struct.dw_edma_chunk** %9, align 8
  %90 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %9, align 8
  %91 = icmp ne %struct.dw_edma_chunk* %90, null
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %284

97:                                               ; preds = %87
  %98 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %4, align 8
  %99 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %6, align 8
  %102 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %4, align 8
  %103 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %7, align 8
  %106 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %107 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %97
  %111 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %112 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %12, align 4
  br label %127

116:                                              ; preds = %97
  %117 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %118 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %12, align 4
  %122 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %123 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load %struct.scatterlist*, %struct.scatterlist** %125, align 8
  store %struct.scatterlist* %126, %struct.scatterlist** %8, align 8
  br label %127

127:                                              ; preds = %116, %110
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %272, %127
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %275

132:                                              ; preds = %128
  %133 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %134 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %132
  %138 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %139 = icmp ne %struct.scatterlist* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  br label %275

141:                                              ; preds = %137, %132
  %142 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %9, align 8
  %143 = getelementptr inbounds %struct.dw_edma_chunk, %struct.dw_edma_chunk* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %4, align 8
  %146 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %144, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %141
  %150 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %11, align 8
  %151 = call %struct.dw_edma_chunk* @dw_edma_alloc_chunk(%struct.dw_edma_desc* %150)
  store %struct.dw_edma_chunk* %151, %struct.dw_edma_chunk** %9, align 8
  %152 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %9, align 8
  %153 = icmp ne %struct.dw_edma_chunk* %152, null
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %149
  br label %284

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %159, %141
  %161 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %9, align 8
  %162 = call %struct.dw_edma_burst* @dw_edma_alloc_burst(%struct.dw_edma_chunk* %161)
  store %struct.dw_edma_burst* %162, %struct.dw_edma_burst** %10, align 8
  %163 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %10, align 8
  %164 = icmp ne %struct.dw_edma_burst* %163, null
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = call i64 @unlikely(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %160
  br label %284

170:                                              ; preds = %160
  %171 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %172 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %170
  %176 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %177 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %10, align 8
  %182 = getelementptr inbounds %struct.dw_edma_burst, %struct.dw_edma_burst* %181, i32 0, i32 2
  store i64 %180, i64* %182, align 8
  br label %188

183:                                              ; preds = %170
  %184 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %185 = call i64 @sg_dma_len(%struct.scatterlist* %184)
  %186 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %10, align 8
  %187 = getelementptr inbounds %struct.dw_edma_burst, %struct.dw_edma_burst* %186, i32 0, i32 2
  store i64 %185, i64* %187, align 8
  br label %188

188:                                              ; preds = %183, %175
  %189 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %10, align 8
  %190 = getelementptr inbounds %struct.dw_edma_burst, %struct.dw_edma_burst* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %9, align 8
  %193 = getelementptr inbounds %struct.dw_edma_chunk, %struct.dw_edma_chunk* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %191
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %194, align 8
  %199 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %10, align 8
  %200 = getelementptr inbounds %struct.dw_edma_burst, %struct.dw_edma_burst* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %11, align 8
  %203 = getelementptr inbounds %struct.dw_edma_desc, %struct.dw_edma_desc* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %205, %201
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %203, align 4
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %237

211:                                              ; preds = %188
  %212 = load i8*, i8** %6, align 8
  %213 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %10, align 8
  %214 = getelementptr inbounds %struct.dw_edma_burst, %struct.dw_edma_burst* %213, i32 0, i32 0
  store i8* %212, i8** %214, align 8
  %215 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %216 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %211
  %220 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %221 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %10, align 8
  %226 = getelementptr inbounds %struct.dw_edma_burst, %struct.dw_edma_burst* %225, i32 0, i32 1
  store i8* %224, i8** %226, align 8
  br label %236

227:                                              ; preds = %211
  %228 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %229 = call i8* @sg_dma_address(%struct.scatterlist* %228)
  %230 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %10, align 8
  %231 = getelementptr inbounds %struct.dw_edma_burst, %struct.dw_edma_burst* %230, i32 0, i32 1
  store i8* %229, i8** %231, align 8
  %232 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %233 = call i64 @sg_dma_len(%struct.scatterlist* %232)
  %234 = load i8*, i8** %6, align 8
  %235 = getelementptr i8, i8* %234, i64 %233
  store i8* %235, i8** %6, align 8
  br label %236

236:                                              ; preds = %227, %219
  br label %263

237:                                              ; preds = %188
  %238 = load i8*, i8** %7, align 8
  %239 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %10, align 8
  %240 = getelementptr inbounds %struct.dw_edma_burst, %struct.dw_edma_burst* %239, i32 0, i32 1
  store i8* %238, i8** %240, align 8
  %241 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %242 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %237
  %246 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %247 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %10, align 8
  %252 = getelementptr inbounds %struct.dw_edma_burst, %struct.dw_edma_burst* %251, i32 0, i32 0
  store i8* %250, i8** %252, align 8
  br label %262

253:                                              ; preds = %237
  %254 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %255 = call i8* @sg_dma_address(%struct.scatterlist* %254)
  %256 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %10, align 8
  %257 = getelementptr inbounds %struct.dw_edma_burst, %struct.dw_edma_burst* %256, i32 0, i32 0
  store i8* %255, i8** %257, align 8
  %258 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %259 = call i64 @sg_dma_len(%struct.scatterlist* %258)
  %260 = load i8*, i8** %7, align 8
  %261 = getelementptr i8, i8* %260, i64 %259
  store i8* %261, i8** %7, align 8
  br label %262

262:                                              ; preds = %253, %245
  br label %263

263:                                              ; preds = %262, %236
  %264 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %265 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %263
  %269 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %270 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %269)
  store %struct.scatterlist* %270, %struct.scatterlist** %8, align 8
  br label %271

271:                                              ; preds = %268, %263
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %13, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %13, align 4
  br label %128

275:                                              ; preds = %140, %128
  %276 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %4, align 8
  %277 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %276, i32 0, i32 2
  %278 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %11, align 8
  %279 = getelementptr inbounds %struct.dw_edma_desc, %struct.dw_edma_desc* %278, i32 0, i32 0
  %280 = load %struct.dw_edma_transfer*, %struct.dw_edma_transfer** %3, align 8
  %281 = getelementptr inbounds %struct.dw_edma_transfer, %struct.dw_edma_transfer* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %277, i32* %279, i32 %282)
  store %struct.dma_async_tx_descriptor* %283, %struct.dma_async_tx_descriptor** %2, align 8
  br label %291

284:                                              ; preds = %169, %158, %96, %86
  %285 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %11, align 8
  %286 = icmp ne %struct.dw_edma_desc* %285, null
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %11, align 8
  %289 = call i32 @dw_edma_free_desc(%struct.dw_edma_desc* %288)
  br label %290

290:                                              ; preds = %287, %284
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %2, align 8
  br label %291

291:                                              ; preds = %290, %275, %76, %69, %60, %40
  %292 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  ret %struct.dma_async_tx_descriptor* %292
}

declare dso_local %struct.dw_edma_chan* @dchan2dw_edma_chan(i32) #1

declare dso_local %struct.dw_edma_desc* @dw_edma_alloc_desc(%struct.dw_edma_chan*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dw_edma_chunk* @dw_edma_alloc_chunk(%struct.dw_edma_desc*) #1

declare dso_local %struct.dw_edma_burst* @dw_edma_alloc_burst(%struct.dw_edma_chunk*) #1

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i8* @sg_dma_address(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i32) #1

declare dso_local i32 @dw_edma_free_desc(%struct.dw_edma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
