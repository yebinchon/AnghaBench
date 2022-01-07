; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_map_cipher_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_map_cipher_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { %struct.buff_mgr_handle* }
%struct.buff_mgr_handle = type { i32* }
%struct.scatterlist = type { i32 }
%struct.cipher_req_ctx = type { i64, i32, i64, i32, i64, %struct.TYPE_2__, %struct.mlli_params }
%struct.TYPE_2__ = type { i64 }
%struct.mlli_params = type { i32* }
%struct.device = type { i32 }
%struct.buffer_array = type { i64 }

@CC_DMA_BUF_DLLI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"iv\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Mapping iv %u B at va=%pK for DMA failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Mapped iv %u B at va=%pK to dma=%pad\0A\00", align 1
@LLI_MAX_NUM_OF_DATA_ENTRIES = common dso_local global i32 0, align 4
@CC_DMA_BUF_MLLI = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"areq_ctx->dma_buf_type = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_map_cipher_request(%struct.cc_drvdata* %0, i8* %1, i32 %2, i32 %3, i8* %4, %struct.scatterlist* %5, %struct.scatterlist* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.cc_drvdata*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca %struct.scatterlist*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.cipher_req_ctx*, align 8
  %19 = alloca %struct.mlli_params*, align 8
  %20 = alloca %struct.buff_mgr_handle*, align 8
  %21 = alloca %struct.device*, align 8
  %22 = alloca %struct.buffer_array, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store %struct.scatterlist* %5, %struct.scatterlist** %15, align 8
  store %struct.scatterlist* %6, %struct.scatterlist** %16, align 8
  store i32 %7, i32* %17, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = bitcast i8* %26 to %struct.cipher_req_ctx*
  store %struct.cipher_req_ctx* %27, %struct.cipher_req_ctx** %18, align 8
  %28 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %29 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %28, i32 0, i32 6
  store %struct.mlli_params* %29, %struct.mlli_params** %19, align 8
  %30 = load %struct.cc_drvdata*, %struct.cc_drvdata** %10, align 8
  %31 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %30, i32 0, i32 0
  %32 = load %struct.buff_mgr_handle*, %struct.buff_mgr_handle** %31, align 8
  store %struct.buff_mgr_handle* %32, %struct.buff_mgr_handle** %20, align 8
  %33 = load %struct.cc_drvdata*, %struct.cc_drvdata** %10, align 8
  %34 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %33)
  store %struct.device* %34, %struct.device** %21, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %35 = load i64, i64* @CC_DMA_BUF_DLLI, align 8
  %36 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %37 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.mlli_params*, %struct.mlli_params** %19, align 8
  %39 = getelementptr inbounds %struct.mlli_params, %struct.mlli_params* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %22, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %8
  %44 = load i8*, i8** %14, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @dump_byte_array(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %45, i32 %46)
  %48 = load %struct.device*, %struct.device** %21, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %52 = call i64 @dma_map_single(%struct.device* %48, i8* %49, i32 %50, i32 %51)
  %53 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %54 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.device*, %struct.device** %21, align 8
  %57 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %58 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @dma_mapping_error(%struct.device* %56, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %43
  %64 = load %struct.device*, %struct.device** %21, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i8*, i8** %14, align 8
  %67 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %65, i8* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %204

70:                                               ; preds = %43
  %71 = load %struct.device*, %struct.device** %21, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i8*, i8** %14, align 8
  %74 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %75 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %72, i8* %73, i64* %76)
  br label %82

78:                                               ; preds = %8
  %79 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %80 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %70
  %83 = load %struct.device*, %struct.device** %21, align 8
  %84 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %87 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %88 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %87, i32 0, i32 4
  %89 = load i32, i32* @LLI_MAX_NUM_OF_DATA_ENTRIES, align 4
  %90 = call i32 @cc_map_sg(%struct.device* %83, %struct.scatterlist* %84, i32 %85, i32 %86, i64* %88, i32 %89, i32* %23, i32* %25)
  store i32 %90, i32* %24, align 4
  %91 = load i32, i32* %24, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %196

94:                                               ; preds = %82
  %95 = load i32, i32* %25, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %99 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %100 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %94
  %102 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %103 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %104 = icmp eq %struct.scatterlist* %102, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %101
  %106 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %107 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %105
  %112 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %113 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  %114 = load %struct.device*, %struct.device** %21, align 8
  %115 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %116 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %121 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %120, i32 0, i32 3
  %122 = call i32 @cc_add_sg_entry(%struct.device* %114, %struct.buffer_array* %22, i64 %117, %struct.scatterlist* %118, i32 %119, i32 0, i32 1, i32* %121)
  br label %123

