; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_skcipher_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_skcipher_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.skcipher_edesc = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.caam_ctx = type { i32, i32*, i32* }
%struct.caam_request = type { %struct.skcipher_edesc*, %struct.TYPE_2__*, i32, i32, i32* }

@DECRYPT = common dso_local global i64 0, align 8
@skcipher_decrypt_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @skcipher_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_decrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.skcipher_edesc*, align 8
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca %struct.caam_ctx*, align 8
  %7 = alloca %struct.caam_request*, align 8
  %8 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %10 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %9)
  store %struct.crypto_skcipher* %10, %struct.crypto_skcipher** %5, align 8
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %12 = call %struct.caam_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %11)
  store %struct.caam_ctx* %12, %struct.caam_ctx** %6, align 8
  %13 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %14 = call %struct.caam_request* @skcipher_request_ctx(%struct.skcipher_request* %13)
  store %struct.caam_request* %14, %struct.caam_request** %7, align 8
  %15 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %16 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

20:                                               ; preds = %1
  %21 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %22 = call %struct.skcipher_edesc* @skcipher_edesc_alloc(%struct.skcipher_request* %21)
  store %struct.skcipher_edesc* %22, %struct.skcipher_edesc** %4, align 8
  %23 = load %struct.skcipher_edesc*, %struct.skcipher_edesc** %4, align 8
  %24 = call i64 @IS_ERR(%struct.skcipher_edesc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.skcipher_edesc*, %struct.skcipher_edesc** %4, align 8
  %28 = call i32 @PTR_ERR(%struct.skcipher_edesc* %27)
  store i32 %28, i32* %2, align 4
  br label %88

29:                                               ; preds = %20
  %30 = load %struct.caam_ctx*, %struct.caam_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @DECRYPT, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %36 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %35, i32 0, i32 4
  store i32* %34, i32** %36, align 8
  %37 = load %struct.caam_ctx*, %struct.caam_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @DECRYPT, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %44 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @skcipher_decrypt_done, align 4
  %46 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %47 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %49 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %48, i32 0, i32 0
  %50 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %51 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %50, i32 0, i32 1
  store %struct.TYPE_2__* %49, %struct.TYPE_2__** %51, align 8
  %52 = load %struct.skcipher_edesc*, %struct.skcipher_edesc** %4, align 8
  %53 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %54 = getelementptr inbounds %struct.caam_request, %struct.caam_request* %53, i32 0, i32 0
  store %struct.skcipher_edesc* %52, %struct.skcipher_edesc** %54, align 8
  %55 = load %struct.caam_ctx*, %struct.caam_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.caam_request*, %struct.caam_request** %7, align 8
  %59 = call i32 @dpaa2_caam_enqueue(i32 %57, %struct.caam_request* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @EINPROGRESS, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %29
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %71 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %69, %64
  %78 = load %struct.caam_ctx*, %struct.caam_ctx** %6, align 8
  %79 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.skcipher_edesc*, %struct.skcipher_edesc** %4, align 8
  %82 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %83 = call i32 @skcipher_unmap(i32 %80, %struct.skcipher_edesc* %81, %struct.skcipher_request* %82)
  %84 = load %struct.skcipher_edesc*, %struct.skcipher_edesc** %4, align 8
  %85 = call i32 @qi_cache_free(%struct.skcipher_edesc* %84)
  br label %86

86:                                               ; preds = %77, %69, %29
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %26, %19
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.caam_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local %struct.caam_request* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local %struct.skcipher_edesc* @skcipher_edesc_alloc(%struct.skcipher_request*) #1

declare dso_local i64 @IS_ERR(%struct.skcipher_edesc*) #1

declare dso_local i32 @PTR_ERR(%struct.skcipher_edesc*) #1

declare dso_local i32 @dpaa2_caam_enqueue(i32, %struct.caam_request*) #1

declare dso_local i32 @skcipher_unmap(i32, %struct.skcipher_edesc*, %struct.skcipher_request*) #1

declare dso_local i32 @qi_cache_free(%struct.skcipher_edesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
