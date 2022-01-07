; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_register_alg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_register_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ahash_alg, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.ahash_alg = type { %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.crypto_alg, i32 }
%struct.crypto_alg = type { i32, i8*, i32, i32, i32*, i32, i8*, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i8*, i8* }
%struct.TYPE_12__ = type { i32, i32, i8*, i32*, i32, i8*, i8* }

@driver_algs = common dso_local global %struct.TYPE_11__* null, align 8
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CHCR_CRA_PRIORITY = common dso_local global i8* null, align 8
@THIS_MODULE = common dso_local global i8* null, align 8
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@crypto_ablkcipher_type = common dso_local global i32 0, align 4
@chcr_aead_encrypt = common dso_local global i32 0, align 4
@chcr_aead_decrypt = common dso_local global i32 0, align 4
@chcr_aead_cra_init = common dso_local global i32 0, align 4
@chcr_aead_cra_exit = common dso_local global i32 0, align 4
@chcr_ahash_update = common dso_local global i32 0, align 4
@chcr_ahash_final = common dso_local global i32 0, align 4
@chcr_ahash_finup = common dso_local global i32 0, align 4
@chcr_ahash_digest = common dso_local global i32 0, align 4
@chcr_ahash_export = common dso_local global i32 0, align 4
@chcr_ahash_import = common dso_local global i32 0, align 4
@SZ_AHASH_REQ_CTX = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_HMAC = common dso_local global i32 0, align 4
@chcr_hmac_cra_init = common dso_local global i32 0, align 4
@chcr_hmac_cra_exit = common dso_local global i32* null, align 8
@chcr_hmac_init = common dso_local global i32 0, align 4
@chcr_ahash_setkey = common dso_local global i32 0, align 4
@SZ_AHASH_H_CTX = common dso_local global i32 0, align 4
@chcr_sha_init = common dso_local global i32 0, align 4
@SZ_AHASH_CTX = common dso_local global i32 0, align 4
@chcr_sha_cra_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"chcr : %s : Algorithm registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @chcr_register_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_register_alg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.crypto_alg, align 8
  %3 = alloca %struct.ahash_alg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 0, i32* %4, align 4
  store i8* null, i8** %6, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %292, %0
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %295

12:                                               ; preds = %7
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %292

21:                                               ; preds = %12
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %279 [
    i32 130, label %30
    i32 129, label %94
    i32 128, label %163
  ]

30:                                               ; preds = %21
  %31 = load i8*, i8** @CHCR_CRA_PRIORITY, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 6
  store i8* %31, i8** %38, align 8
  %39 = load i8*, i8** @THIS_MODULE, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 5
  store i8* %39, i8** %46, align 8
  %47 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %48 = or i32 130, %47
  %49 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32 %50, i32* %57, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i32 8, i32* %64, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 4
  store i32 0, i32* %71, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 3
  store i32* @crypto_ablkcipher_type, i32** %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = call i32 @crypto_register_alg(%struct.TYPE_12__* %84)
  store i32 %85, i32* %4, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %6, align 8
  br label %279

94:                                               ; preds = %21
  %95 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %96 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32 %97, i32* %105, align 8
  %106 = load i32, i32* @chcr_aead_encrypt, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 4
  store i32 %106, i32* %113, align 4
  %114 = load i32, i32* @chcr_aead_decrypt, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 3
  store i32 %114, i32* %121, align 8
  %122 = load i32, i32* @chcr_aead_cra_init, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  store i32 %122, i32* %129, align 4
  %130 = load i32, i32* @chcr_aead_cra_exit, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  store i32 %130, i32* %137, align 8
  %138 = load i8*, i8** @THIS_MODULE, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  store i8* %138, i8** %146, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = call i32 @crypto_register_aead(%struct.TYPE_13__* %152)
  store i32 %153, i32* %4, align 4
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  store i8* %162, i8** %6, align 8
  br label %279

