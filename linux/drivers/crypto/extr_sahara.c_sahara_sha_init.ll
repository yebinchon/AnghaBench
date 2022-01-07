; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_sha_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_sha_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.sahara_sha_reqctx = type { i32, i32, i64, i32 }

@SAHARA_HDR_MDHA_ALG_SHA1 = common dso_local global i32 0, align 4
@SAHARA_HDR_MDHA_ALG_SHA256 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @sahara_sha_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_sha_init(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.sahara_sha_reqctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %7 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %6)
  store %struct.crypto_ahash* %7, %struct.crypto_ahash** %4, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %9 = call %struct.sahara_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %8)
  store %struct.sahara_sha_reqctx* %9, %struct.sahara_sha_reqctx** %5, align 8
  %10 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %11 = call i32 @memset(%struct.sahara_sha_reqctx* %10, i32 0, i32 24)
  %12 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %13 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %12)
  switch i32 %13, label %30 [
    i32 129, label %14
    i32 128, label %22
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @SAHARA_HDR_MDHA_ALG_SHA1, align 4
  %16 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %17 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %21 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %20, i32 0, i32 0
  store i32 129, i32* %21, align 8
  br label %33

22:                                               ; preds = %1
  %23 = load i32, i32* @SAHARA_HDR_MDHA_ALG_SHA256, align 4
  %24 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %25 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %29 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %28, i32 0, i32 0
  store i32 128, i32* %29, align 8
  br label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %42

33:                                               ; preds = %22, %14
  %34 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %35 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 4
  %38 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %39 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %41 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %33, %30
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.sahara_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @memset(%struct.sahara_sha_reqctx*, i32, i32) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
