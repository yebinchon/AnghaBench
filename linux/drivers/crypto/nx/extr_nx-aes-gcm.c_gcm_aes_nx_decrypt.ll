; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-gcm.c_gcm_aes_nx_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-gcm.c_gcm_aes_nx_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32 }
%struct.nx_gcm_rctx = type { i8* }

@GCM_AES_IV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @gcm_aes_nx_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_aes_nx_decrypt(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.nx_gcm_rctx*, align 8
  %4 = alloca i8*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %5 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %6 = call %struct.nx_gcm_rctx* @aead_request_ctx(%struct.aead_request* %5)
  store %struct.nx_gcm_rctx* %6, %struct.nx_gcm_rctx** %3, align 8
  %7 = load %struct.nx_gcm_rctx*, %struct.nx_gcm_rctx** %3, align 8
  %8 = getelementptr inbounds %struct.nx_gcm_rctx, %struct.nx_gcm_rctx* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %12 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GCM_AES_IV_SIZE, align 4
  %15 = call i32 @memcpy(i8* %10, i32 %13, i32 %14)
  %16 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %18 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gcm_aes_nx_crypt(%struct.aead_request* %16, i32 0, i32 %19)
  ret i32 %20
}

declare dso_local %struct.nx_gcm_rctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @gcm_aes_nx_crypt(%struct.aead_request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
