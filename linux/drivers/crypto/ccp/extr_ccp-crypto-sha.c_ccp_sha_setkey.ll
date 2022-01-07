; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-sha.c_ccp_sha_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-sha.c_ccp_sha_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.ccp_ctx = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32*, i32, i32, %struct.crypto_shash* }

@sdesc = common dso_local global %struct.TYPE_8__* null, align 8
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HMAC_IPAD_VALUE = common dso_local global i32 0, align 4
@HMAC_OPAD_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ahash*, i32*, i32)* @ccp_sha_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_sha_setkey(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccp_ctx*, align 8
  %9 = alloca %struct.crypto_shash*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %15 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %14)
  %16 = call %struct.ccp_ctx* @crypto_tfm_ctx(i32 %15)
  store %struct.ccp_ctx* %16, %struct.ccp_ctx** %8, align 8
  %17 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 6
  %21 = load %struct.crypto_shash*, %struct.crypto_shash** %20, align 8
  store %struct.crypto_shash* %21, %struct.crypto_shash** %9, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sdesc, align 8
  %23 = load %struct.crypto_shash*, %struct.crypto_shash** %9, align 8
  %24 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_8__* %22, %struct.crypto_shash* %23)
  %25 = load %struct.crypto_shash*, %struct.crypto_shash** %9, align 8
  %26 = call i32 @crypto_shash_blocksize(%struct.crypto_shash* %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.crypto_shash*, %struct.crypto_shash** %9, align 8
  %28 = call i32 @crypto_shash_digestsize(%struct.crypto_shash* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %34 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @memset(i32* %37, i32 0, i32 8)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %3
  %43 = load %struct.crypto_shash*, %struct.crypto_shash** %9, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sdesc, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store %struct.crypto_shash* %43, %struct.crypto_shash** %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sdesc, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @crypto_shash_digest(%struct.TYPE_8__* %46, i32* %47, i32 %48, i32* %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %42
  %58 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %59 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %60 = call i32 @crypto_ahash_set_flags(%struct.crypto_ahash* %58, i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %143

63:                                               ; preds = %42
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %7, align 4
  br label %74

65:                                               ; preds = %3
  %66 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @memcpy(i32* %70, i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %65, %63
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %118, %74
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %121

79:                                               ; preds = %75
  %80 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %81 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @HMAC_IPAD_VALUE, align 4
  %90 = xor i32 %88, %89
  %91 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %92 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %90, i32* %98, align 4
  %99 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %100 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @HMAC_OPAD_VALUE, align 4
  %109 = xor i32 %107, %108
  %110 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %111 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %109, i32* %117, align 4
  br label %118

118:                                              ; preds = %79
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %75

121:                                              ; preds = %75
  %122 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %123 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 5
  %126 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %127 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @sg_init_one(i32* %125, i32* %130, i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %135 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 4
  store i32 %133, i32* %137, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %140 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  store i32 %138, i32* %142, align 8
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %121, %57
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.ccp_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_8__*, %struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_blocksize(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_digestsize(%struct.crypto_shash*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_8__*, i32*, i32, i32*) #1

declare dso_local i32 @crypto_ahash_set_flags(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sg_init_one(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
