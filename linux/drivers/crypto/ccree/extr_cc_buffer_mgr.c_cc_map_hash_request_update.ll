; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_map_hash_request_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_map_hash_request_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { %struct.buff_mgr_handle* }
%struct.buff_mgr_handle = type { i32* }
%struct.scatterlist = type { i32 }
%struct.ahash_req_ctx = type { i32, i64, i32, %struct.scatterlist*, i32, %struct.scatterlist*, %struct.mlli_params }
%struct.mlli_params = type { i32* }
%struct.device = type { i32 }
%struct.buffer_array = type { i64 }

@.str = private unnamed_addr constant [85 x i8] c" update params : curr_buff=%pK curr_buff_cnt=0x%X nbytes=0x%X src=%pK curr_index=%u\0A\00", align 1
@CC_DMA_BUF_NULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c" less than one block: curr_buff=%pK *curr_buff_cnt=0x%X copy_to=%pK\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c" temp length : *next_buff_cnt=0x%X update_data_len=0x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c" handle residue: next buff %pK skip data %u residue %u\0A\00", align 1
@CC_SG_TO_BUF = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@LLI_MAX_NUM_OF_DATA_ENTRIES = common dso_local global i32 0, align 4
@CC_DMA_BUF_DLLI = common dso_local global i64 0, align 8
@CC_DMA_BUF_MLLI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_map_hash_request_update(%struct.cc_drvdata* %0, i8* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cc_drvdata*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ahash_req_ctx*, align 8
  %15 = alloca %struct.device*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.mlli_params*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.buffer_array, align 8
  %24 = alloca %struct.buff_mgr_handle*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = bitcast i8* %29 to %struct.ahash_req_ctx*
  store %struct.ahash_req_ctx* %30, %struct.ahash_req_ctx** %14, align 8
  %31 = load %struct.cc_drvdata*, %struct.cc_drvdata** %8, align 8
  %32 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %31)
  store %struct.device* %32, %struct.device** %15, align 8
  %33 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %34 = call i32* @cc_hash_buf(%struct.ahash_req_ctx* %33)
  store i32* %34, i32** %16, align 8
  %35 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %36 = call i32* @cc_hash_buf_cnt(%struct.ahash_req_ctx* %35)
  store i32* %36, i32** %17, align 8
  %37 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %38 = call i32* @cc_next_buf(%struct.ahash_req_ctx* %37)
  store i32* %38, i32** %18, align 8
  %39 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %40 = call i32* @cc_next_buf_cnt(%struct.ahash_req_ctx* %39)
  store i32* %40, i32** %19, align 8
  %41 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %42 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %41, i32 0, i32 6
  store %struct.mlli_params* %42, %struct.mlli_params** %20, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32*, i32** %17, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add i32 %43, %45
  store i32 %46, i32* %22, align 4
  %47 = load %struct.cc_drvdata*, %struct.cc_drvdata** %8, align 8
  %48 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %47, i32 0, i32 0
  %49 = load %struct.buff_mgr_handle*, %struct.buff_mgr_handle** %48, align 8
  store %struct.buff_mgr_handle* %49, %struct.buff_mgr_handle** %24, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %50 = load %struct.device*, %struct.device** %15, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = ptrtoint i32* %51 to i32
  %53 = load i32*, i32** %17, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %57 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %58 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %50, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %54, i32 %55, %struct.scatterlist* %56, i32 %59)
  %61 = load i64, i64* @CC_DMA_BUF_NULL, align 8
  %62 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %63 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.mlli_params*, %struct.mlli_params** %20, align 8
  %65 = getelementptr inbounds %struct.mlli_params, %struct.mlli_params* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %67 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %66, i32 0, i32 5
  store %struct.scatterlist* null, %struct.scatterlist** %67, align 8
  %68 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %23, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %70 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %69, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %106

