; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_alg_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_alg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_crypto_alg = type { %struct.device*, %struct.talitos_alg_template }
%struct.talitos_alg_template = type { i32, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.crypto_alg }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.crypto_alg }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.crypto_alg }
%struct.crypto_alg = type { i32, i32, i32, i64, i32, i32, i8*, i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.talitos_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@talitos_cra_init = common dso_local global i32 0, align 4
@talitos_cra_exit = common dso_local global i8* null, align 8
@crypto_ablkcipher_type = common dso_local global i32 0, align 4
@ablkcipher_setkey = common dso_local global i32 0, align 4
@ablkcipher_encrypt = common dso_local global i32 0, align 4
@ablkcipher_decrypt = common dso_local global i32 0, align 4
@talitos_cra_init_aead = common dso_local global i32 0, align 4
@aead_setkey = common dso_local global i32 0, align 4
@aead_encrypt = common dso_local global i32 0, align 4
@aead_decrypt = common dso_local global i32 0, align 4
@TALITOS_FTR_SHA224_HWINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"authenc(hmac(sha224)\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@talitos_cra_init_ahash = common dso_local global i32 0, align 4
@ahash_init = common dso_local global i32 0, align 4
@ahash_update = common dso_local global i32 0, align 4
@ahash_final = common dso_local global i32 0, align 4
@ahash_finup = common dso_local global i32 0, align 4
@ahash_digest = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"hmac\00", align 1
@ahash_setkey = common dso_local global i32 0, align 4
@ahash_import = common dso_local global i32 0, align 4
@ahash_export = common dso_local global i32 0, align 4
@TALITOS_FTR_HMAC_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"hmac(sha224)\00", align 1
@ahash_init_sha224_swinit = common dso_local global i32 0, align 4
@DESC_HDR_TYPE_COMMON_NONSNOOP_NO_AFEU = common dso_local global i32 0, align 4
@DESC_HDR_SEL0_MDEUA = common dso_local global i32 0, align 4
@DESC_HDR_MODE0_MDEU_SHA256 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"unknown algorithm type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@TALITOS_CRA_PRIORITY = common dso_local global i64 0, align 8
@CRYPTO_ALG_KERN_DRIVER_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.talitos_crypto_alg* (%struct.device*, %struct.talitos_alg_template*)* @talitos_alg_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.talitos_crypto_alg* @talitos_alg_alloc(%struct.device* %0, %struct.talitos_alg_template* %1) #0 {
  %3 = alloca %struct.talitos_crypto_alg*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.talitos_alg_template*, align 8
  %6 = alloca %struct.talitos_private*, align 8
  %7 = alloca %struct.talitos_crypto_alg*, align 8
  %8 = alloca %struct.crypto_alg*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.talitos_alg_template* %1, %struct.talitos_alg_template** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %9)
  store %struct.talitos_private* %10, %struct.talitos_private** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.talitos_crypto_alg* @devm_kzalloc(%struct.device* %11, i32 264, i32 %12)
  store %struct.talitos_crypto_alg* %13, %struct.talitos_crypto_alg** %7, align 8
  %14 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %15 = icmp ne %struct.talitos_crypto_alg* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.talitos_crypto_alg* @ERR_PTR(i32 %18)
  store %struct.talitos_crypto_alg* %19, %struct.talitos_crypto_alg** %3, align 8
  br label %305

20:                                               ; preds = %2
  %21 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %22 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %21, i32 0, i32 1
  %23 = load %struct.talitos_alg_template*, %struct.talitos_alg_template** %5, align 8
  %24 = bitcast %struct.talitos_alg_template* %22 to i8*
  %25 = bitcast %struct.talitos_alg_template* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 256, i1 false)
  %26 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %27 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %250 [
    i32 130, label %30
    i32 129, label %64
    i32 128, label %128
  ]