123:                                              ; preds = %111, %105
  br label %169

124:                                              ; preds = %101
  %125 = load %struct.device*, %struct.device** %21, align 8
  %126 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %129 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %130 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %129, i32 0, i32 2
  %131 = load i32, i32* @LLI_MAX_NUM_OF_DATA_ENTRIES, align 4
  %132 = call i32 @cc_map_sg(%struct.device* %125, %struct.scatterlist* %126, i32 %127, i32 %128, i64* %130, i32 %131, i32* %23, i32* %25)
  store i32 %132, i32* %24, align 4
  %133 = load i32, i32* %24, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  br label %196

136:                                              ; preds = %124
  %137 = load i32, i32* %25, align 4
  %138 = icmp sgt i32 %137, 1
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %141 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %142 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %139, %136
  %144 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %145 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %168

149:                                              ; preds = %143
  %150 = load %struct.device*, %struct.device** %21, align 8
  %151 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %152 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %155 = load i32, i32* %13, align 4
  %156 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %157 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %156, i32 0, i32 3
  %158 = call i32 @cc_add_sg_entry(%struct.device* %150, %struct.buffer_array* %22, i64 %153, %struct.scatterlist* %154, i32 %155, i32 0, i32 1, i32* %157)
  %159 = load %struct.device*, %struct.device** %21, align 8
  %160 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %161 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %166 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %165, i32 0, i32 1
  %167 = call i32 @cc_add_sg_entry(%struct.device* %159, %struct.buffer_array* %22, i64 %162, %struct.scatterlist* %163, i32 %164, i32 0, i32 1, i32* %166)
  br label %168

168:                                              ; preds = %149, %143
  br label %169

169:                                              ; preds = %168, %123
  %170 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %171 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %169
  %176 = load %struct.buff_mgr_handle*, %struct.buff_mgr_handle** %20, align 8
  %177 = getelementptr inbounds %struct.buff_mgr_handle, %struct.buff_mgr_handle* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.mlli_params*, %struct.mlli_params** %19, align 8
  %180 = getelementptr inbounds %struct.mlli_params, %struct.mlli_params* %179, i32 0, i32 0
  store i32* %178, i32** %180, align 8
  %181 = load %struct.device*, %struct.device** %21, align 8
  %182 = load %struct.mlli_params*, %struct.mlli_params** %19, align 8
  %183 = load i32, i32* %17, align 4
  %184 = call i32 @cc_generate_mlli(%struct.device* %181, %struct.buffer_array* %22, %struct.mlli_params* %182, i32 %183)
  store i32 %184, i32* %24, align 4
  %185 = load i32, i32* %24, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %175
  br label %196

188:                                              ; preds = %175
  br label %189

189:                                              ; preds = %188, %169
  %190 = load %struct.device*, %struct.device** %21, align 8
  %191 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %192 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @cc_dma_buf_type(i64 %193)
  %195 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %190, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  store i32 0, i32* %9, align 4
  br label %204

196:                                              ; preds = %187, %135, %93
  %197 = load %struct.device*, %struct.device** %21, align 8
  %198 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %18, align 8
  %199 = load i32, i32* %12, align 4
  %200 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %201 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %202 = call i32 @cc_unmap_cipher_request(%struct.device* %197, %struct.cipher_req_ctx* %198, i32 %199, %struct.scatterlist* %200, %struct.scatterlist* %201)
  %203 = load i32, i32* %24, align 4
  store i32 %203, i32* %9, align 4
  br label %204

204:                                              ; preds = %196, %189, %63
  %205 = load i32, i32* %9, align 4
  ret i32 %205
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local i32 @dump_byte_array(i8*, i32*, i32) #1

declare dso_local i64 @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @cc_map_sg(%struct.device*, %struct.scatterlist*, i32, i32, i64*, i32, i32*, i32*) #1

declare dso_local i32 @cc_add_sg_entry(%struct.device*, %struct.buffer_array*, i64, %struct.scatterlist*, i32, i32, i32, i32*) #1

declare dso_local i32 @cc_generate_mlli(%struct.device*, %struct.buffer_array*, %struct.mlli_params*, i32) #1

declare dso_local i32 @cc_dma_buf_type(i64) #1

declare dso_local i32 @cc_unmap_cipher_request(%struct.device*, %struct.cipher_req_ctx*, i32, %struct.scatterlist*, %struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
