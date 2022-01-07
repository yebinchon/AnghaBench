; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_hw.c_chtls_key_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_hw.c_chtls_key_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct._key_ctx = type { i8*, i8*, i32 }
%struct.tls12_crypto_info_aes_gcm_128 = type { i8*, i8* }
%struct.crypto_aes_ctx = type { i32 }

@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@AEAD_H_SIZE = common dso_local global i32 0, align 4
@CHCR_KEYCTX_CIPHER_KEY_SIZE_128 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"GCM: Invalid key length %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TLS_RX = common dso_local global i32 0, align 4
@CHCR_KEYCTX_MAC_KEY_SIZE_128 = common dso_local global i32 0, align 4
@TLS_CIPHER_AES_GCM_128_SALT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chtls_sock*, %struct._key_ctx*, i32, i32)* @chtls_key_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtls_key_info(%struct.chtls_sock* %0, %struct._key_ctx* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.chtls_sock*, align 8
  %7 = alloca %struct._key_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tls12_crypto_info_aes_gcm_128*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.crypto_aes_ctx, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.chtls_sock* %0, %struct.chtls_sock** %6, align 8
  store %struct._key_ctx* %1, %struct._key_ctx** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* @AES_KEYSIZE_128, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load i32, i32* @AEAD_H_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %27 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %28 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = bitcast i32* %29 to %struct.tls12_crypto_info_aes_gcm_128*
  store %struct.tls12_crypto_info_aes_gcm_128* %30, %struct.tls12_crypto_info_aes_gcm_128** %12, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @roundup(i32 %31, i32 16)
  %33 = sext i32 %32 to i64
  %34 = add i64 24, %33
  %35 = load i32, i32* @AEAD_H_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %34, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @AES_KEYSIZE_128, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i32, i32* @CHCR_KEYCTX_CIPHER_KEY_SIZE_128, align 4
  store i32 %43, i32* %14, align 4
  br label %49

44:                                               ; preds = %4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %123

49:                                               ; preds = %42
  %50 = load %struct.tls12_crypto_info_aes_gcm_128*, %struct.tls12_crypto_info_aes_gcm_128** %12, align 8
  %51 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, %struct.tls12_crypto_info_aes_gcm_128* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @memcpy(i8* %23, i8* %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @aes_expandkey(%struct.crypto_aes_ctx* %16, i8* %23, i32 %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %123

61:                                               ; preds = %49
  %62 = load i32, i32* @AEAD_H_SIZE, align 4
  %63 = call i32 @memset(i8* %26, i32 0, i32 %62)
  %64 = call i32 @aes_encrypt(%struct.crypto_aes_ctx* %16, i8* %26, i8* %26)
  %65 = call i32 @memzero_explicit(%struct.crypto_aes_ctx* %16, i32 4)
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %68 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @TLS_RX, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %61
  %74 = load i32, i32* %15, align 4
  %75 = ashr i32 %74, 4
  %76 = shl i32 %75, 3
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @CHCR_KEYCTX_MAC_KEY_SIZE_128, align 4
  %79 = load i32, i32* %19, align 4
  %80 = call i32 @FILL_KEY_CRX_HDR(i32 %77, i32 %78, i32 0, i32 0, i32 %79)
  %81 = load %struct._key_ctx*, %struct._key_ctx** %7, align 8
  %82 = getelementptr inbounds %struct._key_ctx, %struct._key_ctx* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct._key_ctx*, %struct._key_ctx** %7, align 8
  %84 = call i32 @chtls_rxkey_ivauth(%struct._key_ctx* %83)
  br label %93

85:                                               ; preds = %61
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @CHCR_KEYCTX_MAC_KEY_SIZE_128, align 4
  %88 = load i32, i32* %15, align 4
  %89 = ashr i32 %88, 4
  %90 = call i32 @FILL_KEY_CTX_HDR(i32 %86, i32 %87, i32 0, i32 0, i32 %89)
  %91 = load %struct._key_ctx*, %struct._key_ctx** %7, align 8
  %92 = getelementptr inbounds %struct._key_ctx, %struct._key_ctx* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %85, %73
  %94 = load %struct._key_ctx*, %struct._key_ctx** %7, align 8
  %95 = getelementptr inbounds %struct._key_ctx, %struct._key_ctx* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.tls12_crypto_info_aes_gcm_128*, %struct.tls12_crypto_info_aes_gcm_128** %12, align 8
  %98 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, %struct.tls12_crypto_info_aes_gcm_128* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* @TLS_CIPHER_AES_GCM_128_SALT_SIZE, align 4
  %101 = call i32 @memcpy(i8* %96, i8* %99, i32 %100)
  %102 = load %struct._key_ctx*, %struct._key_ctx** %7, align 8
  %103 = getelementptr inbounds %struct._key_ctx, %struct._key_ctx* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.tls12_crypto_info_aes_gcm_128*, %struct.tls12_crypto_info_aes_gcm_128** %12, align 8
  %106 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, %struct.tls12_crypto_info_aes_gcm_128* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @memcpy(i8* %104, i8* %107, i32 %108)
  %110 = load %struct._key_ctx*, %struct._key_ctx** %7, align 8
  %111 = getelementptr inbounds %struct._key_ctx, %struct._key_ctx* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i32, i32* @AEAD_H_SIZE, align 4
  %117 = call i32 @memcpy(i8* %115, i8* %26, i32 %116)
  %118 = load %struct.tls12_crypto_info_aes_gcm_128*, %struct.tls12_crypto_info_aes_gcm_128** %12, align 8
  %119 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, %struct.tls12_crypto_info_aes_gcm_128* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @memset(i8* %120, i32 0, i32 %121)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %123

123:                                              ; preds = %93, %59, %44
  %124 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @roundup(i32, i32) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @aes_expandkey(%struct.crypto_aes_ctx*, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @aes_encrypt(%struct.crypto_aes_ctx*, i8*, i8*) #2

declare dso_local i32 @memzero_explicit(%struct.crypto_aes_ctx*, i32) #2

declare dso_local i32 @FILL_KEY_CRX_HDR(i32, i32, i32, i32, i32) #2

declare dso_local i32 @chtls_rxkey_ivauth(%struct._key_ctx*) #2

declare dso_local i32 @FILL_KEY_CTX_HDR(i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
