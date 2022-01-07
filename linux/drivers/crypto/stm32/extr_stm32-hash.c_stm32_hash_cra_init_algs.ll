; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_cra_init_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_cra_init_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.stm32_hash_ctx = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32 }

@HASH_FLAGS_HMAC = common dso_local global i32 0, align 4
@stm32_hash_one_request = common dso_local global i32 0, align 4
@stm32_hash_prepare_req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i8*)* @stm32_hash_cra_init_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_cra_init_algs(%struct.crypto_tfm* %0, i8* %1) #0 {
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stm32_hash_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %7 = call %struct.stm32_hash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %6)
  store %struct.stm32_hash_ctx* %7, %struct.stm32_hash_ctx** %5, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %9 = call i32 @__crypto_ahash_cast(%struct.crypto_tfm* %8)
  %10 = call i32 @crypto_ahash_set_reqsize(i32 %9, i32 4)
  %11 = load %struct.stm32_hash_ctx*, %struct.stm32_hash_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.stm32_hash_ctx, %struct.stm32_hash_ctx* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @HASH_FLAGS_HMAC, align 4
  %17 = load %struct.stm32_hash_ctx*, %struct.stm32_hash_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.stm32_hash_ctx, %struct.stm32_hash_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %21

21:                                               ; preds = %15, %2
  %22 = load i32, i32* @stm32_hash_one_request, align 4
  %23 = load %struct.stm32_hash_ctx*, %struct.stm32_hash_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.stm32_hash_ctx, %struct.stm32_hash_ctx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* @stm32_hash_prepare_req, align 4
  %28 = load %struct.stm32_hash_ctx*, %struct.stm32_hash_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.stm32_hash_ctx, %struct.stm32_hash_ctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 8
  %32 = load %struct.stm32_hash_ctx*, %struct.stm32_hash_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.stm32_hash_ctx, %struct.stm32_hash_ctx* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  ret i32 0
}

declare dso_local %struct.stm32_hash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_ahash_set_reqsize(i32, i32) #1

declare dso_local i32 @__crypto_ahash_cast(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
