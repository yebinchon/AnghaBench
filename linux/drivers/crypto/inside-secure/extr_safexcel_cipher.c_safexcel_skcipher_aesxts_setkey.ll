; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_skcipher_aesxts_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_skcipher_aesxts_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.safexcel_cipher_ctx = type { i64*, i32, %struct.TYPE_2__, %struct.safexcel_crypto_priv* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.safexcel_crypto_priv = type { i32 }
%struct.crypto_aes_ctx = type { i32* }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EIP197_TRC_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @safexcel_skcipher_aesxts_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_skcipher_aesxts_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.safexcel_cipher_ctx*, align 8
  %10 = alloca %struct.safexcel_crypto_priv*, align 8
  %11 = alloca %struct.crypto_aes_ctx, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %16 = call %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher* %15)
  store %struct.crypto_tfm* %16, %struct.crypto_tfm** %8, align 8
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %18 = call %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %17)
  store %struct.safexcel_cipher_ctx* %18, %struct.safexcel_cipher_ctx** %9, align 8
  %19 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %20 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %19, i32 0, i32 3
  %21 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %20, align 8
  store %struct.safexcel_crypto_priv* %21, %struct.safexcel_crypto_priv** %10, align 8
  %22 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @xts_verify_key(%struct.crypto_skcipher* %22, i32* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %4, align 4
  br label %213

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = lshr i32 %31, 1
  store i32 %32, i32* %14, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @aes_expandkey(%struct.crypto_aes_ctx* %11, i32* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %40 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %41 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %39, i32 %40)
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %4, align 4
  br label %213

43:                                               ; preds = %30
  %44 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %10, align 8
  %45 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EIP197_TRC_CACHE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %89

50:                                               ; preds = %43
  %51 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %52 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %85, %56
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* %14, align 4
  %61 = zext i32 %60 to i64
  %62 = udiv i64 %61, 4
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %57
  %65 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %66 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %11, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @cpu_to_le32(i32 %77)
  %79 = icmp ne i64 %71, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %64
  %81 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %82 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  br label %88

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %57

88:                                               ; preds = %80, %57
  br label %89

89:                                               ; preds = %88, %50, %43
  store i32 0, i32* %13, align 4
  br label %90

90:                                               ; preds = %111, %89
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %14, align 4
  %94 = zext i32 %93 to i64
  %95 = udiv i64 %94, 4
  %96 = icmp ult i64 %92, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %11, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @cpu_to_le32(i32 %103)
  %105 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %106 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  store i64 %104, i64* %110, align 8
  br label %111

111:                                              ; preds = %97
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %90

114:                                              ; preds = %90
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %14, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @aes_expandkey(%struct.crypto_aes_ctx* %11, i32* %118, i32 %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %114
  %124 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %125 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %126 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %124, i32 %125)
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %4, align 4
  br label %213

128:                                              ; preds = %114
  %129 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %10, align 8
  %130 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @EIP197_TRC_CACHE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %178

135:                                              ; preds = %128
  %136 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %137 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %178

141:                                              ; preds = %135
  store i32 0, i32* %13, align 4
  br label %142

142:                                              ; preds = %174, %141
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = load i32, i32* %14, align 4
  %146 = zext i32 %145 to i64
  %147 = udiv i64 %146, 4
  %148 = icmp ult i64 %144, %147
  br i1 %148, label %149, label %177

149:                                              ; preds = %142
  %150 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %151 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = load i32, i32* %14, align 4
  %156 = zext i32 %155 to i64
  %157 = udiv i64 %156, 4
  %158 = add i64 %154, %157
  %159 = getelementptr inbounds i64, i64* %152, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %11, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @cpu_to_le32(i32 %166)
  %168 = icmp ne i64 %160, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %149
  %170 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %171 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  br label %177

173:                                              ; preds = %149
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %13, align 4
  br label %142

177:                                              ; preds = %169, %142
  br label %178

178:                                              ; preds = %177, %135, %128
  store i32 0, i32* %13, align 4
  br label %179

179:                                              ; preds = %204, %178
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = load i32, i32* %14, align 4
  %183 = zext i32 %182 to i64
  %184 = udiv i64 %183, 4
  %185 = icmp ult i64 %181, %184
  br i1 %185, label %186, label %207

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %11, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @cpu_to_le32(i32 %192)
  %194 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %195 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %194, i32 0, i32 0
  %196 = load i64*, i64** %195, align 8
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = load i32, i32* %14, align 4
  %200 = zext i32 %199 to i64
  %201 = udiv i64 %200, 4
  %202 = add i64 %198, %201
  %203 = getelementptr inbounds i64, i64* %196, i64 %202
  store i64 %193, i64* %203, align 8
  br label %204

204:                                              ; preds = %186
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %13, align 4
  br label %179

207:                                              ; preds = %179
  %208 = load i32, i32* %14, align 4
  %209 = shl i32 %208, 1
  %210 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %211 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 8
  %212 = call i32 @memzero_explicit(%struct.crypto_aes_ctx* %11, i32 8)
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %207, %123, %38, %28
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher*) #1

declare dso_local %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @xts_verify_key(%struct.crypto_skcipher*, i32*, i32) #1

declare dso_local i32 @aes_expandkey(%struct.crypto_aes_ctx*, i32*, i32) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_aes_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
