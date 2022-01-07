; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.s5p_hash_reqctx = type { i32, i32, i32, i32, i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.s5p_hash_ctx = type { %struct.TYPE_2__* }

@.str = private unnamed_addr constant [23 x i8] c"init: digest size: %d\0A\00", align 1
@SSS_HASH_ENGINE_MD5 = common dso_local global i32 0, align 4
@HASH_MD5_MAX_REG = common dso_local global i32 0, align 4
@SSS_HASH_ENGINE_SHA1 = common dso_local global i32 0, align 4
@HASH_SHA1_MAX_REG = common dso_local global i32 0, align 4
@SSS_HASH_ENGINE_SHA256 = common dso_local global i32 0, align 4
@HASH_SHA256_MAX_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @s5p_hash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_hash_init(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.s5p_hash_reqctx*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.s5p_hash_ctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = call %struct.s5p_hash_reqctx* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.s5p_hash_reqctx* %8, %struct.s5p_hash_reqctx** %4, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %10 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %9)
  store %struct.crypto_ahash* %10, %struct.crypto_ahash** %5, align 8
  %11 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %12 = call %struct.s5p_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %11)
  store %struct.s5p_hash_ctx* %12, %struct.s5p_hash_ctx** %6, align 8
  %13 = load %struct.s5p_hash_ctx*, %struct.s5p_hash_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.s5p_hash_ctx, %struct.s5p_hash_ctx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %17 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %16, i32 0, i32 8
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %17, align 8
  %18 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %19 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %21 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %23 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %25 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %24, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %27 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %29 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.s5p_hash_ctx*, %struct.s5p_hash_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.s5p_hash_ctx, %struct.s5p_hash_ctx* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %36 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %35)
  %37 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %39 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %38)
  switch i32 %39, label %61 [
    i32 130, label %40
    i32 129, label %47
    i32 128, label %54
  ]

40:                                               ; preds = %1
  %41 = load i32, i32* @SSS_HASH_ENGINE_MD5, align 4
  %42 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %43 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @HASH_MD5_MAX_REG, align 4
  %45 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %46 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  br label %66

47:                                               ; preds = %1
  %48 = load i32, i32* @SSS_HASH_ENGINE_SHA1, align 4
  %49 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %50 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @HASH_SHA1_MAX_REG, align 4
  %52 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %53 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  br label %66

54:                                               ; preds = %1
  %55 = load i32, i32* @SSS_HASH_ENGINE_SHA256, align 4
  %56 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %57 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @HASH_SHA256_MAX_REG, align 4
  %59 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %60 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  br label %66

61:                                               ; preds = %1
  %62 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %63 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %54, %47, %40
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.s5p_hash_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.s5p_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
