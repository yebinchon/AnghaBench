; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes-gcm.c_omap_aes_4106gcm_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes-gcm.c_omap_aes_4106gcm_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.omap_aes_ctx = type { i32 }
%struct.omap_aes_reqctx = type { i64 }

@FLAGS_GCM = common dso_local global i32 0, align 4
@FLAGS_RFC4106_GCM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_aes_4106gcm_decrypt(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.omap_aes_ctx*, align 8
  %4 = alloca %struct.omap_aes_reqctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %5 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %6 = call i32 @crypto_aead_reqtfm(%struct.aead_request* %5)
  %7 = call %struct.omap_aes_ctx* @crypto_aead_ctx(i32 %6)
  store %struct.omap_aes_ctx* %7, %struct.omap_aes_ctx** %3, align 8
  %8 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %9 = call %struct.omap_aes_reqctx* @aead_request_ctx(%struct.aead_request* %8)
  store %struct.omap_aes_reqctx* %9, %struct.omap_aes_reqctx** %4, align 8
  %10 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %4, align 8
  %11 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.omap_aes_ctx*, %struct.omap_aes_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.omap_aes_ctx, %struct.omap_aes_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @memcpy(i64 %12, i32 %15, i32 4)
  %17 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %4, align 8
  %18 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 4
  %21 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %22 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcpy(i64 %20, i32 %23, i32 8)
  %25 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %26 = load i32, i32* @FLAGS_GCM, align 4
  %27 = load i32, i32* @FLAGS_RFC4106_GCM, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @omap_aes_gcm_crypt(%struct.aead_request* %25, i32 %28)
  ret i32 %29
}

declare dso_local %struct.omap_aes_ctx* @crypto_aead_ctx(i32) #1

declare dso_local i32 @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.omap_aes_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @omap_aes_gcm_crypt(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
