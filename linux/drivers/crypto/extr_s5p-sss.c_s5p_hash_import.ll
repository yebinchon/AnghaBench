; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.s5p_hash_reqctx = type { i64, i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.s5p_hash_ctx = type { i32 }

@BUFLEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @s5p_hash_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_hash_import(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.s5p_hash_reqctx*, align 8
  %7 = alloca %struct.crypto_ahash*, align 8
  %8 = alloca %struct.s5p_hash_ctx*, align 8
  %9 = alloca %struct.s5p_hash_reqctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %11 = call %struct.s5p_hash_reqctx* @ahash_request_ctx(%struct.ahash_request* %10)
  store %struct.s5p_hash_reqctx* %11, %struct.s5p_hash_reqctx** %6, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %13 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %12)
  store %struct.crypto_ahash* %13, %struct.crypto_ahash** %7, align 8
  %14 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %15 = call %struct.s5p_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %14)
  store %struct.s5p_hash_ctx* %15, %struct.s5p_hash_ctx** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.s5p_hash_reqctx*
  store %struct.s5p_hash_reqctx* %17, %struct.s5p_hash_reqctx** %9, align 8
  %18 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* @BUFLEN, align 8
  %21 = add i64 16, %20
  %22 = call i32 @memcpy(%struct.s5p_hash_reqctx* %18, i8* %19, i64 %21)
  %23 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %9, align 8
  %24 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BUFLEN, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %30 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %29, i32 0, i32 1
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %2
  %34 = load %struct.s5p_hash_ctx*, %struct.s5p_hash_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.s5p_hash_ctx, %struct.s5p_hash_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %38 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %40 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %39, i32 0, i32 1
  store i32 0, i32* %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %33, %28
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.s5p_hash_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.s5p_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @memcpy(%struct.s5p_hash_reqctx*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
