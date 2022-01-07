; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_aead_gcm_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_aead_gcm_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.safexcel_cipher_ctx = type { i64*, i32, i64*, %struct.TYPE_2__, i32, %struct.safexcel_crypto_priv* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.safexcel_crypto_priv = type { i32 }
%struct.crypto_aes_ctx = type { i32* }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EIP197_TRC_CACHE = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @safexcel_aead_gcm_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_aead_gcm_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.safexcel_cipher_ctx*, align 8
  %10 = alloca %struct.safexcel_crypto_priv*, align 8
  %11 = alloca %struct.crypto_aes_ctx, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %18 = call %struct.crypto_tfm* @crypto_aead_tfm(%struct.crypto_aead* %17)
  store %struct.crypto_tfm* %18, %struct.crypto_tfm** %8, align 8
  %19 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %20 = call %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %19)
  store %struct.safexcel_cipher_ctx* %20, %struct.safexcel_cipher_ctx** %9, align 8
  %21 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %22 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %21, i32 0, i32 5
  %23 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %22, align 8
  store %struct.safexcel_crypto_priv* %23, %struct.safexcel_crypto_priv** %10, align 8
  %24 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %25 = ashr i32 %24, 2
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %12, align 8
  %28 = alloca %struct.crypto_aes_ctx, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @aes_expandkey(%struct.crypto_aes_ctx* %11, i32* %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %36 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %37 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %35, i32 %36)
  %38 = call i32 @memzero_explicit(%struct.crypto_aes_ctx* %11, i32 8)
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %227

40:                                               ; preds = %3
  %41 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %10, align 8
  %42 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @EIP197_TRC_CACHE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %86

47:                                               ; preds = %40
  %48 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %49 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %86

53:                                               ; preds = %47
  store i32 0, i32* %15, align 4
  br label %54

54:                                               ; preds = %82, %53
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = udiv i64 %58, 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %54
  %62 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %63 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %11, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @cpu_to_le32(i32 %74)
  %76 = icmp ne i64 %68, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %61
  %78 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %79 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %85

81:                                               ; preds = %61
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %54

85:                                               ; preds = %77, %54
  br label %86

86:                                               ; preds = %85, %47, %40
  store i32 0, i32* %15, align 4
  br label %87

87:                                               ; preds = %108, %86
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = udiv i64 %91, 8
  %93 = icmp ult i64 %89, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %11, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @cpu_to_le32(i32 %100)
  %102 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %103 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  store i64 %101, i64* %107, align 8
  br label %108

108:                                              ; preds = %94
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %15, align 4
  br label %87

111:                                              ; preds = %87
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %114 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %116 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %119 = call i32 @crypto_cipher_clear_flags(i32 %117, i32 %118)
  %120 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %121 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %124 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %123)
  %125 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %126 = and i32 %124, %125
  %127 = call i32 @crypto_cipher_set_flags(i32 %122, i32 %126)
  %128 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %129 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @crypto_cipher_setkey(i32 %130, i32* %131, i32 %132)
  store i32 %133, i32* %14, align 4
  %134 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %135 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %136 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @crypto_cipher_get_flags(i32 %137)
  %139 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %140 = and i32 %138, %139
  %141 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %134, i32 %140)
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %111
  %145 = load i32, i32* %14, align 4
  store i32 %145, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %227

146:                                              ; preds = %111
  %147 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %148 = call i32 @memset(%struct.crypto_aes_ctx* %28, i32 0, i32 %147)
  %149 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %150 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = bitcast %struct.crypto_aes_ctx* %28 to i32*
  %153 = bitcast %struct.crypto_aes_ctx* %28 to i32*
  %154 = call i32 @crypto_cipher_encrypt_one(i32 %151, i32* %152, i32* %153)
  %155 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %10, align 8
  %156 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @EIP197_TRC_CACHE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %199

161:                                              ; preds = %146
  %162 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %163 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %199

167:                                              ; preds = %161
  store i32 0, i32* %15, align 4
  br label %168

168:                                              ; preds = %195, %167
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %172 = sext i32 %171 to i64
  %173 = udiv i64 %172, 8
  %174 = icmp ult i64 %170, %173
  br i1 %174, label %175, label %198

175:                                              ; preds = %168
  %176 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %177 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %176, i32 0, i32 2
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %28, i64 %184
  %186 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = call i64 @cpu_to_be32(i32* %187)
  %189 = icmp ne i64 %182, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %175
  %191 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %192 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  store i32 1, i32* %193, align 8
  br label %198

194:                                              ; preds = %175
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  br label %168

198:                                              ; preds = %190, %168
  br label %199

199:                                              ; preds = %198, %161, %146
  store i32 0, i32* %15, align 4
  br label %200

200:                                              ; preds = %220, %199
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %204 = sext i32 %203 to i64
  %205 = udiv i64 %204, 8
  %206 = icmp ult i64 %202, %205
  br i1 %206, label %207, label %223

207:                                              ; preds = %200
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %28, i64 %209
  %211 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = call i64 @cpu_to_be32(i32* %212)
  %214 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %215 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %214, i32 0, i32 2
  %216 = load i64*, i64** %215, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  store i64 %213, i64* %219, align 8
  br label %220

220:                                              ; preds = %207
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %15, align 4
  br label %200

223:                                              ; preds = %200
  %224 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %225 = call i32 @memzero_explicit(%struct.crypto_aes_ctx* %28, i32 %224)
  %226 = call i32 @memzero_explicit(%struct.crypto_aes_ctx* %11, i32 8)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %227

227:                                              ; preds = %223, %144, %34
  %228 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %228)
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local %struct.crypto_tfm* @crypto_aead_tfm(%struct.crypto_aead*) #1

declare dso_local %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @aes_expandkey(%struct.crypto_aes_ctx*, i32*, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_aes_ctx*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @crypto_cipher_clear_flags(i32, i32) #1

declare dso_local i32 @crypto_cipher_set_flags(i32, i32) #1

declare dso_local i32 @crypto_aead_get_flags(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_cipher_setkey(i32, i32*, i32) #1

declare dso_local i32 @crypto_cipher_get_flags(i32) #1

declare dso_local i32 @memset(%struct.crypto_aes_ctx*, i32, i32) #1

declare dso_local i32 @crypto_cipher_encrypt_one(i32, i32*, i32*) #1

declare dso_local i64 @cpu_to_be32(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
