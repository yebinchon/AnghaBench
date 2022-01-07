; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_write_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_write_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_hash_dev = type { i32, i32, i32 }
%struct.stm32_hash_request_ctx = type { i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.stm32_hash_ctx = type { i64 }

@HASH_CR_INIT = common dso_local global i32 0, align 4
@HASH_FLAGS_INIT = common dso_local global i32 0, align 4
@HASH_FLAGS_ALGO_MASK = common dso_local global i32 0, align 4
@HASH_CR_ALGO_MD5 = common dso_local global i32 0, align 4
@HASH_CR_ALGO_SHA1 = common dso_local global i32 0, align 4
@HASH_CR_ALGO_SHA224 = common dso_local global i32 0, align 4
@HASH_CR_ALGO_SHA256 = common dso_local global i32 0, align 4
@HASH_CR_DATATYPE_POS = common dso_local global i32 0, align 4
@HASH_FLAGS_HMAC = common dso_local global i32 0, align 4
@HASH_CR_MODE = common dso_local global i32 0, align 4
@HASH_LONG_KEY = common dso_local global i64 0, align 8
@HASH_CR_LKEY = common dso_local global i32 0, align 4
@HASH_IMR = common dso_local global i32 0, align 4
@HASH_DCIE = common dso_local global i32 0, align 4
@HASH_CR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Write Control %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_hash_dev*)* @stm32_hash_write_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_hash_write_ctrl(%struct.stm32_hash_dev* %0) #0 {
  %2 = alloca %struct.stm32_hash_dev*, align 8
  %3 = alloca %struct.stm32_hash_request_ctx*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.stm32_hash_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.stm32_hash_dev* %0, %struct.stm32_hash_dev** %2, align 8
  %7 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %2, align 8
  %8 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.stm32_hash_request_ctx* @ahash_request_ctx(i32 %9)
  store %struct.stm32_hash_request_ctx* %10, %struct.stm32_hash_request_ctx** %3, align 8
  %11 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %2, align 8
  %12 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(i32 %13)
  store %struct.crypto_ahash* %14, %struct.crypto_ahash** %4, align 8
  %15 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %16 = call %struct.stm32_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %15)
  store %struct.stm32_hash_ctx* %16, %struct.stm32_hash_ctx** %5, align 8
  %17 = load i32, i32* @HASH_CR_INIT, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %2, align 8
  %19 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HASH_FLAGS_INIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %102, label %24

24:                                               ; preds = %1
  %25 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HASH_FLAGS_ALGO_MASK, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %46 [
    i32 131, label %30
    i32 130, label %34
    i32 129, label %38
    i32 128, label %42
  ]

30:                                               ; preds = %24
  %31 = load i32, i32* @HASH_CR_ALGO_MD5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %50

34:                                               ; preds = %24
  %35 = load i32, i32* @HASH_CR_ALGO_SHA1, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %50

38:                                               ; preds = %24
  %39 = load i32, i32* @HASH_CR_ALGO_SHA224, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %50

42:                                               ; preds = %24
  %43 = load i32, i32* @HASH_CR_ALGO_SHA256, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %50

46:                                               ; preds = %24
  %47 = load i32, i32* @HASH_CR_ALGO_MD5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %42, %38, %34, %30
  %51 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HASH_CR_DATATYPE_POS, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HASH_FLAGS_HMAC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %50
  %65 = load i32, i32* @HASH_FLAGS_HMAC, align 4
  %66 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %2, align 8
  %67 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @HASH_CR_MODE, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load %struct.stm32_hash_ctx*, %struct.stm32_hash_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.stm32_hash_ctx, %struct.stm32_hash_ctx* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @HASH_LONG_KEY, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %64
  %79 = load i32, i32* @HASH_CR_LKEY, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %64
  br label %83

83:                                               ; preds = %82, %50
  %84 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %2, align 8
  %85 = load i32, i32* @HASH_IMR, align 4
  %86 = load i32, i32* @HASH_DCIE, align 4
  %87 = call i32 @stm32_hash_write(%struct.stm32_hash_dev* %84, i32 %85, i32 %86)
  %88 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %2, align 8
  %89 = load i32, i32* @HASH_CR, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @stm32_hash_write(%struct.stm32_hash_dev* %88, i32 %89, i32 %90)
  %92 = load i32, i32* @HASH_FLAGS_INIT, align 4
  %93 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %2, align 8
  %94 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %2, align 8
  %98 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @dev_dbg(i32 %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %83, %1
  ret void
}

declare dso_local %struct.stm32_hash_request_ctx* @ahash_request_ctx(i32) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(i32) #1

declare dso_local %struct.stm32_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @stm32_hash_write(%struct.stm32_hash_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
