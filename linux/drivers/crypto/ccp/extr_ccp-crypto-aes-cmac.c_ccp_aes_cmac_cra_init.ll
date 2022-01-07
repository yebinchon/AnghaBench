; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-cmac.c_ccp_aes_cmac_cra_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-cmac.c_ccp_aes_cmac_cra_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.ccp_ctx = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.crypto_ahash = type { i32 }

@ccp_aes_cmac_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @ccp_aes_cmac_cra_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_aes_cmac_cra_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.ccp_ctx*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %5 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %6 = call %struct.ccp_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %5)
  store %struct.ccp_ctx* %6, %struct.ccp_ctx** %3, align 8
  %7 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %8 = call %struct.crypto_ahash* @__crypto_ahash_cast(%struct.crypto_tfm* %7)
  store %struct.crypto_ahash* %8, %struct.crypto_ahash** %4, align 8
  %9 = load i32, i32* @ccp_aes_cmac_complete, align 4
  %10 = load %struct.ccp_ctx*, %struct.ccp_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ccp_ctx*, %struct.ccp_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %17 = call i32 @crypto_ahash_set_reqsize(%struct.crypto_ahash* %16, i32 4)
  ret i32 0
}

declare dso_local %struct.ccp_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_ahash* @__crypto_ahash_cast(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_ahash_set_reqsize(%struct.crypto_ahash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
