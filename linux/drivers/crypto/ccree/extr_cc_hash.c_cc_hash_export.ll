; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_hash_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_hash_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.cc_hash_ctx = type { i32, i32 }
%struct.ahash_req_ctx = type { i32*, i32* }

@CC_EXPORT_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @cc_hash_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_hash_export(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.cc_hash_ctx*, align 8
  %7 = alloca %struct.ahash_req_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %12 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %11)
  store %struct.crypto_ahash* %12, %struct.crypto_ahash** %5, align 8
  %13 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %14 = call %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %13)
  store %struct.cc_hash_ctx* %14, %struct.cc_hash_ctx** %6, align 8
  %15 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %16 = call %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %15)
  store %struct.ahash_req_ctx* %16, %struct.ahash_req_ctx** %7, align 8
  %17 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %7, align 8
  %18 = call i32* @cc_hash_buf(%struct.ahash_req_ctx* %17)
  store i32* %18, i32** %8, align 8
  %19 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %7, align 8
  %20 = call i32* @cc_hash_buf_cnt(%struct.ahash_req_ctx* %19)
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @CC_EXPORT_MAGIC, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @memcpy(i8* %23, i32* %10, i32 4)
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr i8, i8* %25, i64 4
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i8* %27, i32* %30, i32 %33)
  %35 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr i8, i8* %38, i64 %39
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i8* %41, i32* %44, i32 %47)
  %49 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr i8, i8* %52, i64 %53
  store i8* %54, i8** %4, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @memcpy(i8* %55, i32* %9, i32 4)
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr i8, i8* %57, i64 4
  store i8* %58, i8** %4, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @memcpy(i8* %59, i32* %60, i32 %61)
  ret i32 0
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32* @cc_hash_buf(%struct.ahash_req_ctx*) #1

declare dso_local i32* @cc_hash_buf_cnt(%struct.ahash_req_ctx*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
