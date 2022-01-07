; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_hash_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_hash_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.cc_hash_ctx = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.ahash_req_ctx = type { i32*, i32*, i32*, i32** }

@CC_EXPORT_MAGIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CC_MAX_HASH_BLCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @cc_hash_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_hash_import(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.crypto_ahash*, align 8
  %7 = alloca %struct.cc_hash_ctx*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.ahash_req_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %12 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %11)
  store %struct.crypto_ahash* %12, %struct.crypto_ahash** %6, align 8
  %13 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %14 = call %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %13)
  store %struct.cc_hash_ctx* %14, %struct.cc_hash_ctx** %7, align 8
  %15 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.device* @drvdata_to_dev(i32 %17)
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %20 = call %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %19)
  store %struct.ahash_req_ctx* %20, %struct.ahash_req_ctx** %9, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @memcpy(i32* %10, i8* %21, i32 4)
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @CC_EXPORT_MAGIC, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %88

29:                                               ; preds = %2
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr i8, i8* %30, i64 4
  store i8* %31, i8** %5, align 8
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %9, align 8
  %34 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %7, align 8
  %35 = call i32 @cc_init_req(%struct.device* %32, %struct.ahash_req_ctx* %33, %struct.cc_hash_ctx* %34)
  %36 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %9, align 8
  %37 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(i32* %38, i8* %39, i32 %42)
  %44 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %7, align 8
  %45 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr i8, i8* %47, i64 %48
  store i8* %49, i8** %5, align 8
  %50 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %9, align 8
  %51 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %7, align 8
  %55 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memcpy(i32* %52, i8* %53, i32 %56)
  %58 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %7, align 8
  %59 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr i8, i8* %61, i64 %62
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @memcpy(i32* %10, i8* %64, i32 4)
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @CC_MAX_HASH_BLCK_SIZE, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %29
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %88

72:                                               ; preds = %29
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr i8, i8* %73, i64 4
  store i8* %74, i8** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %9, align 8
  %77 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %75, i32* %79, align 4
  %80 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %9, align 8
  %81 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %80, i32 0, i32 3
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @memcpy(i32* %84, i8* %85, i32 %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %72, %69, %26
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @cc_init_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