30:                                               ; preds = %20
  %31 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %32 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  store %struct.crypto_alg* %34, %struct.crypto_alg** %8, align 8
  %35 = load i32, i32* @talitos_cra_init, align 4
  %36 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %37 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** @talitos_cra_exit, align 8
  %39 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %40 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %42 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %41, i32 0, i32 9
  store i32* @crypto_ablkcipher_type, i32** %42, align 8
  %43 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %44 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %43, i32 0, i32 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  br label %51

49:                                               ; preds = %30
  %50 = load i32, i32* @ablkcipher_setkey, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ %46, %48 ], [ %50, %49 ]
  %53 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %54 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %53, i32 0, i32 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @ablkcipher_encrypt, align 4
  %57 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %58 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %57, i32 0, i32 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @ablkcipher_decrypt, align 4
  %61 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %62 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %263

64:                                               ; preds = %20
  %65 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %66 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 4
  store %struct.crypto_alg* %69, %struct.crypto_alg** %8, align 8
  %70 = load i8*, i8** @talitos_cra_exit, align 8
  %71 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %72 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @talitos_cra_init_aead, align 4
  %74 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %75 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  store i32 %73, i32* %78, align 4
  %79 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %80 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %64
  br label %89

87:                                               ; preds = %64
  %88 = load i32, i32* @aead_setkey, align 4
  br label %89

89:                                               ; preds = %87, %86
  %90 = phi i32 [ %84, %86 ], [ %88, %87 ]
  %91 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %92 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  store i32 %90, i32* %95, align 8
  %96 = load i32, i32* @aead_encrypt, align 4
  %97 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %98 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i32 %96, i32* %101, align 4
  %102 = load i32, i32* @aead_decrypt, align 4
  %103 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %104 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i32 %102, i32* %107, align 8
  %108 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %109 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @TALITOS_FTR_SHA224_HWINIT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %89
  %115 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %116 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @strncmp(i32 %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 20)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %114
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %123 = call i32 @devm_kfree(%struct.device* %121, %struct.talitos_crypto_alg* %122)
  %124 = load i32, i32* @ENOTSUPP, align 4
  %125 = sub nsw i32 0, %124
  %126 = call %struct.talitos_crypto_alg* @ERR_PTR(i32 %125)
  store %struct.talitos_crypto_alg* %126, %struct.talitos_crypto_alg** %3, align 8
  br label %305

127:                                              ; preds = %114, %89
  br label %263

