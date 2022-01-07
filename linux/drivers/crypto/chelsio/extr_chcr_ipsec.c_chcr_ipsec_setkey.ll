; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_ipsec.c_chcr_ipsec_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_ipsec.c_chcr_ipsec_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }
%struct.ipsec_sa_entry = type { i32, i32, i32, i32, i32 }
%struct.crypto_aes_ctx = type { i32 }

@AEAD_H_SIZE = common dso_local global i32 0, align 4
@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_CIPHER_KEY_SIZE_128 = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_CIPHER_KEY_SIZE_192 = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_CIPHER_KEY_SIZE_256 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"GCM: Invalid key length %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CHCR_KEYCTX_MAC_KEY_SIZE_128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.ipsec_sa_entry*)* @chcr_ipsec_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_ipsec_setkey(%struct.xfrm_state* %0, %struct.ipsec_sa_entry* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.ipsec_sa_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.crypto_aes_ctx, align 4
  %12 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.ipsec_sa_entry* %1, %struct.ipsec_sa_entry** %4, align 8
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 7
  %19 = sdiv i32 %18, 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %21 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %25 = load i32, i32* @AEAD_H_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %29, 3
  br i1 %30, label %31, label %42

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, 4
  store i32 %33, i32* %5, align 4
  %34 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %4, align 8
  %35 = getelementptr inbounds %struct.ipsec_sa_entry, %struct.ipsec_sa_entry* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = call i32 @memcpy(i32 %36, i8* %40, i32 4)
  br label %42

42:                                               ; preds = %31, %2
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @AES_KEYSIZE_128, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @CHCR_KEYCTX_CIPHER_KEY_SIZE_128, align 4
  store i32 %47, i32* %7, align 4
  br label %67

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @AES_KEYSIZE_192, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @CHCR_KEYCTX_CIPHER_KEY_SIZE_192, align 4
  store i32 %53, i32* %7, align 4
  br label %66

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @AES_KEYSIZE_256, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @CHCR_KEYCTX_CIPHER_KEY_SIZE_256, align 4
  store i32 %59, i32* %7, align 4
  br label %65

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %12, align 4
  br label %126

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %52
  br label %67

67:                                               ; preds = %66, %46
  %68 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %4, align 8
  %69 = getelementptr inbounds %struct.ipsec_sa_entry, %struct.ipsec_sa_entry* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @memcpy(i32 %70, i8* %71, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %4, align 8
  %76 = getelementptr inbounds %struct.ipsec_sa_entry, %struct.ipsec_sa_entry* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @DIV_ROUND_UP(i32 %77, i32 16)
  %79 = shl i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = add i64 4, %80
  %82 = load i32, i32* @AEAD_H_SIZE, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %81, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @CHCR_KEYCTX_MAC_KEY_SIZE_128, align 4
  %88 = load i32, i32* %8, align 4
  %89 = ashr i32 %88, 4
  %90 = call i32 @FILL_KEY_CTX_HDR(i32 %86, i32 %87, i32 0, i32 0, i32 %89)
  %91 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %4, align 8
  %92 = getelementptr inbounds %struct.ipsec_sa_entry, %struct.ipsec_sa_entry* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @aes_expandkey(%struct.crypto_aes_ctx* %11, i8* %93, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %67
  %99 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %4, align 8
  %100 = getelementptr inbounds %struct.ipsec_sa_entry, %struct.ipsec_sa_entry* %99, i32 0, i32 0
  store i32 0, i32* %100, align 4
  br label %126

101:                                              ; preds = %67
  %102 = load i32, i32* @AEAD_H_SIZE, align 4
  %103 = call i32 @memset(i8* %28, i32 0, i32 %102)
  %104 = call i32 @aes_encrypt(%struct.crypto_aes_ctx* %11, i8* %28, i8* %28)
  %105 = call i32 @memzero_explicit(%struct.crypto_aes_ctx* %11, i32 4)
  %106 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %4, align 8
  %107 = getelementptr inbounds %struct.ipsec_sa_entry, %struct.ipsec_sa_entry* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %4, align 8
  %110 = getelementptr inbounds %struct.ipsec_sa_entry, %struct.ipsec_sa_entry* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @DIV_ROUND_UP(i32 %111, i32 16)
  %113 = mul nsw i32 %112, 16
  %114 = add nsw i32 %108, %113
  %115 = load i32, i32* @AEAD_H_SIZE, align 4
  %116 = call i32 @memcpy(i32 %114, i8* %28, i32 %115)
  %117 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %4, align 8
  %118 = getelementptr inbounds %struct.ipsec_sa_entry, %struct.ipsec_sa_entry* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @DIV_ROUND_UP(i32 %119, i32 16)
  %121 = shl i32 %120, 4
  %122 = load i32, i32* @AEAD_H_SIZE, align 4
  %123 = add nsw i32 %121, %122
  %124 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %4, align 8
  %125 = getelementptr inbounds %struct.ipsec_sa_entry, %struct.ipsec_sa_entry* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %101, %98, %60
  %127 = load i32, i32* %12, align 4
  %128 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %128)
  ret i32 %127
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #2

declare dso_local i32 @FILL_KEY_CTX_HDR(i32, i32, i32, i32, i32) #2

declare dso_local i32 @aes_expandkey(%struct.crypto_aes_ctx*, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @aes_encrypt(%struct.crypto_aes_ctx*, i8*, i8*) #2

declare dso_local i32 @memzero_explicit(%struct.crypto_aes_ctx*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
