; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_fill_sec_cpl_for_aead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_fill_sec_cpl_for_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpl_tx_sec_pdu = type { i32, i32, i32, i32, i32, i32 }
%struct.aead_request = type { i32, i8 }
%struct.crypto_aead = type { i32 }
%struct.chcr_aead_ctx = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CHCR_SCMD_CIPHER_MODE_AES_CCM = common dso_local global i32 0, align 4
@CHCR_SCMD_AUTH_MODE_CBCMAC = common dso_local global i32 0, align 4
@CRYPTO_ALG_SUB_TYPE_AEAD_RFC4309 = common dso_local global i64 0, align 8
@CCM_B0_SIZE = common dso_local global i32 0, align 4
@CCM_AAD_FIELD_SIZE = common dso_local global i32 0, align 4
@IV = common dso_local global i32 0, align 4
@CHCR_DECRYPT_OP = common dso_local global i16 0, align 2
@CHCR_ENCRYPT_OP = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpl_tx_sec_pdu*, i32, %struct.aead_request*, i16)* @fill_sec_cpl_for_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_sec_cpl_for_aead(%struct.cpl_tx_sec_pdu* %0, i32 %1, %struct.aead_request* %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.cpl_tx_sec_pdu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aead_request*, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca %struct.chcr_aead_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store %struct.cpl_tx_sec_pdu* %0, %struct.cpl_tx_sec_pdu** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.aead_request* %2, %struct.aead_request** %7, align 8
  store i16 %3, i16* %8, align 2
  %18 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %19 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %18)
  store %struct.crypto_aead* %19, %struct.crypto_aead** %9, align 8
  %20 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %21 = call %struct.TYPE_3__* @a_ctx(%struct.crypto_aead* %20)
  %22 = call %struct.chcr_aead_ctx* @AEAD_CTX(%struct.TYPE_3__* %21)
  store %struct.chcr_aead_ctx* %22, %struct.chcr_aead_ctx** %10, align 8
  %23 = load i32, i32* @CHCR_SCMD_CIPHER_MODE_AES_CCM, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @CHCR_SCMD_AUTH_MODE_CBCMAC, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %26 = call %struct.TYPE_3__* @a_ctx(%struct.crypto_aead* %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %29 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %30 = call i64 @get_aead_subtype(%struct.crypto_aead* %29)
  %31 = load i64, i64* @CRYPTO_ALG_SUB_TYPE_AEAD_RFC4309, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %4
  %34 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %35 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 8
  store i32 %37, i32* %17, align 4
  br label %42

38:                                               ; preds = %4
  %39 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %40 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %17, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* @CCM_B0_SIZE, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @CCM_AAD_FIELD_SIZE, align 4
  br label %49

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = add i32 %43, %50
  store i32 %51, i32* %14, align 4
  %52 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %53 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %52, i32 0, i32 1
  %54 = load i8, i8* %53, align 4
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %59 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IV, align 4
  %62 = add nsw i32 %60, %61
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %14, align 4
  %65 = add i32 %63, %64
  br label %67

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66, %57
  %68 = phi i32 [ %65, %57 ], [ 0, %66 ]
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %16, align 1
  %70 = load i16, i16* %8, align 2
  %71 = zext i16 %70 to i32
  %72 = load i16, i16* @CHCR_DECRYPT_OP, align 2
  %73 = zext i16 %72 to i32
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %77 = call zeroext i8 @crypto_aead_authsize(%struct.crypto_aead* %76)
  %78 = zext i8 %77 to i32
  %79 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %80 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %79, i32 0, i32 1
  %81 = load i8, i8* %80, align 4
  %82 = zext i8 %81 to i32
  %83 = icmp ne i32 %78, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %86 = call zeroext i8 @crypto_aead_authsize(%struct.crypto_aead* %85)
  store i8 %86, i8* %15, align 1
  br label %88

87:                                               ; preds = %75
  store i8 0, i8* %16, align 1
  br label %88

88:                                               ; preds = %87, %84
  br label %89

89:                                               ; preds = %88, %67
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @FILL_SEC_CPL_OP_IVINSR(i32 %90, i32 2, i32 1)
  %92 = load %struct.cpl_tx_sec_pdu*, %struct.cpl_tx_sec_pdu** %5, align 8
  %93 = getelementptr inbounds %struct.cpl_tx_sec_pdu, %struct.cpl_tx_sec_pdu* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %95 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IV, align 4
  %98 = add nsw i32 %96, %97
  %99 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %100 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %99, i32 0, i32 1
  %101 = load i8, i8* %100, align 4
  %102 = zext i8 %101 to i32
  %103 = add nsw i32 %98, %102
  %104 = load i32, i32* %14, align 4
  %105 = add i32 %103, %104
  %106 = call i32 @htonl(i32 %105)
  %107 = load %struct.cpl_tx_sec_pdu*, %struct.cpl_tx_sec_pdu** %5, align 8
  %108 = getelementptr inbounds %struct.cpl_tx_sec_pdu, %struct.cpl_tx_sec_pdu* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @IV, align 4
  %110 = add nsw i32 1, %109
  %111 = load i32, i32* @IV, align 4
  %112 = load i32, i32* %17, align 4
  %113 = add i32 %111, %112
  %114 = load i32, i32* %14, align 4
  %115 = add i32 %113, %114
  %116 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %117 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IV, align 4
  %120 = add nsw i32 %118, %119
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* %14, align 4
  %123 = add i32 %121, %122
  %124 = call i32 @FILL_SEC_CPL_CIPHERSTOP_HI(i32 %110, i32 %115, i32 %123, i32 0)
  %125 = load %struct.cpl_tx_sec_pdu*, %struct.cpl_tx_sec_pdu** %5, align 8
  %126 = getelementptr inbounds %struct.cpl_tx_sec_pdu, %struct.cpl_tx_sec_pdu* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load i8, i8* %16, align 1
  %128 = load i8, i8* %15, align 1
  %129 = load i16, i16* %8, align 2
  %130 = zext i16 %129 to i32
  %131 = load i16, i16* @CHCR_ENCRYPT_OP, align 2
  %132 = zext i16 %131 to i32
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %89
  br label %139

135:                                              ; preds = %89
  %136 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %137 = call zeroext i8 @crypto_aead_authsize(%struct.crypto_aead* %136)
  %138 = zext i8 %137 to i32
  br label %139

139:                                              ; preds = %135, %134
  %140 = phi i32 [ 0, %134 ], [ %138, %135 ]
  %141 = trunc i32 %140 to i8
  %142 = call i32 @FILL_SEC_CPL_AUTHINSERT(i32 0, i8 zeroext %127, i8 zeroext %128, i8 zeroext %141)
  %143 = load %struct.cpl_tx_sec_pdu*, %struct.cpl_tx_sec_pdu** %5, align 8
  %144 = getelementptr inbounds %struct.cpl_tx_sec_pdu, %struct.cpl_tx_sec_pdu* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load i16, i16* %8, align 2
  %146 = load i16, i16* %8, align 2
  %147 = zext i16 %146 to i32
  %148 = load i16, i16* @CHCR_ENCRYPT_OP, align 2
  %149 = zext i16 %148 to i32
  %150 = icmp eq i32 %147, %149
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 0, i32 1
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %10, align 8
  %156 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @IV, align 4
  %159 = ashr i32 %158, 1
  %160 = call i32 @FILL_SEC_CPL_SCMD0_SEQNO(i16 zeroext %145, i32 %152, i32 %153, i32 %154, i32 %157, i32 %159)
  %161 = load %struct.cpl_tx_sec_pdu*, %struct.cpl_tx_sec_pdu** %5, align 8
  %162 = getelementptr inbounds %struct.cpl_tx_sec_pdu, %struct.cpl_tx_sec_pdu* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @FILL_SEC_CPL_IVGEN_HDRLEN(i32 0, i32 0, i32 1, i32 0, i32 0, i32 %163)
  %165 = load %struct.cpl_tx_sec_pdu*, %struct.cpl_tx_sec_pdu** %5, align 8
  %166 = getelementptr inbounds %struct.cpl_tx_sec_pdu, %struct.cpl_tx_sec_pdu* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.chcr_aead_ctx* @AEAD_CTX(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @a_ctx(%struct.crypto_aead*) #1

declare dso_local i64 @get_aead_subtype(%struct.crypto_aead*) #1

declare dso_local zeroext i8 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @FILL_SEC_CPL_OP_IVINSR(i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @FILL_SEC_CPL_CIPHERSTOP_HI(i32, i32, i32, i32) #1

declare dso_local i32 @FILL_SEC_CPL_AUTHINSERT(i32, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @FILL_SEC_CPL_SCMD0_SEQNO(i16 zeroext, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FILL_SEC_CPL_IVGEN_HDRLEN(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
