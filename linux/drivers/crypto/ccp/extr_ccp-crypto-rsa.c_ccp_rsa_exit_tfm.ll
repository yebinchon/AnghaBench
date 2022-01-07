; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-rsa.c_ccp_rsa_exit_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-rsa.c_ccp_rsa_exit_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_akcipher = type { i32 }
%struct.ccp_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_akcipher*)* @ccp_rsa_exit_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp_rsa_exit_tfm(%struct.crypto_akcipher* %0) #0 {
  %2 = alloca %struct.crypto_akcipher*, align 8
  %3 = alloca %struct.ccp_ctx*, align 8
  store %struct.crypto_akcipher* %0, %struct.crypto_akcipher** %2, align 8
  %4 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %2, align 8
  %5 = getelementptr inbounds %struct.crypto_akcipher, %struct.crypto_akcipher* %4, i32 0, i32 0
  %6 = call %struct.ccp_ctx* @crypto_tfm_ctx(i32* %5)
  store %struct.ccp_ctx* %6, %struct.ccp_ctx** %3, align 8
  %7 = load %struct.ccp_ctx*, %struct.ccp_ctx** %3, align 8
  %8 = call i32 @ccp_rsa_free_key_bufs(%struct.ccp_ctx* %7)
  ret void
}

declare dso_local %struct.ccp_ctx* @crypto_tfm_ctx(i32*) #1

declare dso_local i32 @ccp_rsa_free_key_bufs(%struct.ccp_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
