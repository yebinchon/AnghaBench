; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes-gcm.c_omap_aes_gcm_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes-gcm.c_omap_aes_gcm_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.omap_aes_reqctx = type { i32 }

@GCM_AES_IV_SIZE = common dso_local global i32 0, align 4
@FLAGS_ENCRYPT = common dso_local global i32 0, align 4
@FLAGS_GCM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_aes_gcm_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.omap_aes_reqctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %4 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %5 = call %struct.omap_aes_reqctx* @aead_request_ctx(%struct.aead_request* %4)
  store %struct.omap_aes_reqctx* %5, %struct.omap_aes_reqctx** %3, align 8
  %6 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %3, align 8
  %7 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %10 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GCM_AES_IV_SIZE, align 4
  %13 = call i32 @memcpy(i32 %8, i32 %11, i32 %12)
  %14 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %15 = load i32, i32* @FLAGS_ENCRYPT, align 4
  %16 = load i32, i32* @FLAGS_GCM, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @omap_aes_gcm_crypt(%struct.aead_request* %14, i32 %17)
  ret i32 %18
}

declare dso_local %struct.omap_aes_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @omap_aes_gcm_crypt(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
