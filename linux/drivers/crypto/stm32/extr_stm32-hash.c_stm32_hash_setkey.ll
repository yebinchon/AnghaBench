; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ahash = type { i32 }
%struct.stm32_hash_ctx = type { i32, i32 }

@HASH_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ahash*, i32*, i32)* @stm32_hash_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_setkey(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stm32_hash_ctx*, align 8
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %10 = call %struct.stm32_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %9)
  store %struct.stm32_hash_ctx* %10, %struct.stm32_hash_ctx** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @HASH_MAX_KEY_SIZE, align 4
  %13 = icmp ule i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.stm32_hash_ctx*, %struct.stm32_hash_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.stm32_hash_ctx, %struct.stm32_hash_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @memcpy(i32 %17, i32* %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.stm32_hash_ctx*, %struct.stm32_hash_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.stm32_hash_ctx, %struct.stm32_hash_ctx* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.stm32_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
