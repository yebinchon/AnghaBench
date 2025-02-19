; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_aead_setauthsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_aead_setauthsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.caam_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32)* @aead_setauthsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_setauthsize(%struct.crypto_aead* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.caam_ctx*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %7 = call %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead* %6)
  store %struct.caam_ctx* %7, %struct.caam_ctx** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %12 = call i32 @aead_set_sh_desc(%struct.crypto_aead* %11)
  ret i32 0
}

declare dso_local %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @aead_set_sh_desc(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
