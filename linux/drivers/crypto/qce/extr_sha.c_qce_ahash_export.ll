; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.qce_sha_reqctx = type { i64, i32, i32, i32 }
%struct.sha1_state = type { i32, i64, i32 }
%struct.sha256_state = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @qce_ahash_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_ahash_export(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.crypto_ahash*, align 8
  %7 = alloca %struct.qce_sha_reqctx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sha1_state*, align 8
  %12 = alloca %struct.sha256_state*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %14 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %13)
  store %struct.crypto_ahash* %14, %struct.crypto_ahash** %6, align 8
  %15 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %16 = call %struct.qce_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %15)
  store %struct.qce_sha_reqctx* %16, %struct.qce_sha_reqctx** %7, align 8
  %17 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %7, align 8
  %18 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %21 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %23 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %22)
  %24 = call i32 @crypto_tfm_alg_blocksize(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @IS_SHA1(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @IS_SHA1_HMAC(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %28, %2
  %33 = load i8*, i8** %5, align 8
  %34 = bitcast i8* %33 to %struct.sha1_state*
  store %struct.sha1_state* %34, %struct.sha1_state** %11, align 8
  %35 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %7, align 8
  %36 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sha1_state*, %struct.sha1_state** %11, align 8
  %39 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sha1_state*, %struct.sha1_state** %11, align 8
  %41 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %7, align 8
  %45 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @qce_cpu_to_be32p_array(i32* %43, i32 %46, i32 %47)
  %49 = load %struct.sha1_state*, %struct.sha1_state** %11, align 8
  %50 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %7, align 8
  %53 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @memcpy(i32 %51, i32 %54, i32 %55)
  br label %94

57:                                               ; preds = %28
  %58 = load i64, i64* %8, align 8
  %59 = call i64 @IS_SHA256(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @IS_SHA256_HMAC(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %61, %57
  %66 = load i8*, i8** %5, align 8
  %67 = bitcast i8* %66 to %struct.sha256_state*
  store %struct.sha256_state* %67, %struct.sha256_state** %12, align 8
  %68 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %7, align 8
  %69 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.sha256_state*, %struct.sha256_state** %12, align 8
  %72 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.sha256_state*, %struct.sha256_state** %12, align 8
  %74 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %7, align 8
  %78 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @qce_cpu_to_be32p_array(i32* %76, i32 %79, i32 %80)
  %82 = load %struct.sha256_state*, %struct.sha256_state** %12, align 8
  %83 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %7, align 8
  %86 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @memcpy(i32 %84, i32 %87, i32 %88)
  br label %93

90:                                               ; preds = %61
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %95

93:                                               ; preds = %65
  br label %94

94:                                               ; preds = %93, %32
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %90
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.qce_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i64 @IS_SHA1(i64) #1

declare dso_local i64 @IS_SHA1_HMAC(i64) #1

declare dso_local i32 @qce_cpu_to_be32p_array(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @IS_SHA256(i64) #1

declare dso_local i64 @IS_SHA256_HMAC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
