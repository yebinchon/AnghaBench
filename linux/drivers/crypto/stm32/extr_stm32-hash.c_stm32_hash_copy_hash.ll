; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_copy_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_copy_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.stm32_hash_request_ctx = type { i32, i32, i64 }

@HASH_FLAGS_ALGO_MASK = common dso_local global i32 0, align 4
@MD5_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA224_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*)* @stm32_hash_copy_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_hash_copy_hash(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.stm32_hash_request_ctx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %8 = call %struct.stm32_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.stm32_hash_request_ctx* %8, %struct.stm32_hash_request_ctx** %3, align 8
  %9 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %4, align 8
  %13 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @HASH_FLAGS_ALGO_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %26 [
    i32 131, label %18
    i32 130, label %20
    i32 129, label %22
    i32 128, label %24
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @MD5_DIGEST_SIZE, align 4
  store i32 %19, i32* %6, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  store i32 %21, i32* %6, align 4
  br label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @SHA224_DIGEST_SIZE, align 4
  store i32 %23, i32* %6, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  store i32 %25, i32* %6, align 4
  br label %27

26:                                               ; preds = %1
  br label %50

27:                                               ; preds = %24, %22, %20, %18
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = udiv i64 %32, 4
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @HASH_HREG(i32 %39)
  %41 = call i32 @stm32_hash_read(i32 %38, i32 %40)
  %42 = call i32 @be32_to_cpu(i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %5, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %28

50:                                               ; preds = %26, %28
  ret void
}

declare dso_local %struct.stm32_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @stm32_hash_read(i32, i32) #1

declare dso_local i32 @HASH_HREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
