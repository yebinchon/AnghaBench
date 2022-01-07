; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_gcm_cra_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_gcm_cra_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.omap_aes_ctx = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_aead*)* @omap_aes_gcm_cra_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_aes_gcm_cra_exit(%struct.crypto_aead* %0) #0 {
  %2 = alloca %struct.crypto_aead*, align 8
  %3 = alloca %struct.omap_aes_ctx*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %2, align 8
  %4 = load %struct.crypto_aead*, %struct.crypto_aead** %2, align 8
  %5 = call %struct.omap_aes_ctx* @crypto_aead_ctx(%struct.crypto_aead* %4)
  store %struct.omap_aes_ctx* %5, %struct.omap_aes_ctx** %3, align 8
  %6 = load %struct.crypto_aead*, %struct.crypto_aead** %2, align 8
  %7 = call i32 @crypto_aead_tfm(%struct.crypto_aead* %6)
  %8 = call i32 @omap_aes_cra_exit(i32 %7)
  %9 = load %struct.omap_aes_ctx*, %struct.omap_aes_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.omap_aes_ctx, %struct.omap_aes_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.omap_aes_ctx*, %struct.omap_aes_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.omap_aes_ctx, %struct.omap_aes_ctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @crypto_free_skcipher(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  ret void
}

declare dso_local %struct.omap_aes_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @omap_aes_cra_exit(i32) #1

declare dso_local i32 @crypto_aead_tfm(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_free_skcipher(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
