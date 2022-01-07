; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_init_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_init_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.artpec6_crypto = type { i32 }
%struct.artpec6_hash_request_context = type { i32, i8* }

@artpec6_crypto_dev = common dso_local global i32 0, align 4
@HASH_FLAG_INIT_CTX = common dso_local global i32 0, align 4
@HASH_FLAG_HMAC = common dso_local global i32 0, align 4
@HASH_FLAG_UPDATE_KEY = common dso_local global i32 0, align 4
@regk_crypto_hmac_sha1 = common dso_local global i32 0, align 4
@regk_crypto_sha1 = common dso_local global i32 0, align 4
@regk_crypto_hmac_sha256 = common dso_local global i32 0, align 4
@regk_crypto_sha256 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: Unsupported hash type 0x%x\0A\00", align 1
@MODULE_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ARTPEC6_CRYPTO = common dso_local global i32 0, align 4
@A6_CRY_MD_OPER = common dso_local global i32 0, align 4
@A7_CRY_MD_OPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32, i32)* @artpec6_crypto_init_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_init_hash(%struct.ahash_request* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahash_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.artpec6_crypto*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.artpec6_hash_request_context*, align 8
  %11 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @artpec6_crypto_dev, align 4
  %13 = call %struct.artpec6_crypto* @dev_get_drvdata(i32 %12)
  store %struct.artpec6_crypto* %13, %struct.artpec6_crypto** %8, align 8
  %14 = load %struct.artpec6_crypto*, %struct.artpec6_crypto** %8, align 8
  %15 = getelementptr inbounds %struct.artpec6_crypto, %struct.artpec6_crypto* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %18 = call %struct.artpec6_hash_request_context* @ahash_request_ctx(%struct.ahash_request* %17)
  store %struct.artpec6_hash_request_context* %18, %struct.artpec6_hash_request_context** %10, align 8
  %19 = load %struct.artpec6_hash_request_context*, %struct.artpec6_hash_request_context** %10, align 8
  %20 = call i32 @memset(%struct.artpec6_hash_request_context* %19, i32 0, i32 16)
  %21 = load i32, i32* @HASH_FLAG_INIT_CTX, align 4
  %22 = load %struct.artpec6_hash_request_context*, %struct.artpec6_hash_request_context** %10, align 8
  %23 = getelementptr inbounds %struct.artpec6_hash_request_context, %struct.artpec6_hash_request_context* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load i32, i32* @HASH_FLAG_HMAC, align 4
  %28 = load i32, i32* @HASH_FLAG_UPDATE_KEY, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.artpec6_hash_request_context*, %struct.artpec6_hash_request_context** %10, align 8
  %31 = getelementptr inbounds %struct.artpec6_hash_request_context, %struct.artpec6_hash_request_context* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %26, %3
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %54 [
    i32 129, label %36
    i32 128, label %45
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @regk_crypto_hmac_sha1, align 4
  br label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @regk_crypto_sha1, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %11, align 4
  br label %60

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @regk_crypto_hmac_sha256, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @regk_crypto_sha256, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %11, align 4
  br label %60

54:                                               ; preds = %34
  %55 = load i32, i32* @MODULE_NAME, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %77

60:                                               ; preds = %52, %43
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @ARTPEC6_CRYPTO, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* @A6_CRY_MD_OPER, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i8* @FIELD_PREP(i32 %65, i32 %66)
  %68 = load %struct.artpec6_hash_request_context*, %struct.artpec6_hash_request_context** %10, align 8
  %69 = getelementptr inbounds %struct.artpec6_hash_request_context, %struct.artpec6_hash_request_context* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  br label %76

70:                                               ; preds = %60
  %71 = load i32, i32* @A7_CRY_MD_OPER, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i8* @FIELD_PREP(i32 %71, i32 %72)
  %74 = load %struct.artpec6_hash_request_context*, %struct.artpec6_hash_request_context** %10, align 8
  %75 = getelementptr inbounds %struct.artpec6_hash_request_context, %struct.artpec6_hash_request_context* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %70, %64
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %54
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.artpec6_crypto* @dev_get_drvdata(i32) #1

declare dso_local %struct.artpec6_hash_request_context* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @memset(%struct.artpec6_hash_request_context*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i8* @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
