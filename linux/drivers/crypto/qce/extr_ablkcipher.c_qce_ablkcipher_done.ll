; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_ablkcipher.c_qce_ablkcipher_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_ablkcipher.c_qce_ablkcipher_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.ablkcipher_request = type { i64, i64 }
%struct.qce_cipher_reqctx = type { i32, i32, i32, i32, i32 }
%struct.qce_alg_template = type { %struct.qce_device* }
%struct.qce_device = type { i32 (%struct.qce_device*, i32)*, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ablkcipher dma termination error (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ablkcipher operation error (%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @qce_ablkcipher_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qce_ablkcipher_done(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca %struct.qce_cipher_reqctx*, align 8
  %6 = alloca %struct.qce_alg_template*, align 8
  %7 = alloca %struct.qce_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.crypto_async_request*
  store %struct.crypto_async_request* %14, %struct.crypto_async_request** %3, align 8
  %15 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %16 = call %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request* %15)
  store %struct.ablkcipher_request* %16, %struct.ablkcipher_request** %4, align 8
  %17 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %18 = call %struct.qce_cipher_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %17)
  store %struct.qce_cipher_reqctx* %18, %struct.qce_cipher_reqctx** %5, align 8
  %19 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %20 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.qce_alg_template* @to_cipher_tmpl(i32 %21)
  store %struct.qce_alg_template* %22, %struct.qce_alg_template** %6, align 8
  %23 = load %struct.qce_alg_template*, %struct.qce_alg_template** %6, align 8
  %24 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %23, i32 0, i32 0
  %25 = load %struct.qce_device*, %struct.qce_device** %24, align 8
  store %struct.qce_device* %25, %struct.qce_device** %7, align 8
  %26 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %27 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %30 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %9, align 4
  %51 = load %struct.qce_device*, %struct.qce_device** %7, align 8
  %52 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %51, i32 0, i32 2
  %53 = call i32 @qce_dma_terminate_all(i32* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.qce_device*, %struct.qce_device** %7, align 8
  %58 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %49
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load %struct.qce_device*, %struct.qce_device** %7, align 8
  %67 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %70 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %73 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @dma_unmap_sg(i32 %68, i32 %71, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %65, %62
  %78 = load %struct.qce_device*, %struct.qce_device** %7, align 8
  %79 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %82 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %85 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @dma_unmap_sg(i32 %80, i32 %83, i32 %86, i32 %87)
  %89 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %90 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %89, i32 0, i32 0
  %91 = call i32 @sg_free_table(i32* %90)
  %92 = load %struct.qce_device*, %struct.qce_device** %7, align 8
  %93 = call i32 @qce_check_status(%struct.qce_device* %92, i32* %10)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %77
  %97 = load %struct.qce_device*, %struct.qce_device** %7, align 8
  %98 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @dev_dbg(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %96, %77
  %103 = load %struct.qce_device*, %struct.qce_device** %7, align 8
  %104 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %103, i32 0, i32 0
  %105 = load i32 (%struct.qce_device*, i32)*, i32 (%struct.qce_device*, i32)** %104, align 8
  %106 = load %struct.qce_alg_template*, %struct.qce_alg_template** %6, align 8
  %107 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %106, i32 0, i32 0
  %108 = load %struct.qce_device*, %struct.qce_device** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 %105(%struct.qce_device* %108, i32 %109)
  ret void
}

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.qce_cipher_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local %struct.qce_alg_template* @to_cipher_tmpl(i32) #1

declare dso_local i32 @qce_dma_terminate_all(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @sg_free_table(i32*) #1

declare dso_local i32 @qce_check_status(%struct.qce_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