128:                                              ; preds = %20
  %129 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %130 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  store %struct.crypto_alg* %134, %struct.crypto_alg** %8, align 8
  %135 = load i32, i32* @talitos_cra_init_ahash, align 4
  %136 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %137 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %136, i32 0, i32 7
  store i32 %135, i32* %137, align 8
  %138 = load i8*, i8** @talitos_cra_exit, align 8
  %139 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %140 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %139, i32 0, i32 6
  store i8* %138, i8** %140, align 8
  %141 = load i32, i32* @ahash_init, align 4
  %142 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %143 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  store i32 %141, i32* %146, align 8
  %147 = load i32, i32* @ahash_update, align 4
  %148 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %149 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 7
  store i32 %147, i32* %152, align 4
  %153 = load i32, i32* @ahash_final, align 4
  %154 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %155 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 6
  store i32 %153, i32* %158, align 8
  %159 = load i32, i32* @ahash_finup, align 4
  %160 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %161 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 5
  store i32 %159, i32* %164, align 4
  %165 = load i32, i32* @ahash_digest, align 4
  %166 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %167 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 4
  store i32 %165, i32* %170, align 8
  %171 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %172 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @strncmp(i32 %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %128
  %177 = load i32, i32* @ahash_setkey, align 4
  %178 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %179 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 3
  store i32 %177, i32* %182, align 4
  br label %183

183:                                              ; preds = %176, %128
  %184 = load i32, i32* @ahash_import, align 4
  %185 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %186 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 2
  store i32 %184, i32* %189, align 8
  %190 = load i32, i32* @ahash_export, align 4
  %191 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %192 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  store i32 %190, i32* %195, align 4
  %196 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %197 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @TALITOS_FTR_HMAC_OK, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %215, label %202

202:                                              ; preds = %183
  %203 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %204 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @strncmp(i32 %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %202
  %209 = load %struct.device*, %struct.device** %4, align 8
  %210 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %211 = call i32 @devm_kfree(%struct.device* %209, %struct.talitos_crypto_alg* %210)
  %212 = load i32, i32* @ENOTSUPP, align 4
  %213 = sub nsw i32 0, %212
  %214 = call %struct.talitos_crypto_alg* @ERR_PTR(i32 %213)
  store %struct.talitos_crypto_alg* %214, %struct.talitos_crypto_alg** %3, align 8
  br label %305

215:                                              ; preds = %202, %183
  %216 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %217 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @TALITOS_FTR_SHA224_HWINIT, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %249, label %222

222:                                              ; preds = %215
  %223 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %224 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @strcmp(i32 %225, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %222
  %229 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %230 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @strcmp(i32 %231, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %249, label %234

234:                                              ; preds = %228, %222
  %235 = load i32, i32* @ahash_init_sha224_swinit, align 4
  %236 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %237 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  store i32 %235, i32* %240, align 8
  %241 = load i32, i32* @DESC_HDR_TYPE_COMMON_NONSNOOP_NO_AFEU, align 4
  %242 = load i32, i32* @DESC_HDR_SEL0_MDEUA, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* @DESC_HDR_MODE0_MDEU_SHA256, align 4
  %245 = or i32 %243, %244
  %246 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %247 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %247, i32 0, i32 1
  store i32 %245, i32* %248, align 4
  br label %249

249:                                              ; preds = %234, %228, %215
  br label %263

250:                                              ; preds = %20
  %251 = load %struct.device*, %struct.device** %4, align 8
  %252 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %253 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @dev_err(%struct.device* %251, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %255)
  %257 = load %struct.device*, %struct.device** %4, align 8
  %258 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %259 = call i32 @devm_kfree(%struct.device* %257, %struct.talitos_crypto_alg* %258)
  %260 = load i32, i32* @EINVAL, align 4
  %261 = sub nsw i32 0, %260
  %262 = call %struct.talitos_crypto_alg* @ERR_PTR(i32 %261)
  store %struct.talitos_crypto_alg* %262, %struct.talitos_crypto_alg** %3, align 8
  br label %305

263:                                              ; preds = %249, %127, %51
  %264 = load i32, i32* @THIS_MODULE, align 4
  %265 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %266 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  %267 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %268 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %263
  %273 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %274 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %278 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %277, i32 0, i32 3
  store i64 %276, i64* %278, align 8
  br label %283

279:                                              ; preds = %263
  %280 = load i64, i64* @TALITOS_CRA_PRIORITY, align 8
  %281 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %282 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %281, i32 0, i32 3
  store i64 %280, i64* %282, align 8
  br label %283

283:                                              ; preds = %279, %272
  %284 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %285 = call i64 @has_ftr_sec1(%struct.talitos_private* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %283
  %288 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %289 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %288, i32 0, i32 0
  store i32 3, i32* %289, align 8
  br label %293

290:                                              ; preds = %283
  %291 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %292 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %291, i32 0, i32 0
  store i32 0, i32* %292, align 8
  br label %293

293:                                              ; preds = %290, %287
  %294 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %295 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %294, i32 0, i32 1
  store i32 4, i32* %295, align 4
  %296 = load i32, i32* @CRYPTO_ALG_KERN_DRIVER_ONLY, align 4
  %297 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %298 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 8
  %301 = load %struct.device*, %struct.device** %4, align 8
  %302 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  %303 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %302, i32 0, i32 0
  store %struct.device* %301, %struct.device** %303, align 8
  %304 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %7, align 8
  store %struct.talitos_crypto_alg* %304, %struct.talitos_crypto_alg** %3, align 8
  br label %305

305:                                              ; preds = %293, %250, %208, %120, %16
  %306 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %3, align 8
  ret %struct.talitos_crypto_alg* %306
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.talitos_crypto_alg* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.talitos_crypto_alg* @ERR_PTR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.talitos_crypto_alg*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @has_ftr_sec1(%struct.talitos_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
