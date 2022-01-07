; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.aead_request = type { i32, i32, i64, i64 }
%struct.chcr_aead_reqctx = type { i64, i32 }
%struct.crypto_aead = type { i32 }

@IV = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chcr_aead_dma_unmap(%struct.device* %0, %struct.aead_request* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.chcr_aead_reqctx*, align 8
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.aead_request* %1, %struct.aead_request** %5, align 8
  store i16 %2, i16* %6, align 2
  %11 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %12 = call %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request* %11)
  store %struct.chcr_aead_reqctx* %12, %struct.chcr_aead_reqctx** %7, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %14 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %13)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %8, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %16 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %18 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %21 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add i32 %19, %22
  %24 = load i16, i16* %6, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = sub i32 0, %28
  br label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %29, %27 ], [ %31, %30 ]
  %34 = add i32 %23, %33
  store i32 %34, i32* %10, align 4
  %35 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %36 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %32
  br label %94

43:                                               ; preds = %39
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %7, align 8
  %46 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* @IV, align 8
  %49 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %7, align 8
  %50 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %54 = call i32 @dma_unmap_single(%struct.device* %44, i32 %47, i64 %52, i32 %53)
  %55 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %56 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %59 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %43
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %65 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %68 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @sg_nents(i64 %69)
  %71 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %72 = call i32 @dma_unmap_sg(%struct.device* %63, i64 %66, i32 %70, i32 %71)
  br label %94

73:                                               ; preds = %43
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %76 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %79 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @sg_nents(i64 %80)
  %82 = load i32, i32* @DMA_TO_DEVICE, align 4
  %83 = call i32 @dma_unmap_sg(%struct.device* %74, i64 %77, i32 %81, i32 %82)
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %86 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %89 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @sg_nents(i64 %90)
  %92 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %93 = call i32 @dma_unmap_sg(%struct.device* %84, i64 %87, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %42, %73, %62
  ret void
}

declare dso_local %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @sg_nents(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
