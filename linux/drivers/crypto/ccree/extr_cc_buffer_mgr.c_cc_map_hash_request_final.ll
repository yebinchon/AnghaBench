; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_map_hash_request_final.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_map_hash_request_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { %struct.buff_mgr_handle* }
%struct.buff_mgr_handle = type { i32* }
%struct.scatterlist = type { i32 }
%struct.ahash_req_ctx = type { i32, i64, i32, %struct.scatterlist*, i32, %struct.scatterlist*, %struct.mlli_params }
%struct.mlli_params = type { i32* }
%struct.device = type { i32 }
%struct.buffer_array = type { i64 }

@.str = private unnamed_addr constant [85 x i8] c"final params : curr_buff=%pK curr_buff_cnt=0x%X nbytes = 0x%X src=%pK curr_index=%u\0A\00", align 1
@CC_DMA_BUF_NULL = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@LLI_MAX_NUM_OF_DATA_ENTRIES = common dso_local global i32 0, align 4
@CC_DMA_BUF_DLLI = common dso_local global i64 0, align 8
@CC_DMA_BUF_MLLI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"areq_ctx->data_dma_buf_type = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_map_hash_request_final(%struct.cc_drvdata* %0, i8* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %17 = alloca i64*, align 8
  %18 = alloca %struct.mlli_params*, align 8
  %19 = alloca %struct.buffer_array, align 8
  %20 = alloca %struct.buff_mgr_handle*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to %struct.ahash_req_ctx*
  store %struct.ahash_req_ctx* %25, %struct.ahash_req_ctx** %14, align 8
  %26 = load %struct.cc_drvdata*, %struct.cc_drvdata** %8, align 8
  %27 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %26)
  store %struct.device* %27, %struct.device** %15, align 8
  %28 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %29 = call i32* @cc_hash_buf(%struct.ahash_req_ctx* %28)
  store i32* %29, i32** %16, align 8
  %30 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %31 = call i64* @cc_hash_buf_cnt(%struct.ahash_req_ctx* %30)
  store i64* %31, i64** %17, align 8
  %32 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %33 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %32, i32 0, i32 6
  store %struct.mlli_params* %33, %struct.mlli_params** %18, align 8
  %34 = load %struct.cc_drvdata*, %struct.cc_drvdata** %8, align 8
  %35 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %34, i32 0, i32 0
  %36 = load %struct.buff_mgr_handle*, %struct.buff_mgr_handle** %35, align 8
  store %struct.buff_mgr_handle* %36, %struct.buff_mgr_handle** %20, align 8
  store i32 0, i32* %21, align 4
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  %37 = load %struct.device*, %struct.device** %15, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = ptrtoint i32* %38 to i32
  %40 = load i64*, i64** %17, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %44 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %45 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %37, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %41, i32 %42, %struct.scatterlist* %43, i32 %46)
  %48 = load i64, i64* @CC_DMA_BUF_NULL, align 8
  %49 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %50 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.mlli_params*, %struct.mlli_params** %18, align 8
  %52 = getelementptr inbounds %struct.mlli_params, %struct.mlli_params* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  %53 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %19, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %55 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %6
  %59 = load i64*, i64** %17, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %199

63:                                               ; preds = %58, %6
  %64 = load i64*, i64** %17, align 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load %struct.device*, %struct.device** %15, align 8
  %69 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %70 = load i32*, i32** %16, align 8
  %71 = load i64*, i64** %17, align 8
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @cc_set_hash_buf(%struct.device* %68, %struct.ahash_req_ctx* %69, i32* %70, i64 %72, %struct.buffer_array* %19)
  store i32 %73, i32* %21, align 4
  %74 = load i32, i32* %21, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* %21, align 4
  store i32 %77, i32* %7, align 4
  br label %199

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %63
  %80 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %81 = icmp ne %struct.scatterlist* %80, null
  br i1 %81, label %82, label %136

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = icmp ugt i32 %83, 0
  br i1 %84, label %85, label %136

85:                                               ; preds = %82
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %136

88:                                               ; preds = %85
  %89 = load %struct.device*, %struct.device** %15, align 8
  %90 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @DMA_TO_DEVICE, align 4
  %93 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %94 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %93, i32 0, i32 2
  %95 = load i32, i32* @LLI_MAX_NUM_OF_DATA_ENTRIES, align 4
  %96 = call i32 @cc_map_sg(%struct.device* %89, %struct.scatterlist* %90, i32 %91, i32 %92, i32* %94, i32 %95, i64* %22, i64* %23)
  store i32 %96, i32* %21, align 4
  %97 = load i32, i32* %21, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %186

100:                                              ; preds = %88
  %101 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %102 = icmp ne %struct.scatterlist* %101, null
  br i1 %102, label %103, label %131

