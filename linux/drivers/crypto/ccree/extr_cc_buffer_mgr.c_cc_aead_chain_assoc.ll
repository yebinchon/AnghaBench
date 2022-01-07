; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_aead_chain_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_aead_chain_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i32 }
%struct.aead_request = type { i32 }
%struct.buffer_array = type { i32 }
%struct.aead_req_ctx = type { i32, i64, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.crypto_aead = type { i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CC_DMA_BUF_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Chain assoc of length 0: buff_type=%s nents=%u\0A\00", align 1
@LLI_MAX_NUM_OF_ASSOC_DATA_ENTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Too many fragments. current %d max %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ccm_header_size_null = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"CCM case.Too many fragments. Current %d max %d\0A\00", align 1
@CC_DMA_BUF_DLLI = common dso_local global i64 0, align 8
@CC_DMA_BUF_MLLI = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Chain assoc: buff_type=%s nents=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_drvdata*, %struct.aead_request*, %struct.buffer_array*, i32, i32)* @cc_aead_chain_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_aead_chain_assoc(%struct.cc_drvdata* %0, %struct.aead_request* %1, %struct.buffer_array* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cc_drvdata*, align 8
  %8 = alloca %struct.aead_request*, align 8
  %9 = alloca %struct.buffer_array*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.aead_req_ctx*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.crypto_aead*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.device*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %7, align 8
  store %struct.aead_request* %1, %struct.aead_request** %8, align 8
  store %struct.buffer_array* %2, %struct.buffer_array** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %19 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %18)
  store %struct.aead_req_ctx* %19, %struct.aead_req_ctx** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %21 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %20)
  store %struct.crypto_aead* %21, %struct.crypto_aead** %15, align 8
  %22 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %23 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %16, align 4
  %25 = load %struct.cc_drvdata*, %struct.cc_drvdata** %7, align 8
  %26 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %25)
  store %struct.device* %26, %struct.device** %17, align 8
  %27 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %28 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %5
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %15, align 8
  %33 = call i64 @crypto_aead_ivsize(%struct.crypto_aead* %32)
  %34 = load i32, i32* %16, align 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %16, align 4
  br label %38

38:                                               ; preds = %31, %5
  %39 = load %struct.buffer_array*, %struct.buffer_array** %9, align 8
  %40 = icmp ne %struct.buffer_array* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %13, align 4
  br label %175

44:                                               ; preds = %38
  %45 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %46 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load i64, i64* @CC_DMA_BUF_NULL, align 8
  %51 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %52 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %54 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %57 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.device*, %struct.device** %17, align 8
  %60 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %61 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @cc_dma_buf_type(i64 %62)
  %64 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %65 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_dbg(%struct.device* %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %67)
  br label %175

69:                                               ; preds = %44
  %70 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %71 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @sg_nents_for_len(i32 %72, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %6, align 4
  br label %177

79:                                               ; preds = %69
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @LLI_MAX_NUM_OF_ASSOC_DATA_ENTRIES, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.device*, %struct.device** %17, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @LLI_MAX_NUM_OF_ASSOC_DATA_ENTRIES, align 4
  %87 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %177

90:                                               ; preds = %79
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %93 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %96 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ccm_header_size_null, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %90
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i32, i32* @LLI_MAX_NUM_OF_ASSOC_DATA_ENTRIES, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load %struct.device*, %struct.device** %17, align 8
  %107 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %108 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  %112 = load i32, i32* @LLI_MAX_NUM_OF_ASSOC_DATA_ENTRIES, align 4
  %113 = call i32 @dev_err(%struct.device* %106, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %13, align 4
  br label %175

116:                                              ; preds = %100
  br label %117

117:                                              ; preds = %116, %90
  %118 = load i32, i32* %14, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %122 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @ccm_header_size_null, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i64, i64* @CC_DMA_BUF_DLLI, align 8
  %128 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %129 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  br label %134

130:                                              ; preds = %120, %117
  %131 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %132 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %133 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %130, %126
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %139 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %174

143:                                              ; preds = %137, %134
  %144 = load %struct.device*, %struct.device** %17, align 8
  %145 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %146 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @cc_dma_buf_type(i64 %147)
  %149 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %150 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @dev_dbg(%struct.device* %144, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %148, i32 %152)
  %154 = load %struct.device*, %struct.device** %17, align 8
  %155 = load %struct.buffer_array*, %struct.buffer_array** %9, align 8
  %156 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %157 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %161 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %164 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %168 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = call i32 @cc_add_sg_entry(%struct.device* %154, %struct.buffer_array* %155, i32 %159, i32 %162, i32 %165, i32 0, i32 %166, i64* %169)
  %171 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %172 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %173 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %172, i32 0, i32 1
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %143, %137
  br label %175

175:                                              ; preds = %174, %105, %49, %41
  %176 = load i32, i32* %13, align 4
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %175, %83, %77
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local i64 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @cc_dma_buf_type(i64) #1

declare dso_local i32 @sg_nents_for_len(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @cc_add_sg_entry(%struct.device*, %struct.buffer_array*, i32, i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
