; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_ahash_hmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_ahash_hmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.iproc_reqctx_s = type { i32, i32, i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.iproc_ctx_s = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ahash_hmac_init()\0A\00", align 1
@HASH_MODE_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_hmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_hmac_init(%struct.ahash_request* %0) #0 {
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
  %16 = call i32 @flow_log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %18 = call i32 @ahash_init(%struct.ahash_request* %17)
  %19 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %20 = call i32 @spu_no_incr_hash(%struct.iproc_ctx_s* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %1
  %23 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %3, align 8
  %24 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @HASH_MODE_HASH, align 4
  %26 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %27 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %3, align 8
  %30 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %33 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @memcpy(i32 %31, i32 %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %3, align 8
  %39 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %3, align 8
  %42 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %22, %1
  ret i32 0
}

declare dso_local %struct.iproc_reqctx_s* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.iproc_ctx_s* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @flow_log(i8*) #1

declare dso_local i32 @ahash_init(%struct.ahash_request*) #1

declare dso_local i32 @spu_no_incr_hash(%struct.iproc_ctx_s*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
