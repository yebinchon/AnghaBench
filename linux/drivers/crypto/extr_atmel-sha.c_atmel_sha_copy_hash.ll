; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_copy_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_copy_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.atmel_sha_reqctx = type { i32, i32, i64 }

@SHA_FLAGS_ALGO_MASK = common dso_local global i32 0, align 4
@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA_FLAGS_RESTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*)* @atmel_sha_copy_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_sha_copy_hash(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.atmel_sha_reqctx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %8 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.atmel_sha_reqctx* %8, %struct.atmel_sha_reqctx** %3, align 8
  %9 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %10 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %4, align 8
  %13 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SHA_FLAGS_ALGO_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %24 [
    i32 132, label %18
    i32 131, label %20
    i32 130, label %20
    i32 129, label %22
    i32 128, label %22
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  store i32 %19, i32* %6, align 4
  br label %25

20:                                               ; preds = %1, %1
  %21 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  store i32 %21, i32* %6, align 4
  br label %25

22:                                               ; preds = %1, %1
  %23 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  store i32 %23, i32* %6, align 4
  br label %25

24:                                               ; preds = %1
  br label %53

25:                                               ; preds = %22, %20, %18
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = udiv i64 %30, 4
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %35 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @SHA_REG_DIGEST(i32 %37)
  %39 = call i32 @atmel_sha_read(i32 %36, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %26

47:                                               ; preds = %26
  %48 = load i32, i32* @SHA_FLAGS_RESTORE, align 4
  %49 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %50 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %24
  ret void
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @atmel_sha_read(i32, i32) #1

declare dso_local i32 @SHA_REG_DIGEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
