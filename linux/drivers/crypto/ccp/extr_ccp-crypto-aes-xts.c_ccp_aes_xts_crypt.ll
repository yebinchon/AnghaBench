; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-xts.c_ccp_aes_xts_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-xts.c_ccp_aes_xts_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.ablkcipher_request = type { i64, %struct.TYPE_16__, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.ccp_ctx = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.ccp_aes_req_ctx = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64, i64, i32, i32, i32, i32*, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CCP_XTS_AES_UNIT_SIZE__LAST = common dso_local global i32 0, align 4
@xts_unit_sizes = common dso_local global %struct.TYPE_14__* null, align 8
@AES_KEYSIZE_128 = common dso_local global i64 0, align 8
@AES_KEYSIZE_256 = common dso_local global i64 0, align 8
@subreq = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@CCP_ENGINE_XTS_AES_128 = common dso_local global i32 0, align 4
@CCP_AES_TYPE_128 = common dso_local global i32 0, align 4
@CCP_AES_ACTION_ENCRYPT = common dso_local global i32 0, align 4
@CCP_AES_ACTION_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i32)* @ccp_aes_xts_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_aes_xts_crypt(%struct.ablkcipher_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccp_ctx*, align 8
  %7 = alloca %struct.ccp_aes_req_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %14 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ccp_ctx* @crypto_tfm_ctx(i32 %16)
  store %struct.ccp_ctx* %17, %struct.ccp_ctx** %6, align 8
  %18 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %19 = call %struct.ccp_aes_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %18)
  store %struct.ccp_aes_req_ctx* %19, %struct.ccp_aes_req_ctx** %7, align 8
  %20 = call i32 (...) @ccp_version()
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %262

30:                                               ; preds = %2
  %31 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %32 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %262

38:                                               ; preds = %30
  %39 = load i32, i32* @CCP_XTS_AES_UNIT_SIZE__LAST, align 4
  store i32 %39, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %59, %38
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xts_unit_sizes, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %42)
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %47 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xts_unit_sizes, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %48, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %11, align 4
  br label %62

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %40

62:                                               ; preds = %56, %40
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @CCP_XTS_AES_UNIT_SIZE__LAST, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 1, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @CCP_VERSION(i32 5, i32 0)
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %73 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AES_KEYSIZE_128, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 1, i32* %9, align 4
  br label %80

80:                                               ; preds = %79, %71, %67
  %81 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %82 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @AES_KEYSIZE_128, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %80
  %89 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %90 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AES_KEYSIZE_256, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  store i32 1, i32* %9, align 4
  br label %97

97:                                               ; preds = %96, %88, %80
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %148

100:                                              ; preds = %97
  %101 = load i32, i32* @subreq, align 4
  %102 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %103 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %101, i32 %106)
  %108 = load i32, i32* @subreq, align 4
  %109 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %110 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @skcipher_request_set_sync_tfm(i32 %108, i32 %113)
  %115 = load i32, i32* @subreq, align 4
  %116 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %117 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @skcipher_request_set_callback(i32 %115, i32 %119, i32* null, i32* null)
  %121 = load i32, i32* @subreq, align 4
  %122 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %123 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %126 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %129 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %132 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @skcipher_request_set_crypt(i32 %121, i32 %124, i32 %127, i64 %130, i32 %133)
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %100
  %138 = load i32, i32* @subreq, align 4
  %139 = call i32 @crypto_skcipher_encrypt(i32 %138)
  br label %143

140:                                              ; preds = %100
  %141 = load i32, i32* @subreq, align 4
  %142 = call i32 @crypto_skcipher_decrypt(i32 %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = phi i32 [ %139, %137 ], [ %142, %140 ]
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* @subreq, align 4
  %146 = call i32 @skcipher_request_zero(i32 %145)
  %147 = load i32, i32* %12, align 4
  store i32 %147, i32* %3, align 4
  br label %262

148:                                              ; preds = %97
  %149 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %150 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %153 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %156 = call i32 @memcpy(i32 %151, i32 %154, i32 %155)
  %157 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %158 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %157, i32 0, i32 1
  %159 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %160 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %163 = call i32 @sg_init_one(i32* %158, i32 %161, i32 %162)
  %164 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %165 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %164, i32 0, i32 0
  %166 = call i32 @memset(%struct.TYPE_15__* %165, i32 0, i32 72)
  %167 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %168 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 2
  %170 = call i32 @INIT_LIST_HEAD(i32* %169)
  %171 = load i32, i32* @CCP_ENGINE_XTS_AES_128, align 4
  %172 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %173 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  store i32 %171, i32* %174, align 8
  %175 = load i32, i32* @CCP_AES_TYPE_128, align 4
  %176 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %177 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 9
  store i32 %175, i32* %180, align 4
  %181 = load i32, i32* %5, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %148
  %184 = load i32, i32* @CCP_AES_ACTION_ENCRYPT, align 4
  br label %187

185:                                              ; preds = %148
  %186 = load i32, i32* @CCP_AES_ACTION_DECRYPT, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %190 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 8
  store i32 %188, i32* %193, align 8
  %194 = load i32, i32* %11, align 4
  %195 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %196 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  store i32 %194, i32* %199, align 8
  %200 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %201 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %205 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 7
  store i32* %203, i32** %208, align 8
  %209 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %210 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %215 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  store i64 %213, i64* %218, align 8
  %219 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %220 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %219, i32 0, i32 1
  %221 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %222 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 6
  store i32* %220, i32** %225, align 8
  %226 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %227 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %228 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 5
  store i32 %226, i32* %231, align 8
  %232 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %233 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %236 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 4
  store i32 %234, i32* %239, align 4
  %240 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %241 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %244 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 2
  store i64 %242, i64* %247, align 8
  %248 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %249 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %252 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 3
  store i32 %250, i32* %255, align 8
  %256 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %257 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %256, i32 0, i32 1
  %258 = load %struct.ccp_aes_req_ctx*, %struct.ccp_aes_req_ctx** %7, align 8
  %259 = getelementptr inbounds %struct.ccp_aes_req_ctx, %struct.ccp_aes_req_ctx* %258, i32 0, i32 0
  %260 = call i32 @ccp_crypto_enqueue_request(%struct.TYPE_16__* %257, %struct.TYPE_15__* %259)
  store i32 %260, i32* %12, align 4
  %261 = load i32, i32* %12, align 4
  store i32 %261, i32* %3, align 4
  br label %262

262:                                              ; preds = %187, %143, %35, %27
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

declare dso_local %struct.ccp_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local %struct.ccp_aes_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @ccp_version(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @CCP_VERSION(i32, i32) #1

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, i32) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, i32, i32, i64, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(i32) #1

declare dso_local i32 @skcipher_request_zero(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @sg_init_one(i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ccp_crypto_enqueue_request(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
