; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_chan_memcpy_self_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_chan_memcpy_self_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_chan = type { %struct.dma_chan }
%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dma_async_tx_descriptor = type { i32 }
%struct.dmaengine_unmap_data = type { i32, i32, i32, i8** }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Self-test cannot prepare operation, disabling\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Self-test submit error, disabling\0A\00", align 1
@DMA_COMPLETE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Self-test copy timed out, disabling\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Self-test copy failed compare, disabling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_xor_chan*)* @mv_chan_memcpy_self_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_chan_memcpy_self_test(%struct.mv_xor_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv_xor_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dma_chan*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_async_tx_descriptor*, align 8
  %13 = alloca %struct.dmaengine_unmap_data*, align 8
  %14 = alloca i32, align 4
  store %struct.mv_xor_chan* %0, %struct.mv_xor_chan** %3, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kmalloc(i32 %15, i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %227

23:                                               ; preds = %1
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 %24, i32 %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @kfree(i8* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %227

34:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = load i8*, i8** %6, align 8
  %43 = bitcast i8* %42 to i64*
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 %41, i64* %46, align 8
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %35

50:                                               ; preds = %35
  %51 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %3, align 8
  %52 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %51, i32 0, i32 0
  store %struct.dma_chan* %52, %struct.dma_chan** %10, align 8
  %53 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %54 = call i32 @mv_xor_alloc_chan_resources(%struct.dma_chan* %53)
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %14, align 4
  br label %221

59:                                               ; preds = %50
  %60 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %61 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.dmaengine_unmap_data* @dmaengine_get_unmap_data(i32 %64, i32 2, i32 %65)
  store %struct.dmaengine_unmap_data* %66, %struct.dmaengine_unmap_data** %13, align 8
  %67 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %68 = icmp ne %struct.dmaengine_unmap_data* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %59
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %14, align 4
  br label %216

72:                                               ; preds = %59
  %73 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %74 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @virt_to_page(i8* %78)
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @offset_in_page(i8* %80)
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = load i32, i32* @DMA_TO_DEVICE, align 4
  %84 = call i8* @dma_map_page(i32 %77, i32 %79, i32 %81, i32 %82, i32 %83)
  store i8* %84, i8** %8, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %87 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %86, i32 0, i32 3
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  store i8* %85, i8** %89, align 8
  %90 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %91 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @dma_mapping_error(i32 %94, i8* %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %72
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %14, align 4
  br label %216

102:                                              ; preds = %72
  %103 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %104 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %106 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @virt_to_page(i8* %110)
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @offset_in_page(i8* %112)
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %116 = call i8* @dma_map_page(i32 %109, i32 %111, i32 %113, i32 %114, i32 %115)
  store i8* %116, i8** %9, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %119 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %118, i32 0, i32 3
  %120 = load i8**, i8*** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 1
  store i8* %117, i8** %121, align 8
  %122 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %123 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i8*, i8** %9, align 8
  %128 = call i32 @dma_mapping_error(i32 %126, i8* %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %102
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %14, align 4
  br label %216

134:                                              ; preds = %102
  %135 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %136 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  %137 = load i32, i32* @PAGE_SIZE, align 4
  %138 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %139 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* @PAGE_SIZE, align 4
  %144 = call %struct.dma_async_tx_descriptor* @mv_xor_prep_dma_memcpy(%struct.dma_chan* %140, i8* %141, i8* %142, i32 %143, i32 0)
  store %struct.dma_async_tx_descriptor* %144, %struct.dma_async_tx_descriptor** %12, align 8
  %145 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %146 = icmp ne %struct.dma_async_tx_descriptor* %145, null
  br i1 %146, label %156, label %147

147:                                              ; preds = %134
  %148 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %149 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @dev_err(i32 %152, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %154 = load i32, i32* @ENODEV, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %14, align 4
  br label %216

156:                                              ; preds = %134
  %157 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %158 = call i32 @mv_xor_tx_submit(%struct.dma_async_tx_descriptor* %157)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = call i64 @dma_submit_error(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %156
  %163 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %164 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %163, i32 0, i32 0
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @dev_err(i32 %167, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %169 = load i32, i32* @ENODEV, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %14, align 4
  br label %216

171:                                              ; preds = %156
  %172 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %173 = call i32 @mv_xor_issue_pending(%struct.dma_chan* %172)
  %174 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %175 = call i32 @async_tx_ack(%struct.dma_async_tx_descriptor* %174)
  %176 = call i32 @msleep(i32 1)
  %177 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %178 = load i32, i32* %11, align 4
  %179 = call i64 @mv_xor_status(%struct.dma_chan* %177, i32 %178, i32* null)
  %180 = load i64, i64* @DMA_COMPLETE, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %171
  %183 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %184 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %183, i32 0, i32 0
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @dev_err(i32 %187, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %189 = load i32, i32* @ENODEV, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %14, align 4
  br label %216

191:                                              ; preds = %171
  %192 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %193 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %192, i32 0, i32 0
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i8*, i8** %9, align 8
  %198 = load i32, i32* @PAGE_SIZE, align 4
  %199 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %200 = call i32 @dma_sync_single_for_cpu(i32 %196, i8* %197, i32 %198, i32 %199)
  %201 = load i8*, i8** %6, align 8
  %202 = load i8*, i8** %7, align 8
  %203 = load i32, i32* @PAGE_SIZE, align 4
  %204 = call i64 @memcmp(i8* %201, i8* %202, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %191
  %207 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %208 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %207, i32 0, i32 0
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @dev_err(i32 %211, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %213 = load i32, i32* @ENODEV, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %14, align 4
  br label %216

215:                                              ; preds = %191
  br label %216

216:                                              ; preds = %215, %206, %182, %162, %147, %131, %99, %69
  %217 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %218 = call i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data* %217)
  %219 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %220 = call i32 @mv_xor_free_chan_resources(%struct.dma_chan* %219)
  br label %221

221:                                              ; preds = %216, %56
  %222 = load i8*, i8** %6, align 8
  %223 = call i32 @kfree(i8* %222)
  %224 = load i8*, i8** %7, align 8
  %225 = call i32 @kfree(i8* %224)
  %226 = load i32, i32* %14, align 4
  store i32 %226, i32* %2, align 4
  br label %227

227:                                              ; preds = %221, %29, %20
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mv_xor_alloc_chan_resources(%struct.dma_chan*) #1

declare dso_local %struct.dmaengine_unmap_data* @dmaengine_get_unmap_data(i32, i32, i32) #1

declare dso_local i8* @dma_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @offset_in_page(i8*) #1

declare dso_local i32 @dma_mapping_error(i32, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @mv_xor_prep_dma_memcpy(%struct.dma_chan*, i8*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mv_xor_tx_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i64 @dma_submit_error(i32) #1

declare dso_local i32 @mv_xor_issue_pending(%struct.dma_chan*) #1

declare dso_local i32 @async_tx_ack(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @mv_xor_status(%struct.dma_chan*, i32, i32*) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i8*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data*) #1

declare dso_local i32 @mv_xor_free_chan_resources(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
