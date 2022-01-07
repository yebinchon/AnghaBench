; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_crypto_ctx_aes_gcm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_crypto_ctx_aes_gcm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }

@NX_FC_AES = common dso_local global i32 0, align 4
@NX_MODE_AES_GCM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nx_crypto_ctx_aes_gcm_init(%struct.crypto_aead* %0) #0 {
  %2 = alloca %struct.crypto_aead*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %2, align 8
  %3 = load %struct.crypto_aead*, %struct.crypto_aead** %2, align 8
  %4 = call i32 @crypto_aead_set_reqsize(%struct.crypto_aead* %3, i32 4)
  %5 = load %struct.crypto_aead*, %struct.crypto_aead** %2, align 8
  %6 = call i32 @crypto_aead_ctx(%struct.crypto_aead* %5)
  %7 = load i32, i32* @NX_FC_AES, align 4
  %8 = load i32, i32* @NX_MODE_AES_GCM, align 4
  %9 = call i32 @nx_crypto_ctx_init(i32 %6, i32 %7, i32 %8)
  ret i32 %9
}

declare dso_local i32 @crypto_aead_set_reqsize(%struct.crypto_aead*, i32) #1

declare dso_local i32 @nx_crypto_ctx_init(i32, i32, i32) #1

declare dso_local i32 @crypto_aead_ctx(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