163:                                              ; preds = %21
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  store %struct.ahash_alg* %169, %struct.ahash_alg** %3, align 8
  %170 = load i32, i32* @chcr_ahash_update, align 4
  %171 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %172 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %171, i32 0, i32 8
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* @chcr_ahash_final, align 4
  %174 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %175 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %174, i32 0, i32 7
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* @chcr_ahash_finup, align 4
  %177 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %178 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %177, i32 0, i32 6
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @chcr_ahash_digest, align 4
  %180 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %181 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* @chcr_ahash_export, align 4
  %183 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %184 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* @chcr_ahash_import, align 4
  %186 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %187 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* @SZ_AHASH_REQ_CTX, align 4
  %189 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %190 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  store i32 %188, i32* %191, align 8
  %192 = load i8*, i8** @CHCR_CRA_PRIORITY, align 8
  %193 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %194 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %195, i32 0, i32 7
  store i8* %192, i8** %196, align 8
  %197 = load i8*, i8** @THIS_MODULE, align 8
  %198 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %199 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %200, i32 0, i32 6
  store i8* %197, i8** %201, align 8
  %202 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %203 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %204 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %205, i32 0, i32 0
  store i32 %202, i32* %206, align 8
  %207 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %208 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %209, i32 0, i32 5
  store i32 0, i32* %210, align 8
  %211 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %212 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %213, i32 0, i32 4
  store i32* null, i32** %214, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @CRYPTO_ALG_TYPE_HMAC, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %245

223:                                              ; preds = %163
  %224 = load i32, i32* @chcr_hmac_cra_init, align 4
  %225 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %226 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %227, i32 0, i32 2
  store i32 %224, i32* %228, align 8
  %229 = load i32*, i32** @chcr_hmac_cra_exit, align 8
  %230 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %231 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %232, i32 0, i32 4
  store i32* %229, i32** %233, align 8
  %234 = load i32, i32* @chcr_hmac_init, align 4
  %235 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %236 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 8
  %237 = load i32, i32* @chcr_ahash_setkey, align 4
  %238 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %239 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %238, i32 0, i32 2
  store i32 %237, i32* %239, align 4
  %240 = load i32, i32* @SZ_AHASH_H_CTX, align 4
  %241 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %242 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %243, i32 0, i32 3
  store i32 %240, i32* %244, align 4
  br label %259

245:                                              ; preds = %163
  %246 = load i32, i32* @chcr_sha_init, align 4
  %247 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %248 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %247, i32 0, i32 1
  store i32 %246, i32* %248, align 8
  %249 = load i32, i32* @SZ_AHASH_CTX, align 4
  %250 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %251 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %252, i32 0, i32 3
  store i32 %249, i32* %253, align 4
  %254 = load i32, i32* @chcr_sha_cra_init, align 4
  %255 = load %struct.ahash_alg*, %struct.ahash_alg** %3, align 8
  %256 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %257, i32 0, i32 2
  store i32 %254, i32* %258, align 8
  br label %259

259:                                              ; preds = %245, %223
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %261 = load i32, i32* %5, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  %266 = call i32 @crypto_register_ahash(%struct.ahash_alg* %265)
  store i32 %266, i32* %4, align 4
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 0
  %275 = bitcast %struct.crypto_alg* %2 to i8*
  %276 = bitcast %struct.crypto_alg* %274 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %275, i8* align 8 %276, i64 56, i1 false)
  %277 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %2, i32 0, i32 1
  %278 = load i8*, i8** %277, align 8
  store i8* %278, i8** %6, align 8
  br label %279

279:                                              ; preds = %21, %259, %94, %30
  %280 = load i32, i32* %4, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i8*, i8** %6, align 8
  %284 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %283)
  br label %296

285:                                              ; preds = %279
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** @driver_algs, align 8
  %287 = load i32, i32* %5, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 0
  store i32 1, i32* %290, align 8
  br label %291

291:                                              ; preds = %285
  br label %292

292:                                              ; preds = %291, %20
  %293 = load i32, i32* %5, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %5, align 4
  br label %7

295:                                              ; preds = %7
  store i32 0, i32* %1, align 4
  br label %299

296:                                              ; preds = %282
  %297 = call i32 (...) @chcr_unregister_alg()
  %298 = load i32, i32* %4, align 4
  store i32 %298, i32* %1, align 4
  br label %299

299:                                              ; preds = %296, %295
  %300 = load i32, i32* %1, align 4
  ret i32 %300
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @crypto_register_alg(%struct.TYPE_12__*) #1

declare dso_local i32 @crypto_register_aead(%struct.TYPE_13__*) #1

declare dso_local i32 @crypto_register_ahash(%struct.ahash_alg*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @chcr_unregister_alg(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
