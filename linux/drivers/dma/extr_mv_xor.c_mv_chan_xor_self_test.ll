; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_chan_xor_self_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_chan_xor_self_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_chan = type { %struct.dma_chan }
%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }
%struct.dma_async_tx_descriptor = type { i32 }
%struct.dmaengine_unmap_data = type { i32, i32, i8**, i32 }

@MV_XOR_NUM_SRC_TEST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Self-test cannot prepare operation, disabling\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Self-test submit error, disabling\0A\00", align 1
@DMA_COMPLETE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Self-test xor timed out, disabling\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"Self-test xor failed compare, disabling. index %d, data %x, expected %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_xor_chan*)* @mv_chan_xor_self_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_chan_xor_self_test(%struct.mv_xor_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv_xor_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.dma_async_tx_descriptor*, align 8
  %13 = alloca %struct.dmaengine_unmap_data*, align 8
  %14 = alloca %struct.dma_chan*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store %struct.mv_xor_chan* %0, %struct.mv_xor_chan** %3, align 8
  %23 = load i32, i32* @MV_XOR_NUM_SRC_TEST, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca %struct.page*, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load i32, i32* @MV_XOR_NUM_SRC_TEST, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8*, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %30 = load i32, i32* @MV_XOR_NUM_SRC_TEST, align 4
  store i32 %30, i32* %19, align 4
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %61, %1
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %19, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %31
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.page* @alloc_page(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %39
  store %struct.page* %37, %struct.page** %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %42
  %44 = load %struct.page*, %struct.page** %43, align 8
  %45 = icmp ne %struct.page* %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %51, %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %5, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %53
  %55 = load %struct.page*, %struct.page** %54, align 8
  %56 = call i32 @__free_page(%struct.page* %55)
  br label %47

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %392

60:                                               ; preds = %35
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %31

64:                                               ; preds = %31
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.page* @alloc_page(i32 %65)
  store %struct.page* %66, %struct.page** %7, align 8
  %67 = load %struct.page*, %struct.page** %7, align 8
  %68 = icmp ne %struct.page* %67, null
  br i1 %68, label %83, label %69

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %74, %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %5, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %76
  %78 = load %struct.page*, %struct.page** %77, align 8
  %79 = call i32 @__free_page(%struct.page* %78)
  br label %70

80:                                               ; preds = %70
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %392

83:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %110, %83
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %113

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %90
  %92 = load %struct.page*, %struct.page** %91, align 8
  %93 = call i8* @page_address(%struct.page* %92)
  %94 = bitcast i8* %93 to i32*
  store i32* %94, i32** %21, align 8
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %106, %88
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @PAGE_SIZE, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load i32, i32* %5, align 4
  %101 = shl i32 1, %100
  %102 = load i32*, i32** %21, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %95

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %84

113:                                              ; preds = %84
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %123, %113
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %19, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load i32, i32* %5, align 4
  %120 = shl i32 1, %119
  %121 = load i32, i32* %16, align 4
  %122 = xor i32 %121, %120
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %114

126:                                              ; preds = %114
  %127 = load i32, i32* %16, align 4
  %128 = shl i32 %127, 24
  %129 = load i32, i32* %16, align 4
  %130 = shl i32 %129, 16
  %131 = or i32 %128, %130
  %132 = load i32, i32* %16, align 4
  %133 = shl i32 %132, 8
  %134 = or i32 %131, %133
  %135 = load i32, i32* %16, align 4
  %136 = or i32 %134, %135
  store i32 %136, i32* %17, align 4
  %137 = load %struct.page*, %struct.page** %7, align 8
  %138 = call i8* @page_address(%struct.page* %137)
  %139 = load i32, i32* @PAGE_SIZE, align 4
  %140 = call i32 @memset(i8* %138, i32 0, i32 %139)
  %141 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %3, align 8
  %142 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %141, i32 0, i32 0
  store %struct.dma_chan* %142, %struct.dma_chan** %14, align 8
  %143 = load %struct.dma_chan*, %struct.dma_chan** %14, align 8
  %144 = call i32 @mv_xor_alloc_chan_resources(%struct.dma_chan* %143)
  %145 = icmp slt i32 %144, 1
  br i1 %145, label %146, label %149

146:                                              ; preds = %126
  %147 = load i32, i32* @ENODEV, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %18, align 4
  br label %376

149:                                              ; preds = %126
  %150 = load %struct.dma_chan*, %struct.dma_chan** %14, align 8
  %151 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %19, align 4
  %156 = add nsw i32 %155, 1
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call %struct.dmaengine_unmap_data* @dmaengine_get_unmap_data(i32 %154, i32 %156, i32 %157)
  store %struct.dmaengine_unmap_data* %158, %struct.dmaengine_unmap_data** %13, align 8
  %159 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %160 = icmp ne %struct.dmaengine_unmap_data* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %149
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %18, align 4
  br label %371

164:                                              ; preds = %149
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %221, %164
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* %19, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %224

169:                                              ; preds = %165
  %170 = load %struct.dma_chan*, %struct.dma_chan** %14, align 8
  %171 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %170, i32 0, i32 0
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %176
  %178 = load %struct.page*, %struct.page** %177, align 8
  %179 = load i32, i32* @PAGE_SIZE, align 4
  %180 = load i32, i32* @DMA_TO_DEVICE, align 4
  %181 = call i8* @dma_map_page(i32 %174, %struct.page* %178, i32 0, i32 %179, i32 %180)
  %182 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %183 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %182, i32 0, i32 2
  %184 = load i8**, i8*** %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186
  store i8* %181, i8** %187, align 8
  %188 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %189 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %188, i32 0, i32 2
  %190 = load i8**, i8*** %189, align 8
  %191 = load i32, i32* %4, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %4, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %29, i64 %196
  store i8* %194, i8** %197, align 8
  %198 = load %struct.dma_chan*, %struct.dma_chan** %14, align 8
  %199 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %198, i32 0, i32 0
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %204 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %203, i32 0, i32 2
  %205 = load i8**, i8*** %204, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @dma_mapping_error(i32 %202, i8* %209)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %169
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %18, align 4
  br label %371

216:                                              ; preds = %169
  %217 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %218 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %216
  %222 = load i32, i32* %4, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %4, align 4
  br label %165

224:                                              ; preds = %165
  %225 = load %struct.dma_chan*, %struct.dma_chan** %14, align 8
  %226 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %225, i32 0, i32 0
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.page*, %struct.page** %7, align 8
  %231 = load i32, i32* @PAGE_SIZE, align 4
  %232 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %233 = call i8* @dma_map_page(i32 %229, %struct.page* %230, i32 0, i32 %231, i32 %232)
  %234 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %235 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %234, i32 0, i32 2
  %236 = load i8**, i8*** %235, align 8
  %237 = load i32, i32* %19, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %236, i64 %238
  store i8* %233, i8** %239, align 8
  %240 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %241 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %240, i32 0, i32 2
  %242 = load i8**, i8*** %241, align 8
  %243 = load i32, i32* %19, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8*, i8** %242, i64 %244
  %246 = load i8*, i8** %245, align 8
  store i8* %246, i8** %11, align 8
  %247 = load %struct.dma_chan*, %struct.dma_chan** %14, align 8
  %248 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %247, i32 0, i32 0
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %253 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %252, i32 0, i32 2
  %254 = load i8**, i8*** %253, align 8
  %255 = load i32, i32* %19, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8*, i8** %254, i64 %256
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @dma_mapping_error(i32 %251, i8* %258)
  store i32 %259, i32* %6, align 4
  %260 = load i32, i32* %6, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %224
  %263 = load i32, i32* @ENOMEM, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %18, align 4
  br label %371

265:                                              ; preds = %224
  %266 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %267 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %266, i32 0, i32 0
  store i32 1, i32* %267, align 8
  %268 = load i32, i32* @PAGE_SIZE, align 4
  %269 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %270 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 4
  %271 = load %struct.dma_chan*, %struct.dma_chan** %14, align 8
  %272 = load i8*, i8** %11, align 8
  %273 = load i32, i32* %19, align 4
  %274 = load i32, i32* @PAGE_SIZE, align 4
  %275 = call %struct.dma_async_tx_descriptor* @mv_xor_prep_dma_xor(%struct.dma_chan* %271, i8* %272, i8** %29, i32 %273, i32 %274, i32 0)
  store %struct.dma_async_tx_descriptor* %275, %struct.dma_async_tx_descriptor** %12, align 8
  %276 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %277 = icmp ne %struct.dma_async_tx_descriptor* %276, null
  br i1 %277, label %287, label %278

278:                                              ; preds = %265
  %279 = load %struct.dma_chan*, %struct.dma_chan** %14, align 8
  %280 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %279, i32 0, i32 0
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 (i32, i8*, ...) @dev_err(i32 %283, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %285 = load i32, i32* @ENODEV, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %18, align 4
  br label %371

287:                                              ; preds = %265
  %288 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %289 = call i32 @mv_xor_tx_submit(%struct.dma_async_tx_descriptor* %288)
  store i32 %289, i32* %15, align 4
  %290 = load i32, i32* %15, align 4
  %291 = call i64 @dma_submit_error(i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %287
  %294 = load %struct.dma_chan*, %struct.dma_chan** %14, align 8
  %295 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %294, i32 0, i32 0
  %296 = load %struct.TYPE_2__*, %struct.TYPE_2__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 (i32, i8*, ...) @dev_err(i32 %298, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %300 = load i32, i32* @ENODEV, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %18, align 4
  br label %371

302:                                              ; preds = %287
  %303 = load %struct.dma_chan*, %struct.dma_chan** %14, align 8
  %304 = call i32 @mv_xor_issue_pending(%struct.dma_chan* %303)
  %305 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %306 = call i32 @async_tx_ack(%struct.dma_async_tx_descriptor* %305)
  %307 = call i32 @msleep(i32 8)
  %308 = load %struct.dma_chan*, %struct.dma_chan** %14, align 8
  %309 = load i32, i32* %15, align 4
  %310 = call i64 @mv_xor_status(%struct.dma_chan* %308, i32 %309, i32* null)
  %311 = load i64, i64* @DMA_COMPLETE, align 8
  %312 = icmp ne i64 %310, %311
  br i1 %312, label %313, label %322

313:                                              ; preds = %302
  %314 = load %struct.dma_chan*, %struct.dma_chan** %14, align 8
  %315 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %314, i32 0, i32 0
  %316 = load %struct.TYPE_2__*, %struct.TYPE_2__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 (i32, i8*, ...) @dev_err(i32 %318, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %320 = load i32, i32* @ENODEV, align 4
  %321 = sub nsw i32 0, %320
  store i32 %321, i32* %18, align 4
  br label %371

322:                                              ; preds = %302
  %323 = load %struct.dma_chan*, %struct.dma_chan** %14, align 8
  %324 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %323, i32 0, i32 0
  %325 = load %struct.TYPE_2__*, %struct.TYPE_2__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = load i8*, i8** %11, align 8
  %329 = load i32, i32* @PAGE_SIZE, align 4
  %330 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %331 = call i32 @dma_sync_single_for_cpu(i32 %327, i8* %328, i32 %329, i32 %330)
  store i32 0, i32* %4, align 4
  br label %332

332:                                              ; preds = %367, %322
  %333 = load i32, i32* %4, align 4
  %334 = sext i32 %333 to i64
  %335 = load i32, i32* @PAGE_SIZE, align 4
  %336 = sext i32 %335 to i64
  %337 = udiv i64 %336, 4
  %338 = icmp ult i64 %334, %337
  br i1 %338, label %339, label %370

339:                                              ; preds = %332
  %340 = load %struct.page*, %struct.page** %7, align 8
  %341 = call i8* @page_address(%struct.page* %340)
  %342 = bitcast i8* %341 to i32*
  store i32* %342, i32** %22, align 8
  %343 = load i32*, i32** %22, align 8
  %344 = load i32, i32* %4, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* %17, align 4
  %349 = icmp ne i32 %347, %348
  br i1 %349, label %350, label %366

350:                                              ; preds = %339
  %351 = load %struct.dma_chan*, %struct.dma_chan** %14, align 8
  %352 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %351, i32 0, i32 0
  %353 = load %struct.TYPE_2__*, %struct.TYPE_2__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* %4, align 4
  %357 = load i32*, i32** %22, align 8
  %358 = load i32, i32* %4, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %357, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %17, align 4
  %363 = call i32 (i32, i8*, ...) @dev_err(i32 %355, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %356, i32 %361, i32 %362)
  %364 = load i32, i32* @ENODEV, align 4
  %365 = sub nsw i32 0, %364
  store i32 %365, i32* %18, align 4
  br label %371

366:                                              ; preds = %339
  br label %367

367:                                              ; preds = %366
  %368 = load i32, i32* %4, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %4, align 4
  br label %332

370:                                              ; preds = %332
  br label %371

371:                                              ; preds = %370, %350, %313, %293, %278, %262, %213, %161
  %372 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %373 = call i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data* %372)
  %374 = load %struct.dma_chan*, %struct.dma_chan** %14, align 8
  %375 = call i32 @mv_xor_free_chan_resources(%struct.dma_chan* %374)
  br label %376

376:                                              ; preds = %371, %146
  %377 = load i32, i32* %19, align 4
  store i32 %377, i32* %5, align 4
  br label %378

378:                                              ; preds = %382, %376
  %379 = load i32, i32* %5, align 4
  %380 = add nsw i32 %379, -1
  store i32 %380, i32* %5, align 4
  %381 = icmp ne i32 %379, 0
  br i1 %381, label %382, label %388

382:                                              ; preds = %378
  %383 = load i32, i32* %5, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %384
  %386 = load %struct.page*, %struct.page** %385, align 8
  %387 = call i32 @__free_page(%struct.page* %386)
  br label %378

388:                                              ; preds = %378
  %389 = load %struct.page*, %struct.page** %7, align 8
  %390 = call i32 @__free_page(%struct.page* %389)
  %391 = load i32, i32* %18, align 4
  store i32 %391, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %392

392:                                              ; preds = %388, %80, %57
  %393 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %393)
  %394 = load i32, i32* %2, align 4
  ret i32 %394
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.page* @alloc_page(i32) #2

declare dso_local i32 @__free_page(%struct.page*) #2

declare dso_local i8* @page_address(%struct.page*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @mv_xor_alloc_chan_resources(%struct.dma_chan*) #2

declare dso_local %struct.dmaengine_unmap_data* @dmaengine_get_unmap_data(i32, i32, i32) #2

declare dso_local i8* @dma_map_page(i32, %struct.page*, i32, i32, i32) #2

declare dso_local i32 @dma_mapping_error(i32, i8*) #2

declare dso_local %struct.dma_async_tx_descriptor* @mv_xor_prep_dma_xor(%struct.dma_chan*, i8*, i8**, i32, i32, i32) #2

declare dso_local i32 @dev_err(i32, i8*, ...) #2

declare dso_local i32 @mv_xor_tx_submit(%struct.dma_async_tx_descriptor*) #2

declare dso_local i64 @dma_submit_error(i32) #2

declare dso_local i32 @mv_xor_issue_pending(%struct.dma_chan*) #2

declare dso_local i32 @async_tx_ack(%struct.dma_async_tx_descriptor*) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i64 @mv_xor_status(%struct.dma_chan*, i32, i32*) #2

declare dso_local i32 @dma_sync_single_for_cpu(i32, i8*, i32, i32) #2

declare dso_local i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data*) #2

declare dso_local i32 @mv_xor_free_chan_resources(%struct.dma_chan*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
