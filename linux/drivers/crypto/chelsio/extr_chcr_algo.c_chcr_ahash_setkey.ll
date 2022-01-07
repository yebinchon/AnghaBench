; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ahash_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ahash_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.hmac_ctx = type { i32*, i32*, i32 }

@shash = common dso_local global %struct.TYPE_5__* null, align 8
@IPAD_DATA = common dso_local global i32 0, align 4
@OPAD_DATA = common dso_local global i32 0, align 4
@SHA224_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA384_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ahash*, i32*, i32)* @chcr_ahash_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_ahash_setkey(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hmac_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %14 = call i32 @h_ctx(%struct.crypto_ahash* %13)
  %15 = call %struct.hmac_ctx* @HMAC_CTX(i32 %14)
  store %struct.hmac_ctx* %15, %struct.hmac_ctx** %7, align 8
  %16 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %17 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %19 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %18)
  %20 = call i32 @crypto_tfm_alg_blocksize(i32 %19)
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shash, align 8
  %22 = load %struct.hmac_ctx*, %struct.hmac_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_5__* %21, i32 %24)
  %26 = load %struct.hmac_ctx*, %struct.hmac_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shash, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shash, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.hmac_ctx*, %struct.hmac_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @crypto_shash_digest(%struct.TYPE_5__* %35, i32* %36, i32 %37, i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %153

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %6, align 4
  br label %54

47:                                               ; preds = %3
  %48 = load %struct.hmac_ctx*, %struct.hmac_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @memcpy(i32* %50, i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %45
  %55 = load %struct.hmac_ctx*, %struct.hmac_ctx** %7, align 8
  %56 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sub i32 %61, %62
  %64 = call i32 @memset(i32* %60, i32 0, i32 %63)
  %65 = load %struct.hmac_ctx*, %struct.hmac_ctx** %7, align 8
  %66 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.hmac_ctx*, %struct.hmac_ctx** %7, align 8
  %69 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @memcpy(i32* %67, i32* %70, i32 %71)
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %99, %54
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = udiv i64 %77, 4
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %73
  %81 = load i32, i32* @IPAD_DATA, align 4
  %82 = load %struct.hmac_ctx*, %struct.hmac_ctx** %7, align 8
  %83 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %82, i32 0, i32 1
  %84 = bitcast i32** %83 to i32*
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = xor i32 %88, %81
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @OPAD_DATA, align 4
  %91 = load %struct.hmac_ctx*, %struct.hmac_ctx** %7, align 8
  %92 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %91, i32 0, i32 0
  %93 = bitcast i32** %92 to i32*
  %94 = load i32, i32* %10, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = xor i32 %97, %90
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %80
  %100 = load i32, i32* %10, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %73

102:                                              ; preds = %73
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @SHA224_DIGEST_SIZE, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  store i32 %108, i32* %12, align 4
  br label %116

109:                                              ; preds = %102
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @SHA384_DIGEST_SIZE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %113, %109
  br label %116

116:                                              ; preds = %115, %107
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shash, align 8
  %118 = load %struct.hmac_ctx*, %struct.hmac_ctx** %7, align 8
  %119 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.hmac_ctx*, %struct.hmac_ctx** %7, align 8
  %122 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @chcr_compute_partial_hash(%struct.TYPE_5__* %117, i32* %120, i32* %123, i32 %124)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %153

129:                                              ; preds = %116
  %130 = load %struct.hmac_ctx*, %struct.hmac_ctx** %7, align 8
  %131 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @chcr_change_order(i32* %132, i32 %133)
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shash, align 8
  %136 = load %struct.hmac_ctx*, %struct.hmac_ctx** %7, align 8
  %137 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.hmac_ctx*, %struct.hmac_ctx** %7, align 8
  %140 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @chcr_compute_partial_hash(%struct.TYPE_5__* %135, i32* %138, i32* %141, i32 %142)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %129
  br label %153

147:                                              ; preds = %129
  %148 = load %struct.hmac_ctx*, %struct.hmac_ctx** %7, align 8
  %149 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @chcr_change_order(i32* %150, i32 %151)
  br label %153

153:                                              ; preds = %147, %146, %128, %44
  %154 = load i32, i32* %11, align 4
  ret i32 %154
}

declare dso_local %struct.hmac_ctx* @HMAC_CTX(i32) #1

declare dso_local i32 @h_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_5__*, i32*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @chcr_compute_partial_hash(%struct.TYPE_5__*, i32*, i32*, i32) #1

declare dso_local i32 @chcr_change_order(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
