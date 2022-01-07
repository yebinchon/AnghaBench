; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_aead_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_aead_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.aead_edesc = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.caam_ctx = type { i32, i32*, i32* }
%struct.caam_request = type { %struct.aead_edesc*, %struct.TYPE_2__*, i32, i32, i32* }

@DECRYPT = common dso_local global i64 0, align 8
@aead_decrypt_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @aead_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_decrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.aead_edesc*, align 8
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca %struct.caam_ctx*, align 8
  %7 = alloca %struct.caam_request*, align 8
  %8 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %9 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %10 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %9)
  store %struct.crypto_aead* %10, %struct.crypto_aead** %5, align 8
  %11 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %12 = call %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead* %11)
  store %struct.caam_ctx* %12, %struct.caam_ctx** %6, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %14 = call %struct.caam_request* @aead_request_ctx(%struct.aead_request* %13)
  store %struct.caam_request* %14, %struct.caam_request** %7, align 8
  %15 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %16 = call %struct.aead_edesc* @aead_edesc_alloc(%struct.aead_request* %15, i32 0)
  store %struct.aead_edesc* %16, %struct.aead_edesc** %4, align 8
  %17 = load %struct.aead_edesc*, %struct.aead_edesc** %4, align 8
  %18 = call i64 @IS_ERR(%struct.aead_edesc* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.aead_edesc*, %struct.aead_edesc** %4, align 8
  %22 = call i32 @PTR_ERR(%struct.aead_edesc* %21)
  store i32 %22, i32* %2, align 4
  br label %82

23:                                               ; preds = %1
  %24 = load %struct.caam_ctx*, %struct.caam_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @DECRYPT, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %30 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %29, i32 0, i32 4
  store i32* %28, i32** %30, align 8
  %31 = load %struct.caam_ctx*, %struct.caam_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @DECRYPT, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %38 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @aead_decrypt_done, align 4
  %40 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %41 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 0
  %44 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %45 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %44, i32 0, i32 1
  store %struct.TYPE_2__* %43, %struct.TYPE_2__** %45, align 8
  %46 = load %struct.aead_edesc*, %struct.aead_edesc** %4, align 8
  %47 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %48 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %47, i32 0, i32 0
  store %struct.aead_edesc* %46, %struct.aead_edesc** %48, align 8
  %49 = load %struct.caam_ctx*, %struct.caam_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %53 = call i32 @dpaa2_caam_enqueue(i32 %51, %struct.caam_request* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @EINPROGRESS, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %23
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %65 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %63, %58
  %72 = load %struct.caam_ctx*, %struct.caam_ctx** %6, align 8
  %73 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.aead_edesc*, %struct.aead_edesc** %4, align 8
  %76 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %77 = call i32 @aead_unmap(i32 %74, %struct.aead_edesc* %75, %struct.aead_request* %76)
  %78 = load %struct.aead_edesc*, %struct.aead_edesc** %4, align 8
  %79 = call i32 @qi_cache_free(%struct.aead_edesc* %78)
  br label %80

80:                                               ; preds = %71, %63, %23
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %20
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.caam_request* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.aead_edesc* @aead_edesc_alloc(%struct.aead_request*, i32) #1

declare dso_local i64 @IS_ERR(%struct.aead_edesc*) #1

declare dso_local i32 @PTR_ERR(%struct.aead_edesc*) #1

declare dso_local i32 @dpaa2_caam_enqueue(i32, %struct.caam_request*) #1

declare dso_local i32 @aead_unmap(i32, %struct.aead_edesc*, %struct.aead_request*) #1

declare dso_local i32 @qi_cache_free(%struct.aead_edesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
