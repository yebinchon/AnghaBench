; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_hmac_cra_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_hmac_cra_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.chcr_context = type { i32 }
%struct.hmac_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @chcr_hmac_cra_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_hmac_cra_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.chcr_context*, align 8
  %5 = alloca %struct.hmac_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %7 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %8 = call %struct.chcr_context* @crypto_tfm_ctx(%struct.crypto_tfm* %7)
  store %struct.chcr_context* %8, %struct.chcr_context** %4, align 8
  %9 = load %struct.chcr_context*, %struct.chcr_context** %4, align 8
  %10 = call %struct.hmac_ctx* @HMAC_CTX(%struct.chcr_context* %9)
  store %struct.hmac_ctx* %10, %struct.hmac_ctx** %5, align 8
  %11 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %12 = call i32 @__crypto_ahash_cast(%struct.crypto_tfm* %11)
  %13 = call i32 @crypto_ahash_digestsize(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %15 = call i32 @__crypto_ahash_cast(%struct.crypto_tfm* %14)
  %16 = call i32 @crypto_ahash_set_reqsize(i32 %15, i32 4)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @chcr_alloc_shash(i32 %17)
  %19 = load %struct.hmac_ctx*, %struct.hmac_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.hmac_ctx*, %struct.hmac_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.hmac_ctx*, %struct.hmac_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PTR_ERR(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %1
  %32 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %33 = call %struct.chcr_context* @crypto_tfm_ctx(%struct.crypto_tfm* %32)
  %34 = call i32 @chcr_device_init(%struct.chcr_context* %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.chcr_context* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.hmac_ctx* @HMAC_CTX(%struct.chcr_context*) #1

declare dso_local i32 @crypto_ahash_digestsize(i32) #1

declare dso_local i32 @__crypto_ahash_cast(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_ahash_set_reqsize(i32, i32) #1

declare dso_local i32 @chcr_alloc_shash(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @chcr_device_init(%struct.chcr_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
