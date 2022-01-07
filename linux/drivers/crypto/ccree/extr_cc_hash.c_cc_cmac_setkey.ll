; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_cmac_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_cmac_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ahash = type { i32 }
%struct.cc_hash_ctx = type { i32, %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"===== setkey (%d) ====\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@CC_AES_KEY_SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ahash*, i32*, i32)* @cc_cmac_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_cmac_setkey(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cc_hash_ctx*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %11 = call %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %10)
  store %struct.cc_hash_ctx* %11, %struct.cc_hash_ctx** %8, align 8
  %12 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %13 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.device* @drvdata_to_dev(i32 %14)
  store %struct.device* %15, %struct.device** %9, align 8
  %16 = load %struct.device*, %struct.device** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @dev_dbg(%struct.device* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %20 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %23 [
    i32 130, label %22
    i32 129, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %3, %3, %3
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %66

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.device*, %struct.device** %9, align 8
  %32 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  %37 = call i32 @dma_sync_single_for_cpu(%struct.device* %31, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @memcpy(i64 %40, i32* %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 24
  br i1 %45, label %46, label %54

46:                                               ; preds = %26
  %47 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 24
  %51 = load i64, i64* @CC_AES_KEY_SIZE_MAX, align 8
  %52 = sub nsw i64 %51, 24
  %53 = call i32 @memset(i64 %50, i32 0, i64 %52)
  br label %54

54:                                               ; preds = %46, %26
  %55 = load %struct.device*, %struct.device** %9, align 8
  %56 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %57 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @DMA_TO_DEVICE, align 4
  %61 = call i32 @dma_sync_single_for_device(%struct.device* %55, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %8, align 8
  %64 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %54, %23
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