74:                                               ; preds = %6
  %75 = load %struct.device*, %struct.device** %15, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = ptrtoint i32* %76 to i32
  %78 = load i32*, i32** %17, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %16, align 8
  %81 = load i32*, i32** %17, align 8
  %82 = load i32, i32* %81, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %75, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %79, i32* %84)
  %86 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @sg_nents_for_len(%struct.scatterlist* %86, i32 %87)
  %89 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %90 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %92 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %93 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = load i32*, i32** %17, align 8
  %97 = load i32, i32* %96, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @sg_copy_to_buffer(%struct.scatterlist* %91, i32 %94, i32* %99, i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = load i32*, i32** %17, align 8
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %104, %102
  store i32 %105, i32* %103, align 4
  store i32 1, i32* %7, align 4
  br label %275

106:                                              ; preds = %6
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %12, align 4
  %109 = sub i32 %108, 1
  %110 = and i32 %107, %109
  %111 = load i32*, i32** %19, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %22, align 4
  %113 = load i32*, i32** %19, align 8
  %114 = load i32, i32* %113, align 4
  %115 = sub i32 %112, %114
  store i32 %115, i32* %21, align 4
  %116 = load %struct.device*, %struct.device** %15, align 8
  %117 = load i32*, i32** %19, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %21, align 4
  %120 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %116, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load i32*, i32** %19, align 8
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %106
  %125 = load %struct.device*, %struct.device** %15, align 8
  %126 = load i32*, i32** %18, align 8
  %127 = ptrtoint i32* %126 to i32
  %128 = load i32, i32* %21, align 4
  %129 = load i32*, i32** %17, align 8
  %130 = load i32, i32* %129, align 4
  %131 = sub i32 %128, %130
  %132 = load i32*, i32** %19, align 8
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %125, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %127, i32 %131, i32 %133)
  %135 = load %struct.device*, %struct.device** %15, align 8
  %136 = load i32*, i32** %18, align 8
  %137 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %138 = load i32, i32* %21, align 4
  %139 = load i32*, i32** %17, align 8
  %140 = load i32, i32* %139, align 4
  %141 = sub i32 %138, %140
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @CC_SG_TO_BUF, align 4
  %144 = call i32 @cc_copy_sg_portion(%struct.device* %135, i32* %136, %struct.scatterlist* %137, i32 %141, i32 %142, i32 %143)
  store i32 1, i32* %25, align 4
  br label %145

145:                                              ; preds = %124, %106
  %146 = load i32*, i32** %17, align 8
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %145
  %150 = load %struct.device*, %struct.device** %15, align 8
  %151 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %152 = load i32*, i32** %16, align 8
  %153 = load i32*, i32** %17, align 8
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @cc_set_hash_buf(%struct.device* %150, %struct.ahash_req_ctx* %151, i32* %152, i32 %154, %struct.buffer_array* %23)
  store i32 %155, i32* %26, align 4
  %156 = load i32, i32* %26, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %149
  %159 = load i32, i32* %26, align 4
  store i32 %159, i32* %7, align 4
  br label %275

160:                                              ; preds = %149
  store i32 1, i32* %25, align 4
  br label %161

161:                                              ; preds = %160, %145
  %162 = load i32, i32* %21, align 4
  %163 = load i32*, i32** %17, align 8
  %164 = load i32, i32* %163, align 4
  %165 = icmp ugt i32 %162, %164
  br i1 %165, label %166, label %214

166:                                              ; preds = %161
  %167 = load %struct.device*, %struct.device** %15, align 8
  %168 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %169 = load i32, i32* %21, align 4
  %170 = load i32*, i32** %17, align 8
  %171 = load i32, i32* %170, align 4
  %172 = sub i32 %169, %171
  %173 = load i32, i32* @DMA_TO_DEVICE, align 4
  %174 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %175 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %174, i32 0, i32 2
  %176 = load i32, i32* @LLI_MAX_NUM_OF_DATA_ENTRIES, align 4
  %177 = call i32 @cc_map_sg(%struct.device* %167, %struct.scatterlist* %168, i32 %172, i32 %173, i32* %175, i32 %176, i32* %27, i32* %28)
  store i32 %177, i32* %26, align 4
  %178 = load i32, i32* %26, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %166
  br label %262

181:                                              ; preds = %166
  %182 = load i32, i32* %28, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %209

184:                                              ; preds = %181
  %185 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %186 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @CC_DMA_BUF_NULL, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %209

190:                                              ; preds = %184
  %191 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %192 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %191, i32 0, i32 3
  %193 = load %struct.scatterlist*, %struct.scatterlist** %192, align 8
  %194 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %195 = call i32 @memcpy(%struct.scatterlist* %193, %struct.scatterlist* %194, i32 4)
  %196 = load i32, i32* %21, align 4
  %197 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %198 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %197, i32 0, i32 3
  %199 = load %struct.scatterlist*, %struct.scatterlist** %198, align 8
  %200 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %199, i32 0, i32 0
  store i32 %196, i32* %200, align 4
  %201 = load i64, i64* @CC_DMA_BUF_DLLI, align 8
  %202 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %203 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %202, i32 0, i32 1
  store i64 %201, i64* %203, align 8
  %204 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %205 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %204, i32 0, i32 3
  %206 = load %struct.scatterlist*, %struct.scatterlist** %205, align 8
  %207 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %208 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %207, i32 0, i32 5
  store %struct.scatterlist* %206, %struct.scatterlist** %208, align 8
  br label %213

