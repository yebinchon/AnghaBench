; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_hmac_cra_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_hmac_cra_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.n2_hmac_ctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*)* @n2_hmac_cra_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n2_hmac_cra_exit(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.crypto_ahash*, align 8
  %4 = alloca %struct.n2_hmac_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %5 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %6 = call %struct.crypto_ahash* @__crypto_ahash_cast(%struct.crypto_tfm* %5)
  store %struct.crypto_ahash* %6, %struct.crypto_ahash** %3, align 8
  %7 = load %struct.crypto_ahash*, %struct.crypto_ahash** %3, align 8
  %8 = call %struct.n2_hmac_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %7)
  store %struct.n2_hmac_ctx* %8, %struct.n2_hmac_ctx** %4, align 8
  %9 = load %struct.n2_hmac_ctx*, %struct.n2_hmac_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.n2_hmac_ctx, %struct.n2_hmac_ctx* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @crypto_free_ahash(i32 %12)
  %14 = load %struct.n2_hmac_ctx*, %struct.n2_hmac_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.n2_hmac_ctx, %struct.n2_hmac_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @crypto_free_shash(i32 %16)
  ret void
}

declare dso_local %struct.crypto_ahash* @__crypto_ahash_cast(%struct.crypto_tfm*) #1

declare dso_local %struct.n2_hmac_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_free_ahash(i32) #1

declare dso_local i32 @crypto_free_shash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
