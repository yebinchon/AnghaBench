; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.qce_sha_reqctx = type { i64 }
%struct.sha1_state = type { i32, i32, i32 }
%struct.sha256_state = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @qce_ahash_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_ahash_import(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qce_sha_reqctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sha1_state*, align 8
  %10 = alloca %struct.sha256_state*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %12 = call %struct.qce_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %11)
  store %struct.qce_sha_reqctx* %12, %struct.qce_sha_reqctx** %5, align 8
  %13 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %14 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @IS_SHA_HMAC(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @IS_SHA1(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @IS_SHA1_HMAC(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %23, %2
  %28 = load i8*, i8** %4, align 8
  %29 = bitcast i8* %28 to %struct.sha1_state*
  store %struct.sha1_state* %29, %struct.sha1_state** %9, align 8
  %30 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %31 = load %struct.sha1_state*, %struct.sha1_state** %9, align 8
  %32 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sha1_state*, %struct.sha1_state** %9, align 8
  %35 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sha1_state*, %struct.sha1_state** %9, align 8
  %38 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @qce_import_common(%struct.ahash_request* %30, i32 %33, i32 %36, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  br label %66

42:                                               ; preds = %23
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @IS_SHA256(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @IS_SHA256_HMAC(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %46, %42
  %51 = load i8*, i8** %4, align 8
  %52 = bitcast i8* %51 to %struct.sha256_state*
  store %struct.sha256_state* %52, %struct.sha256_state** %10, align 8
  %53 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %54 = load %struct.sha256_state*, %struct.sha256_state** %10, align 8
  %55 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sha256_state*, %struct.sha256_state** %10, align 8
  %58 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sha256_state*, %struct.sha256_state** %10, align 8
  %61 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @qce_import_common(%struct.ahash_request* %53, i32 %56, i32 %59, i32 %62, i32 %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %50, %46
  br label %66

66:                                               ; preds = %65, %27
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local %struct.qce_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @IS_SHA_HMAC(i64) #1

declare dso_local i64 @IS_SHA1(i64) #1

declare dso_local i64 @IS_SHA1_HMAC(i64) #1

declare dso_local i32 @qce_import_common(%struct.ahash_request*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_SHA256(i64) #1

declare dso_local i64 @IS_SHA256_HMAC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
