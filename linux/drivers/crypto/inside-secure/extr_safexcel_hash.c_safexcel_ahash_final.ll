; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_ahash_final.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_ahash_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i32 }
%struct.safexcel_ahash_req = type { i32, i32, i32, i32*, i32, i8*, i64, i64 }
%struct.safexcel_ahash_ctx = type { i64 }

@CONTEXT_CONTROL_CRYPTO_ALG_MD5 = common dso_local global i64 0, align 8
@md5_zero_message_hash = common dso_local global i32 0, align 4
@MD5_DIGEST_SIZE = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_CRYPTO_ALG_SHA1 = common dso_local global i64 0, align 8
@sha1_zero_message_hash = common dso_local global i32 0, align 4
@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_CRYPTO_ALG_SHA224 = common dso_local global i64 0, align 8
@sha224_zero_message_hash = common dso_local global i32 0, align 4
@SHA224_DIGEST_SIZE = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_CRYPTO_ALG_SHA256 = common dso_local global i64 0, align 8
@sha256_zero_message_hash = common dso_local global i32 0, align 4
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_CRYPTO_ALG_SHA384 = common dso_local global i64 0, align 8
@sha384_zero_message_hash = common dso_local global i32 0, align 4
@SHA384_DIGEST_SIZE = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_CRYPTO_ALG_SHA512 = common dso_local global i64 0, align 8
@sha512_zero_message_hash = common dso_local global i32 0, align 4
@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_DIGEST_HMAC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @safexcel_ahash_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_ahash_final(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.safexcel_ahash_req*, align 8
  %5 = alloca %struct.safexcel_ahash_ctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %7 = call %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request* %6)
  store %struct.safexcel_ahash_req* %7, %struct.safexcel_ahash_req** %4, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %9 = call i32 @crypto_ahash_reqtfm(%struct.ahash_request* %8)
  %10 = call %struct.safexcel_ahash_ctx* @crypto_ahash_ctx(i32 %9)
  store %struct.safexcel_ahash_ctx* %10, %struct.safexcel_ahash_ctx** %5, align 8
  %11 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %12 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %14 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %19 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %17, %1
  %24 = phi i1 [ false, %1 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %112

28:                                               ; preds = %23
  %29 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CONTEXT_CONTROL_CRYPTO_ALG_MD5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %36 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @md5_zero_message_hash, align 4
  %39 = load i32, i32* @MD5_DIGEST_SIZE, align 4
  %40 = call i32 @memcpy(i32 %37, i32 %38, i32 %39)
  br label %111

41:                                               ; preds = %28
  %42 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CONTEXT_CONTROL_CRYPTO_ALG_SHA1, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %49 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @sha1_zero_message_hash, align 4
  %52 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %53 = call i32 @memcpy(i32 %50, i32 %51, i32 %52)
  br label %110

54:                                               ; preds = %41
  %55 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CONTEXT_CONTROL_CRYPTO_ALG_SHA224, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %62 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @sha224_zero_message_hash, align 4
  %65 = load i32, i32* @SHA224_DIGEST_SIZE, align 4
  %66 = call i32 @memcpy(i32 %63, i32 %64, i32 %65)
  br label %109

67:                                               ; preds = %54
  %68 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CONTEXT_CONTROL_CRYPTO_ALG_SHA256, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %75 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @sha256_zero_message_hash, align 4
  %78 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  %79 = call i32 @memcpy(i32 %76, i32 %77, i32 %78)
  br label %108

80:                                               ; preds = %67
  %81 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %5, align 8
  %82 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CONTEXT_CONTROL_CRYPTO_ALG_SHA384, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %88 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @sha384_zero_message_hash, align 4
  %91 = load i32, i32* @SHA384_DIGEST_SIZE, align 4
  %92 = call i32 @memcpy(i32 %89, i32 %90, i32 %91)
  br label %107

93:                                               ; preds = %80
  %94 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %5, align 8
  %95 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @CONTEXT_CONTROL_CRYPTO_ALG_SHA512, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %101 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @sha512_zero_message_hash, align 4
  %104 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  %105 = call i32 @memcpy(i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %99, %93
  br label %107

107:                                              ; preds = %106, %86
  br label %108

108:                                              ; preds = %107, %73
  br label %109

109:                                              ; preds = %108, %60
  br label %110

110:                                              ; preds = %109, %47
  br label %111

111:                                              ; preds = %110, %34
  store i32 0, i32* %2, align 4
  br label %235

112:                                              ; preds = %23
  %113 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %114 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %112
  %118 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %119 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %122 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %127 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  br label %131

131:                                              ; preds = %125, %117, %112
  %132 = phi i1 [ false, %117 ], [ false, %112 ], [ %130, %125 ]
  %133 = zext i1 %132 to i32
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %221

136:                                              ; preds = %131
  %137 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %138 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %141 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @memset(i32* %139, i32 0, i32 %142)
  %144 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %145 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 128, i32* %147, align 4
  %148 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %149 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %180

152:                                              ; preds = %136
  %153 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %154 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = shl i32 %155, 3
  %157 = and i32 %156, 255
  %158 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %159 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %162 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %163, 8
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %160, i64 %165
  store i32 %157, i32* %166, align 4
  %167 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %168 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = ashr i32 %169, 5
  %171 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %172 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %175 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = sub nsw i32 %176, 7
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %173, i64 %178
  store i32 %170, i32* %179, align 4
  br label %208

180:                                              ; preds = %136
  %181 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %182 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = ashr i32 %183, 5
  %185 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %186 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %185, i32 0, i32 3
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %189 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %190, 2
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %187, i64 %192
  store i32 %184, i32* %193, align 4
  %194 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %195 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = shl i32 %196, 3
  %198 = and i32 %197, 255
  %199 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %200 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %203 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = sub nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %201, i64 %206
  store i32 %198, i32* %207, align 4
  br label %208

208:                                              ; preds = %180, %152
  %209 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %210 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %213 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, %211
  store i32 %215, i32* %213, align 4
  %216 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %217 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %216, i32 0, i32 4
  store i32 1, i32* %217, align 8
  %218 = load i8*, i8** @CONTEXT_CONTROL_DIGEST_HMAC, align 8
  %219 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %220 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %219, i32 0, i32 5
  store i8* %218, i8** %220, align 8
  br label %231

221:                                              ; preds = %131
  %222 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %223 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %222, i32 0, i32 6
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = load i8*, i8** @CONTEXT_CONTROL_DIGEST_HMAC, align 8
  %228 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %229 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %228, i32 0, i32 5
  store i8* %227, i8** %229, align 8
  br label %230

230:                                              ; preds = %226, %221
  br label %231

231:                                              ; preds = %230, %208
  br label %232

232:                                              ; preds = %231
  %233 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %234 = call i32 @safexcel_ahash_enqueue(%struct.ahash_request* %233)
  store i32 %234, i32* %2, align 4
  br label %235

235:                                              ; preds = %232, %111
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.safexcel_ahash_ctx* @crypto_ahash_ctx(i32) #1

declare dso_local i32 @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @safexcel_ahash_enqueue(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
