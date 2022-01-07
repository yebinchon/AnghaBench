; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-galois.c_ccp_aes_gcm_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-galois.c_ccp_aes_gcm_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32, i32, i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.ccp_ctx = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32, i32 }
%struct.ccp_aes_req_ctx = type { i32*, %struct.TYPE_11__, %struct.scatterlist }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, i32, %struct.scatterlist*, i64, i32*, i32, i32 }
%struct.scatterlist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CCP_AES_MODE_GCM = common dso_local global i64 0, align 8
@GCM_AES_IV_SIZE = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@CCP_ENGINE_AES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @ccp_aes_gcm_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_aes_gcm_crypt(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca %struct.ccp_ctx*, align 8
  %8 = alloca %struct.ccp_aes_req_ctx*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %14 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %13)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %6, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %16 = call %struct.ccp_ctx* @crypto_aead_ctx(%struct.crypto_aead* %15)
  store %struct.ccp_ctx* %16, %struct.ccp_ctx** %7, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %18 = call %struct.ccp_aes_req_ctx* @aead_request_ctx(%struct.aead_request* %17)
  store %struct.ccp_aes_req_ctx* %18, %struct.ccp_aes_req_ctx** %8, align 8
  store %struct.scatterlist* null, %struct.scatterlist** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.ccp_ctx*, %struct.ccp_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %201

28:                                               ; preds = %2
  %29 = load %struct.ccp_ctx*, %struct.ccp_ctx** %7, align 8
  %30 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CCP_AES_MODE_GCM, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %201

39:                                               ; preds = %28
  %40 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %41 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %201

47:                                               ; preds = %39
  %48 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %52 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @GCM_AES_IV_SIZE, align 4
  %55 = call i32 @memcpy(i32* %50, i32 %53, i32 %54)
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %68, %47
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %61 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @GCM_AES_IV_SIZE, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %56

71:                                               ; preds = %56
  %72 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %73 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 1, i32* %78, align 4
  %79 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %80 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %79, i32 0, i32 2
  store %struct.scatterlist* %80, %struct.scatterlist** %9, align 8
  %81 = load i32, i32* @AES_BLOCK_SIZE, align 4
  store i32 %81, i32* %10, align 4
  %82 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %83 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %84 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @sg_init_one(%struct.scatterlist* %82, i32* %85, i32 %86)
  %88 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %89 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %88, i32 0, i32 1
  %90 = call i32 @memset(%struct.TYPE_11__* %89, i32 0, i32 72)
  %91 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %92 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = call i32 @INIT_LIST_HEAD(i32* %93)
  %95 = load i32, i32* @CCP_ENGINE_AES, align 4
  %96 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %97 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 8
  %99 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %100 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %99)
  %101 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %102 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 11
  store i32 %100, i32* %105, align 4
  %106 = load %struct.ccp_ctx*, %struct.ccp_ctx** %7, align 8
  %107 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %112 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 10
  store i32 %110, i32* %115, align 8
  %116 = load %struct.ccp_ctx*, %struct.ccp_ctx** %7, align 8
  %117 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %122 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  store i64 %120, i64* %125, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %128 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  store i32 %126, i32* %131, align 8
  %132 = load %struct.ccp_ctx*, %struct.ccp_ctx** %7, align 8
  %133 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %137 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 9
  store i32* %135, i32** %140, align 8
  %141 = load %struct.ccp_ctx*, %struct.ccp_ctx** %7, align 8
  %142 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %147 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 8
  store i64 %145, i64* %150, align 8
  %151 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %152 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %153 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 7
  store %struct.scatterlist* %151, %struct.scatterlist** %156, align 8
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %159 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 2
  store i32 %157, i32* %162, align 4
  %163 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %164 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %167 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 6
  store i32 %165, i32* %170, align 4
  %171 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %172 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %175 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 5
  store i32 %173, i32* %178, align 8
  %179 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %180 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %183 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 4
  store i32 %181, i32* %186, align 4
  %187 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %188 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %191 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 3
  store i32 %189, i32* %194, align 8
  %195 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %196 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %195, i32 0, i32 0
  %197 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %8, align 8
  %198 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %197, i32 0, i32 1
  %199 = call i32 @ccp_crypto_enqueue_request(i32* %196, %struct.TYPE_11__* %198)
  store i32 %199, i32* %12, align 4
  %200 = load i32, i32* %12, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %71, %44, %36, %25
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.ccp_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.ccp_aes_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @ccp_crypto_enqueue_request(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
