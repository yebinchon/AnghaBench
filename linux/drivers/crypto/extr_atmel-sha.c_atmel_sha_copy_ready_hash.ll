; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_copy_ready_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_copy_ready_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.atmel_sha_reqctx = type { i32, i32 }

@SHA_FLAGS_ALGO_MASK = common dso_local global i32 0, align 4
@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA224_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA384_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*)* @atmel_sha_copy_ready_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_sha_copy_ready_hash(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.atmel_sha_reqctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %4 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %5 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %4)
  store %struct.atmel_sha_reqctx* %5, %struct.atmel_sha_reqctx** %3, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %7 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %63

11:                                               ; preds = %1
  %12 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %13 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SHA_FLAGS_ALGO_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %17 [
    i32 132, label %18
    i32 131, label %27
    i32 130, label %36
    i32 129, label %45
    i32 128, label %54
  ]

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %11, %17
  %19 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %20 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %23 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %26 = call i32 @memcpy(i32 %21, i32 %24, i32 %25)
  br label %63

27:                                               ; preds = %11
  %28 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %29 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %32 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SHA224_DIGEST_SIZE, align 4
  %35 = call i32 @memcpy(i32 %30, i32 %33, i32 %34)
  br label %63

36:                                               ; preds = %11
  %37 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %38 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %41 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  %44 = call i32 @memcpy(i32 %39, i32 %42, i32 %43)
  br label %63

45:                                               ; preds = %11
  %46 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %47 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %50 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SHA384_DIGEST_SIZE, align 4
  %53 = call i32 @memcpy(i32 %48, i32 %51, i32 %52)
  br label %63

54:                                               ; preds = %11
  %55 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %56 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %59 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  %62 = call i32 @memcpy(i32 %57, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %10, %54, %45, %36, %27, %18
  ret void
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