209:                                              ; preds = %184, %181
  %210 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %211 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %212 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %211, i32 0, i32 1
  store i64 %210, i64* %212, align 8
  br label %213

213:                                              ; preds = %209, %190
  br label %214

214:                                              ; preds = %213, %161
  %215 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %216 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %246

220:                                              ; preds = %214
  %221 = load %struct.buff_mgr_handle*, %struct.buff_mgr_handle** %24, align 8
  %222 = getelementptr inbounds %struct.buff_mgr_handle, %struct.buff_mgr_handle* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load %struct.mlli_params*, %struct.mlli_params** %20, align 8
  %225 = getelementptr inbounds %struct.mlli_params, %struct.mlli_params* %224, i32 0, i32 0
  store i32* %223, i32** %225, align 8
  %226 = load %struct.device*, %struct.device** %15, align 8
  %227 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %228 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %231 = load i32, i32* %21, align 4
  %232 = load i32*, i32** %17, align 8
  %233 = load i32, i32* %232, align 4
  %234 = sub i32 %231, %233
  %235 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %236 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %235, i32 0, i32 4
  %237 = call i32 @cc_add_sg_entry(%struct.device* %226, %struct.buffer_array* %23, i32 %229, %struct.scatterlist* %230, i32 %234, i32 0, i32 1, i32* %236)
  %238 = load %struct.device*, %struct.device** %15, align 8
  %239 = load %struct.mlli_params*, %struct.mlli_params** %20, align 8
  %240 = load i32, i32* %13, align 4
  %241 = call i32 @cc_generate_mlli(%struct.device* %238, %struct.buffer_array* %23, %struct.mlli_params* %239, i32 %240)
  store i32 %241, i32* %26, align 4
  %242 = load i32, i32* %26, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %220
  br label %254

245:                                              ; preds = %220
  br label %246

246:                                              ; preds = %245, %214
  %247 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %248 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* %25, align 4
  %251 = xor i32 %249, %250
  %252 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %253 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  store i32 0, i32* %7, align 4
  br label %275

254:                                              ; preds = %244
  %255 = load %struct.device*, %struct.device** %15, align 8
  %256 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %257 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %258 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @DMA_TO_DEVICE, align 4
  %261 = call i32 @dma_unmap_sg(%struct.device* %255, %struct.scatterlist* %256, i32 %259, i32 %260)
  br label %262

262:                                              ; preds = %254, %180
  %263 = load i32*, i32** %17, align 8
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %262
  %267 = load %struct.device*, %struct.device** %15, align 8
  %268 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %269 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %268, i32 0, i32 3
  %270 = load %struct.scatterlist*, %struct.scatterlist** %269, align 8
  %271 = load i32, i32* @DMA_TO_DEVICE, align 4
  %272 = call i32 @dma_unmap_sg(%struct.device* %267, %struct.scatterlist* %270, i32 1, i32 %271)
  br label %273

273:                                              ; preds = %266, %262
  %274 = load i32, i32* %26, align 4
  store i32 %274, i32* %7, align 4
  br label %275

275:                                              ; preds = %273, %246, %158, %74
  %276 = load i32, i32* %7, align 4
  ret i32 %276
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local i32* @cc_hash_buf(%struct.ahash_req_ctx*) #1

declare dso_local i32* @cc_hash_buf_cnt(%struct.ahash_req_ctx*) #1

declare dso_local i32* @cc_next_buf(%struct.ahash_req_ctx*) #1

declare dso_local i32* @cc_next_buf_cnt(%struct.ahash_req_ctx*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, ...) #1

declare dso_local i32 @sg_nents_for_len(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_copy_to_buffer(%struct.scatterlist*, i32, i32*, i32) #1

declare dso_local i32 @cc_copy_sg_portion(%struct.device*, i32*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @cc_set_hash_buf(%struct.device*, %struct.ahash_req_ctx*, i32*, i32, %struct.buffer_array*) #1

declare dso_local i32 @cc_map_sg(%struct.device*, %struct.scatterlist*, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @memcpy(%struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @cc_add_sg_entry(%struct.device*, %struct.buffer_array*, i32, %struct.scatterlist*, i32, i32, i32, i32*) #1

declare dso_local i32 @cc_generate_mlli(%struct.device*, %struct.buffer_array*, %struct.mlli_params*, i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
