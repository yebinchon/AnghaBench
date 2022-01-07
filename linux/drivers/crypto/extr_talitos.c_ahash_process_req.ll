; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ahash_process_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ahash_process_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.talitos_ctx = type { i64, i32, %struct.device* }
%struct.device = type { i32 }
%struct.talitos_ahash_req_ctx = type { i64, i32, i32, i64, i64, i32, i32**, i32, i32 }
%struct.talitos_edesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.talitos_private = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid number of src SG.\0A\00", align 1
@DESC_HDR_MODE0_MDEU_PAD = common dso_local global i32 0, align 4
@DESC_HDR_MODE0_MDEU_CONT = common dso_local global i32 0, align 4
@DESC_HDR_MODE0_MDEU_INIT = common dso_local global i32 0, align 4
@DESC_HDR_MODE0_MDEU_HMAC = common dso_local global i32 0, align 4
@ahash_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32)* @ahash_process_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_process_req(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_ahash*, align 8
  %7 = alloca %struct.talitos_ctx*, align 8
  %8 = alloca %struct.talitos_ahash_req_ctx*, align 8
  %9 = alloca %struct.talitos_edesc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.device*, align 8
  %16 = alloca %struct.talitos_private*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %21 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %20)
  store %struct.crypto_ahash* %21, %struct.crypto_ahash** %6, align 8
  %22 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %23 = call %struct.talitos_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %22)
  store %struct.talitos_ctx* %23, %struct.talitos_ctx** %7, align 8
  %24 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %25 = call %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %24)
  store %struct.talitos_ahash_req_ctx* %25, %struct.talitos_ahash_req_ctx** %8, align 8
  %26 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %27 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %26)
  %28 = call i32 @crypto_tfm_alg_blocksize(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %30 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %29, i32 0, i32 2
  %31 = load %struct.device*, %struct.device** %30, align 8
  store %struct.device* %31, %struct.device** %15, align 8
  %32 = load %struct.device*, %struct.device** %15, align 8
  %33 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %32)
  store %struct.talitos_private* %33, %struct.talitos_private** %16, align 8
  %34 = load %struct.talitos_private*, %struct.talitos_private** %16, align 8
  %35 = call i32 @has_ftr_sec1(%struct.talitos_private* %34)
  store i32 %35, i32* %17, align 4
  %36 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %36, i32 0, i32 6
  %38 = load i32**, i32*** %37, align 8
  %39 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32*, i32** %38, i64 %41
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %18, align 8
  %44 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %88, label %48

