; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_write_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_write_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_hash_dev = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.stm32_hash_ctx = type { i32, i8* }

@HASH_DIN = common dso_local global i32 0, align 4
@HASH_STR = common dso_local global i32 0, align 4
@HASH_STR_DCAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_hash_dev*)* @stm32_hash_write_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_write_key(%struct.stm32_hash_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_hash_dev*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.stm32_hash_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.stm32_hash_dev* %0, %struct.stm32_hash_dev** %3, align 8
  %9 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %10 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(i32 %11)
  store %struct.crypto_ahash* %12, %struct.crypto_ahash** %4, align 8
  %13 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %14 = call %struct.stm32_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %13)
  store %struct.stm32_hash_ctx* %14, %struct.stm32_hash_ctx** %5, align 8
  %15 = load %struct.stm32_hash_ctx*, %struct.stm32_hash_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.stm32_hash_ctx, %struct.stm32_hash_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.stm32_hash_ctx*, %struct.stm32_hash_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.stm32_hash_ctx, %struct.stm32_hash_ctx* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %1
  %24 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @stm32_hash_set_nblw(%struct.stm32_hash_dev* %24, i32 %25)
  br label %27

27:                                               ; preds = %30, %23
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %32 = load i32, i32* @HASH_DIN, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @stm32_hash_write(%struct.stm32_hash_dev* %31, i32 %32, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 4
  store i32 %38, i32* %7, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr i8, i8* %39, i64 4
  store i8* %40, i8** %8, align 8
  br label %27

41:                                               ; preds = %27
  %42 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %43 = load i32, i32* @HASH_STR, align 4
  %44 = call i32 @stm32_hash_read(%struct.stm32_hash_dev* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @HASH_STR_DCAL, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %3, align 8
  %49 = load i32, i32* @HASH_STR, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @stm32_hash_write(%struct.stm32_hash_dev* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @EINPROGRESS, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %41
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(i32) #1

declare dso_local %struct.stm32_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @stm32_hash_set_nblw(%struct.stm32_hash_dev*, i32) #1

declare dso_local i32 @stm32_hash_write(%struct.stm32_hash_dev*, i32, i32) #1

declare dso_local i32 @stm32_hash_read(%struct.stm32_hash_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