103:                                              ; preds = %100
  %104 = load i64, i64* %23, align 8
  %105 = icmp eq i64 %104, 1
  br i1 %105, label %106, label %131

106:                                              ; preds = %103
  %107 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %108 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @CC_DMA_BUF_NULL, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %131

112:                                              ; preds = %106
  %113 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %114 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %113, i32 0, i32 3
  %115 = load %struct.scatterlist*, %struct.scatterlist** %114, align 8
  %116 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %117 = call i32 @memcpy(%struct.scatterlist* %115, %struct.scatterlist* %116, i32 4)
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %120 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %119, i32 0, i32 3
  %121 = load %struct.scatterlist*, %struct.scatterlist** %120, align 8
  %122 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 4
  %123 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %124 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %123, i32 0, i32 3
  %125 = load %struct.scatterlist*, %struct.scatterlist** %124, align 8
  %126 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %127 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %126, i32 0, i32 5
  store %struct.scatterlist* %125, %struct.scatterlist** %127, align 8
  %128 = load i64, i64* @CC_DMA_BUF_DLLI, align 8
  %129 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %130 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  br label %135

131:                                              ; preds = %106, %103, %100
  %132 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %133 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %134 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %112
  br label %136

136:                                              ; preds = %135, %85, %82, %79
  %137 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %138 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %165

142:                                              ; preds = %136
  %143 = load %struct.buff_mgr_handle*, %struct.buff_mgr_handle** %20, align 8
  %144 = getelementptr inbounds %struct.buff_mgr_handle, %struct.buff_mgr_handle* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.mlli_params*, %struct.mlli_params** %18, align 8
  %147 = getelementptr inbounds %struct.mlli_params, %struct.mlli_params* %146, i32 0, i32 0
  store i32* %145, i32** %147, align 8
  %148 = load %struct.device*, %struct.device** %15, align 8
  %149 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %150 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %155 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %154, i32 0, i32 4
  %156 = call i32 @cc_add_sg_entry(%struct.device* %148, %struct.buffer_array* %19, i32 %151, %struct.scatterlist* %152, i32 %153, i32 0, i32 1, i32* %155)
  %157 = load %struct.device*, %struct.device** %15, align 8
  %158 = load %struct.mlli_params*, %struct.mlli_params** %18, align 8
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @cc_generate_mlli(%struct.device* %157, %struct.buffer_array* %19, %struct.mlli_params* %158, i32 %159)
  store i32 %160, i32* %21, align 4
  %161 = load i32, i32* %21, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %142
  br label %178

164:                                              ; preds = %142
  br label %165

165:                                              ; preds = %164, %136
  %166 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %167 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = xor i32 %168, 1
  %170 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %171 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.device*, %struct.device** %15, align 8
  %173 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %174 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @cc_dma_buf_type(i64 %175)
  %177 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %172, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %176)
  store i32 0, i32* %7, align 4
  br label %199

178:                                              ; preds = %163
  %179 = load %struct.device*, %struct.device** %15, align 8
  %180 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %181 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %182 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @DMA_TO_DEVICE, align 4
  %185 = call i32 @dma_unmap_sg(%struct.device* %179, %struct.scatterlist* %180, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %178, %99
  %187 = load i64*, i64** %17, align 8
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = load %struct.device*, %struct.device** %15, align 8
  %192 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %14, align 8
  %193 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %192, i32 0, i32 3
  %194 = load %struct.scatterlist*, %struct.scatterlist** %193, align 8
  %195 = load i32, i32* @DMA_TO_DEVICE, align 4
  %196 = call i32 @dma_unmap_sg(%struct.device* %191, %struct.scatterlist* %194, i32 1, i32 %195)
  br label %197

197:                                              ; preds = %190, %186
  %198 = load i32, i32* %21, align 4
  store i32 %198, i32* %7, align 4
  br label %199

199:                                              ; preds = %197, %165, %76, %62
  %200 = load i32, i32* %7, align 4
  ret i32 %200
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local i32* @cc_hash_buf(%struct.ahash_req_ctx*) #1

declare dso_local i64* @cc_hash_buf_cnt(%struct.ahash_req_ctx*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @cc_set_hash_buf(%struct.device*, %struct.ahash_req_ctx*, i32*, i64, %struct.buffer_array*) #1

declare dso_local i32 @cc_map_sg(%struct.device*, %struct.scatterlist*, i32, i32, i32*, i32, i64*, i64*) #1

declare dso_local i32 @memcpy(%struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @cc_add_sg_entry(%struct.device*, %struct.buffer_array*, i32, %struct.scatterlist*, i32, i32, i32, i32*) #1

declare dso_local i32 @cc_generate_mlli(%struct.device*, %struct.buffer_array*, %struct.mlli_params*, i32) #1

declare dso_local i32 @cc_dma_buf_type(i64) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