48:                                               ; preds = %2
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %51 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add i32 %49, %52
  %54 = load i32, i32* %10, align 4
  %55 = icmp ule i32 %53, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %48
  %57 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %58 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @sg_nents_for_len(i32 %59, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %66 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %65, i32 0, i32 2
  %67 = load %struct.device*, %struct.device** %66, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %3, align 4
  br label %360

70:                                               ; preds = %56
  %71 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %72 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32*, i32** %18, align 8
  %76 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %77 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @sg_copy_to_buffer(i32 %73, i32 %74, i32* %80, i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %85 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = add i32 %86, %83
  store i32 %87, i32* %85, align 8
  store i32 0, i32* %3, align 4
  br label %360

88:                                               ; preds = %48, %2
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %91 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add i32 %89, %92
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sub i32 %95, 1
  %97 = and i32 %94, %96
  store i32 %97, i32* %12, align 4
  %98 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %99 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  store i32 0, i32* %12, align 4
  br label %116

103:                                              ; preds = %88
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sub i32 %108, %107
  store i32 %109, i32* %11, align 4
  br label %115

110:                                              ; preds = %103
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = sub i32 %112, %111
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %110, %106
  br label %116

116:                                              ; preds = %115, %102
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %161, label %119

119:                                              ; preds = %116
  %120 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %121 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %161

124:                                              ; preds = %119
  %125 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %126 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = icmp ult i32 %127, %128
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 2, i32 1
  store i32 %131, i32* %13, align 4
  %132 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %133 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @sg_init_table(i32 %134, i32 %135)
  %137 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %138 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %18, align 8
  %141 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %142 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @sg_set_buf(i32 %139, i32* %140, i32 %143)
  %145 = load i32, i32* %13, align 4
  %146 = icmp ugt i32 %145, 1
  br i1 %146, label %147, label %155

147:                                              ; preds = %124
  %148 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %149 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %148, i32 0, i32 8
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %152 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @sg_chain(i32 %150, i32 2, i32 %153)
  br label %155

155:                                              ; preds = %147, %124
  %156 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %157 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %160 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %159, i32 0, i32 7
  store i32 %158, i32* %160, align 8
  br label %240

161:                                              ; preds = %119, %116
  %162 = load i32, i32* %17, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %233

164:                                              ; preds = %161
  %165 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %166 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %233

169:                                              ; preds = %164
  %170 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %171 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = icmp ult i32 %172, %173
  br i1 %174, label %175, label %233

175:                                              ; preds = %169
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp ugt i32 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %175
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %182 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = sub i32 %180, %183
  store i32 %184, i32* %19, align 4
  br label %191

185:                                              ; preds = %175
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %188 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = sub i32 %186, %189
  store i32 %190, i32* %19, align 4
  br label %191

191:                                              ; preds = %185, %179
  %192 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %193 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %19, align 4
  %196 = call i32 @sg_nents_for_len(i32 %194, i32 %195)
  store i32 %196, i32* %14, align 4
  %197 = load i32, i32* %14, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %191
  %200 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %201 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %200, i32 0, i32 2
  %202 = load %struct.device*, %struct.device** %201, align 8
  %203 = call i32 @dev_err(%struct.device* %202, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %204 = load i32, i32* %14, align 4
  store i32 %204, i32* %3, align 4
  br label %360

205:                                              ; preds = %191
  %206 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %207 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %14, align 4
  %210 = load i32*, i32** %18, align 8
  %211 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %212 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %210, i64 %214
  %216 = load i32, i32* %19, align 4
  %217 = call i32 @sg_copy_to_buffer(i32 %208, i32 %209, i32* %215, i32 %216)
  %218 = load i32, i32* %19, align 4
  %219 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %220 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = add i32 %221, %218
  store i32 %222, i32* %220, align 8
  %223 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %224 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %227 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %19, align 4
  %230 = call i32 @scatterwalk_ffwd(i32 %225, i32 %228, i32 %229)
  %231 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %232 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %231, i32 0, i32 7
  store i32 %230, i32* %232, align 8
  br label %239

233:                                              ; preds = %169, %164, %161
  %234 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %235 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %238 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %237, i32 0, i32 7
  store i32 %236, i32* %238, align 8
  br label %239

239:                                              ; preds = %233, %205
  br label %240

240:                                              ; preds = %239, %155
  %241 = load i32, i32* %12, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %277

243:                                              ; preds = %240
  %244 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %245 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %5, align 4
  %248 = call i32 @sg_nents_for_len(i32 %246, i32 %247)
  store i32 %248, i32* %14, align 4
  %249 = load i32, i32* %14, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %243
  %252 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %253 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %252, i32 0, i32 2
  %254 = load %struct.device*, %struct.device** %253, align 8
  %255 = call i32 @dev_err(%struct.device* %254, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %256 = load i32, i32* %14, align 4
  store i32 %256, i32* %3, align 4
  br label %360

257:                                              ; preds = %243
  %258 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %259 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %14, align 4
  %262 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %263 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %262, i32 0, i32 6
  %264 = load i32**, i32*** %263, align 8
  %265 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %266 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = add i64 %267, 1
  %269 = and i64 %268, 1
  %270 = getelementptr inbounds i32*, i32** %264, i64 %269
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* %5, align 4
  %274 = load i32, i32* %12, align 4
  %275 = sub i32 %273, %274
  %276 = call i32 @sg_pcopy_to_buffer(i32 %260, i32 %261, i32* %271, i32 %272, i32 %275)
  br label %277

277:                                              ; preds = %257, %240
  %278 = load i32, i32* %12, align 4
  %279 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %280 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 4
  %281 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %282 = load i32, i32* %11, align 4
  %283 = call %struct.talitos_edesc* @ahash_edesc_alloc(%struct.ahash_request* %281, i32 %282)
  store %struct.talitos_edesc* %283, %struct.talitos_edesc** %9, align 8
  %284 = load %struct.talitos_edesc*, %struct.talitos_edesc** %9, align 8
  %285 = call i64 @IS_ERR(%struct.talitos_edesc* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %277
  %288 = load %struct.talitos_edesc*, %struct.talitos_edesc** %9, align 8
  %289 = call i32 @PTR_ERR(%struct.talitos_edesc* %288)
  store i32 %289, i32* %3, align 4
  br label %360

290:                                              ; preds = %277
  %291 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %292 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.talitos_edesc*, %struct.talitos_edesc** %9, align 8
  %295 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 0
  store i32 %293, i32* %296, align 4
  %297 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %298 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %290
  %302 = load i32, i32* @DESC_HDR_MODE0_MDEU_PAD, align 4
  %303 = load %struct.talitos_edesc*, %struct.talitos_edesc** %9, align 8
  %304 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = or i32 %306, %302
  store i32 %307, i32* %305, align 4
  br label %315

308:                                              ; preds = %290
  %309 = load i32, i32* @DESC_HDR_MODE0_MDEU_CONT, align 4
  %310 = load %struct.talitos_edesc*, %struct.talitos_edesc** %9, align 8
  %311 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %313, %309
  store i32 %314, i32* %312, align 4
  br label %315

315:                                              ; preds = %308, %301
  %316 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %317 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %316, i32 0, i32 4
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %332

320:                                              ; preds = %315
  %321 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %322 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %321, i32 0, i32 5
  %323 = load i32, i32* %322, align 8
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %332, label %325

325:                                              ; preds = %320
  %326 = load i32, i32* @DESC_HDR_MODE0_MDEU_INIT, align 4
  %327 = load %struct.talitos_edesc*, %struct.talitos_edesc** %9, align 8
  %328 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = or i32 %330, %326
  store i32 %331, i32* %329, align 4
  br label %332

332:                                              ; preds = %325, %320, %315
  %333 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %334 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %354

337:                                              ; preds = %332
  %338 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %339 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %338, i32 0, i32 4
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %347, label %342

342:                                              ; preds = %337
  %343 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %8, align 8
  %344 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %354

347:                                              ; preds = %342, %337
  %348 = load i32, i32* @DESC_HDR_MODE0_MDEU_HMAC, align 4
  %349 = load %struct.talitos_edesc*, %struct.talitos_edesc** %9, align 8
  %350 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = or i32 %352, %348
  store i32 %353, i32* %351, align 4
  br label %354

354:                                              ; preds = %347, %342, %332
  %355 = load %struct.talitos_edesc*, %struct.talitos_edesc** %9, align 8
  %356 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %357 = load i32, i32* %11, align 4
  %358 = load i32, i32* @ahash_done, align 4
  %359 = call i32 @common_nonsnoop_hash(%struct.talitos_edesc* %355, %struct.ahash_request* %356, i32 %357, i32 %358)
  store i32 %359, i32* %3, align 4
  br label %360

360:                                              ; preds = %354, %287, %251, %199, %70, %64
  %361 = load i32, i32* %3, align 4
  ret i32 %361
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.talitos_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @has_ftr_sec1(%struct.talitos_private*) #1

declare dso_local i32 @sg_nents_for_len(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @sg_set_buf(i32, i32*, i32) #1

declare dso_local i32 @sg_chain(i32, i32, i32) #1

declare dso_local i32 @scatterwalk_ffwd(i32, i32, i32) #1

declare dso_local i32 @sg_pcopy_to_buffer(i32, i32, i32*, i32, i32) #1

declare dso_local %struct.talitos_edesc* @ahash_edesc_alloc(%struct.ahash_request*, i32) #1

declare dso_local i64 @IS_ERR(%struct.talitos_edesc*) #1

declare dso_local i32 @PTR_ERR(%struct.talitos_edesc*) #1

declare dso_local i32 @common_nonsnoop_hash(%struct.talitos_edesc*, %struct.ahash_request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
