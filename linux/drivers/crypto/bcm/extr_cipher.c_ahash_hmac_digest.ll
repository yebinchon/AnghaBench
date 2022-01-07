; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_ahash_hmac_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_ahash_hmac_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ahash_request = type { i32 }
%struct.iproc_reqctx_s = type { i32, i32, i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.iproc_ctx_s = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"ahash_hmac_digest() nbytes:%u\0A\00", align 1
@iproc_priv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SPU_TYPE_SPU2 = common dso_local global i64 0, align 8
@HASH_MODE_HMAC = common dso_local global i32 0, align 4
@HASH_MODE_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_hmac_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_hmac_digest(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.iproc_reqctx_s*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.iproc_ctx_s*, align 8
  %6 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %8 = call %struct.iproc_reqctx_s* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.iproc_reqctx_s* %8, %struct.iproc_reqctx_s** %3, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %10 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %9)
  store %struct.crypto_ahash* %10, %struct.crypto_ahash** %4, align 8
  %11 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %12 = call %struct.iproc_ctx_s* @crypto_ahash_ctx(%struct.crypto_ahash* %11)
  store %struct.iproc_ctx_s* %12, %struct.iproc_ctx_s** %5, align 8
  %13 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %14 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %13)
  %15 = call i32 @crypto_tfm_alg_blocksize(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %17 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @flow_log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %21 = call i32 @__ahash_init(%struct.ahash_request* %20)
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @iproc_priv, i32 0, i32 0, i32 0), align 8
  %23 = load i64, i64* @SPU_TYPE_SPU2, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %3, align 8
  %27 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* @HASH_MODE_HMAC, align 4
  %29 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %30 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  br label %55

32:                                               ; preds = %1
  %33 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %3, align 8
  %34 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* @HASH_MODE_HASH, align 4
  %36 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %37 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %3, align 8
  %40 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %43 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @memcpy(i32 %41, i32 %44, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %3, align 8
  %49 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %3, align 8
  %52 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %32, %25
  %56 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %57 = call i32 @__ahash_finup(%struct.ahash_request* %56)
  ret i32 %57
}

declare dso_local %struct.iproc_reqctx_s* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.iproc_ctx_s* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @flow_log(i8*, i32) #1

declare dso_local i32 @__ahash_init(%struct.ahash_request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @__ahash_finup(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
