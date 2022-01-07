; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_finup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_finup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.stm32_hash_request_ctx = type { i32 }
%struct.stm32_hash_ctx = type { i32 }
%struct.stm32_hash_dev = type { i64 }

@HASH_FLAGS_FINUP = common dso_local global i32 0, align 4
@HASH_FLAGS_CPU = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @stm32_hash_finup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_finup(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.stm32_hash_request_ctx*, align 8
  %5 = alloca %struct.stm32_hash_ctx*, align 8
  %6 = alloca %struct.stm32_hash_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %10 = call %struct.stm32_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request* %9)
  store %struct.stm32_hash_request_ctx* %10, %struct.stm32_hash_request_ctx** %4, align 8
  %11 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %12 = call i32 @crypto_ahash_reqtfm(%struct.ahash_request* %11)
  %13 = call %struct.stm32_hash_ctx* @crypto_ahash_ctx(i32 %12)
  store %struct.stm32_hash_ctx* %13, %struct.stm32_hash_ctx** %5, align 8
  %14 = load %struct.stm32_hash_ctx*, %struct.stm32_hash_ctx** %5, align 8
  %15 = call %struct.stm32_hash_dev* @stm32_hash_find_dev(%struct.stm32_hash_ctx* %14)
  store %struct.stm32_hash_dev* %15, %struct.stm32_hash_dev** %6, align 8
  %16 = load i32, i32* @HASH_FLAGS_FINUP, align 4
  %17 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %22 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %1
  %26 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %27 = call i64 @stm32_hash_dma_aligned_data(%struct.ahash_request* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* @HASH_FLAGS_CPU, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %29, %25, %1
  %37 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %38 = call i32 @stm32_hash_update(%struct.ahash_request* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @EINPROGRESS, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43, %36
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %60

50:                                               ; preds = %43
  %51 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %52 = call i32 @stm32_hash_final(%struct.ahash_request* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i32 [ %53, %55 ], [ %57, %56 ]
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %48
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.stm32_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.stm32_hash_ctx* @crypto_ahash_ctx(i32) #1

declare dso_local i32 @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.stm32_hash_dev* @stm32_hash_find_dev(%struct.stm32_hash_ctx*) #1

declare dso_local i64 @stm32_hash_dma_aligned_data(%struct.ahash_request*) #1

declare dso_local i32 @stm32_hash_update(%struct.ahash_request*) #1

declare dso_local i32 @stm32_hash_final(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
