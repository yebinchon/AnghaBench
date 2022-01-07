; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_unmap_cipher_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_unmap_cipher_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32 }
%struct.cipher_req_ctx = type { i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"Unmapped iv: iv_dma_addr=%pad iv_size=%u\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@CC_DMA_BUF_MLLI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Unmapped req->src=%pK\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unmapped req->dst=%pK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_unmap_cipher_request(%struct.device* %0, i8* %1, i32 %2, %struct.scatterlist* %3, %struct.scatterlist* %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.cipher_req_ctx*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %4, %struct.scatterlist** %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.cipher_req_ctx*
  store %struct.cipher_req_ctx* %13, %struct.cipher_req_ctx** %11, align 8
  %14 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %11, align 8
  %15 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %5
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %11, align 8
  %22 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = ptrtoint i64* %23 to i32
  %25 = load i32, i32* %8, align 4
  %26 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %11, align 8
  %29 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %34 = call i32 @dma_unmap_single(%struct.device* %27, i64 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %19, %5
  %36 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %11, align 8
  %37 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %11, align 8
  %43 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %11, align 8
  %49 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %11, align 8
  %53 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %11, align 8
  %57 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dma_pool_free(i32 %51, i64 %55, i32 %59)
  br label %61

61:                                               ; preds = %47, %41, %35
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %64 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %11, align 8
  %65 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %68 = call i32 @dma_unmap_sg(%struct.device* %62, %struct.scatterlist* %63, i32 %66, i32 %67)
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %71 = call i32 @sg_virt(%struct.scatterlist* %70)
  %72 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %74 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %75 = icmp ne %struct.scatterlist* %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %61
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %79 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %11, align 8
  %80 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %83 = call i32 @dma_unmap_sg(%struct.device* %77, %struct.scatterlist* %78, i32 %81, i32 %82)
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %86 = call i32 @sg_virt(%struct.scatterlist* %85)
  %87 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %76, %61
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @dma_pool_free(i32, i64, i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_virt(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
