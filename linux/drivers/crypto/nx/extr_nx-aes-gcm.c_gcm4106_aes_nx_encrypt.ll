; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-gcm.c_gcm4106_aes_nx_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-gcm.c_gcm4106_aes_nx_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i8*, i32 }
%struct.nx_crypto_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.nx_gcm_rctx = type { i8* }

@NX_GCM4106_NONCE_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @gcm4106_aes_nx_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm4106_aes_nx_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.nx_crypto_ctx*, align 8
  %5 = alloca %struct.nx_gcm_rctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %8 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %9 = call i32 @crypto_aead_reqtfm(%struct.aead_request* %8)
  %10 = call %struct.nx_crypto_ctx* @crypto_aead_ctx(i32 %9)
  store %struct.nx_crypto_ctx* %10, %struct.nx_crypto_ctx** %4, align 8
  %11 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %12 = call %struct.nx_gcm_rctx* @aead_request_ctx(%struct.aead_request* %11)
  store %struct.nx_gcm_rctx* %12, %struct.nx_gcm_rctx** %5, align 8
  %13 = load %struct.nx_gcm_rctx*, %struct.nx_gcm_rctx** %5, align 8
  %14 = getelementptr inbounds %struct.nx_gcm_rctx, %struct.nx_gcm_rctx* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @NX_GCM4106_NONCE_LEN, align 4
  %24 = call i32 @memcpy(i8* %21, i8* %22, i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @NX_GCM4106_NONCE_LEN, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %30 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @memcpy(i8* %28, i8* %31, i32 8)
  %33 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %34 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %47

40:                                               ; preds = %1
  %41 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %42 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 8
  %46 = call i32 @gcm_aes_nx_crypt(%struct.aead_request* %41, i32 1, i32 %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %40, %37
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.nx_crypto_ctx* @crypto_aead_ctx(i32) #1

declare dso_local i32 @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.nx_gcm_rctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @gcm_aes_nx_crypt(%struct.aead_request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
