; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_convert_block_skcipher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_convert_block_skcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)*, i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)* }
%struct.dm_crypt_request = type { i32, %struct.scatterlist*, %struct.scatterlist*, %struct.convert_context* }
%struct.scatterlist = type { i32 }
%struct.convert_context = type { i32, i32, i32, i32, i32 }
%struct.skcipher_request = type { i32 }
%struct.bio_vec = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@CRYPT_IV_LARGE_SECTORS = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, %struct.convert_context*, %struct.skcipher_request*, i32)* @crypt_convert_block_skcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_convert_block_skcipher(%struct.crypt_config* %0, %struct.convert_context* %1, %struct.skcipher_request* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypt_config*, align 8
  %7 = alloca %struct.convert_context*, align 8
  %8 = alloca %struct.skcipher_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio_vec, align 4
  %11 = alloca { i64, i32 }, align 8
  %12 = alloca %struct.bio_vec, align 4
  %13 = alloca { i64, i32 }, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca %struct.dm_crypt_request*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %6, align 8
  store %struct.convert_context* %1, %struct.convert_context** %7, align 8
  store %struct.skcipher_request* %2, %struct.skcipher_request** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %23 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %26 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call { i64, i32 } @bio_iter_iovec(i32 %24, i32 %27)
  store { i64, i32 } %28, { i64, i32 }* %11, align 8
  %29 = bitcast { i64, i32 }* %11 to i8*
  %30 = bitcast %struct.bio_vec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 8 %29, i64 12, i1 false)
  %31 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %32 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %35 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call { i64, i32 } @bio_iter_iovec(i32 %33, i32 %36)
  store { i64, i32 } %37, { i64, i32 }* %13, align 8
  %38 = bitcast { i64, i32 }* %13 to i8*
  %39 = bitcast %struct.bio_vec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 8 %38, i64 12, i1 false)
  store i32 0, i32* %21, align 4
  %40 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %10, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %43 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %41, %45
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %4
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %256

52:                                               ; preds = %4
  %53 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %54 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %55 = call %struct.dm_crypt_request* @dmreq_of_req(%struct.crypt_config* %53, %struct.skcipher_request* %54)
  store %struct.dm_crypt_request* %55, %struct.dm_crypt_request** %16, align 8
  %56 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %57 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %16, align 8
  %60 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @CRYPT_IV_LARGE_SECTORS, align 4
  %62 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %63 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %62, i32 0, i32 6
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %52
  %67 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %68 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %16, align 8
  %71 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %66, %52
  %75 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %76 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %16, align 8
  %77 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %76, i32 0, i32 3
  store %struct.convert_context* %75, %struct.convert_context** %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %80 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %16, align 8
  %81 = call i32* @org_tag_of_dmreq(%struct.crypt_config* %79, %struct.dm_crypt_request* %80)
  store i32 %78, i32* %81, align 4
  %82 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %83 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %16, align 8
  %84 = call i32* @iv_of_dmreq(%struct.crypt_config* %82, %struct.dm_crypt_request* %83)
  store i32* %84, i32** %17, align 8
  %85 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %86 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %16, align 8
  %87 = call i32* @org_iv_of_dmreq(%struct.crypt_config* %85, %struct.dm_crypt_request* %86)
  store i32* %87, i32** %18, align 8
  %88 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %89 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %16, align 8
  %90 = call i32* @iv_tag_from_dmreq(%struct.crypt_config* %88, %struct.dm_crypt_request* %89)
  store i32* %90, i32** %19, align 8
  %91 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %92 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %16, align 8
  %93 = call i32* @org_sector_of_dmreq(%struct.crypt_config* %91, %struct.dm_crypt_request* %92)
  store i32* %93, i32** %20, align 8
  %94 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %95 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %98 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %96, %99
  %101 = call i32 @cpu_to_le64(i32 %100)
  %102 = load i32*, i32** %20, align 8
  store i32 %101, i32* %102, align 4
  %103 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %16, align 8
  %104 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %103, i32 0, i32 2
  %105 = load %struct.scatterlist*, %struct.scatterlist** %104, align 8
  %106 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %105, i64 0
  store %struct.scatterlist* %106, %struct.scatterlist** %14, align 8
  %107 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %16, align 8
  %108 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %107, i32 0, i32 1
  %109 = load %struct.scatterlist*, %struct.scatterlist** %108, align 8
  %110 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %109, i64 0
  store %struct.scatterlist* %110, %struct.scatterlist** %15, align 8
  %111 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %112 = call i32 @sg_init_table(%struct.scatterlist* %111, i32 1)
  %113 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %114 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %10, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %117 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %10, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @sg_set_page(%struct.scatterlist* %113, i32 %115, i32 %118, i32 %120)
  %122 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %123 = call i32 @sg_init_table(%struct.scatterlist* %122, i32 1)
  %124 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %125 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %12, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %128 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %12, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @sg_set_page(%struct.scatterlist* %124, i32 %126, i32 %129, i32 %131)
  %133 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %134 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %133, i32 0, i32 3
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = icmp ne %struct.TYPE_2__* %135, null
  br i1 %136, label %137, label %190

137:                                              ; preds = %74
  %138 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %139 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %137
  %143 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %144 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @bio_data_dir(i32 %145)
  %147 = load i64, i64* @WRITE, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %142
  %150 = load i32*, i32** %18, align 8
  %151 = load i32*, i32** %19, align 8
  %152 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %153 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @memcpy(i32* %150, i32* %151, i32 %154)
  br label %183

156:                                              ; preds = %142, %137
  %157 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %158 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %157, i32 0, i32 3
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)*, i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)** %160, align 8
  %162 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %163 = load i32*, i32** %18, align 8
  %164 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %16, align 8
  %165 = call i32 %161(%struct.crypt_config* %162, i32* %163, %struct.dm_crypt_request* %164)
  store i32 %165, i32* %21, align 4
  %166 = load i32, i32* %21, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %156
  %169 = load i32, i32* %21, align 4
  store i32 %169, i32* %5, align 4
  br label %256

170:                                              ; preds = %156
  %171 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %172 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %170
  %176 = load i32*, i32** %19, align 8
  %177 = load i32*, i32** %18, align 8
  %178 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %179 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @memcpy(i32* %176, i32* %177, i32 %180)
  br label %182

182:                                              ; preds = %175, %170
  br label %183

183:                                              ; preds = %182, %149
  %184 = load i32*, i32** %17, align 8
  %185 = load i32*, i32** %18, align 8
  %186 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %187 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @memcpy(i32* %184, i32* %185, i32 %188)
  br label %190

190:                                              ; preds = %183, %74
  %191 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %192 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %193 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %194 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %195 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32*, i32** %17, align 8
  %198 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %191, %struct.scatterlist* %192, %struct.scatterlist* %193, i32 %196, i32* %197)
  %199 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %200 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @bio_data_dir(i32 %201)
  %203 = load i64, i64* @WRITE, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %190
  %206 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %207 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %206)
  store i32 %207, i32* %21, align 4
  br label %211

208:                                              ; preds = %190
  %209 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %210 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %209)
  store i32 %210, i32* %21, align 4
  br label %211

211:                                              ; preds = %208, %205
  %212 = load i32, i32* %21, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %236, label %214

214:                                              ; preds = %211
  %215 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %216 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %215, i32 0, i32 3
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %216, align 8
  %218 = icmp ne %struct.TYPE_2__* %217, null
  br i1 %218, label %219, label %236

219:                                              ; preds = %214
  %220 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %221 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %220, i32 0, i32 3
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 1
  %224 = load i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)*, i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)** %223, align 8
  %225 = icmp ne i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)* %224, null
  br i1 %225, label %226, label %236

226:                                              ; preds = %219
  %227 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %228 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %227, i32 0, i32 3
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 1
  %231 = load i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)*, i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)** %230, align 8
  %232 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %233 = load i32*, i32** %18, align 8
  %234 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %16, align 8
  %235 = call i32 %231(%struct.crypt_config* %232, i32* %233, %struct.dm_crypt_request* %234)
  store i32 %235, i32* %21, align 4
  br label %236

236:                                              ; preds = %226, %219, %214, %211
  %237 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %238 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %241 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %240, i32 0, i32 3
  %242 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %243 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @bio_advance_iter(i32 %239, i32* %241, i32 %244)
  %246 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %247 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %250 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %249, i32 0, i32 1
  %251 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %252 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @bio_advance_iter(i32 %248, i32* %250, i32 %253)
  %255 = load i32, i32* %21, align 4
  store i32 %255, i32* %5, align 4
  br label %256

256:                                              ; preds = %236, %168, %49
  %257 = load i32, i32* %5, align 4
  ret i32 %257
}

declare dso_local { i64, i32 } @bio_iter_iovec(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dm_crypt_request* @dmreq_of_req(%struct.crypt_config*, %struct.skcipher_request*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32* @org_tag_of_dmreq(%struct.crypt_config*, %struct.dm_crypt_request*) #1

declare dso_local i32* @iv_of_dmreq(%struct.crypt_config*, %struct.dm_crypt_request*) #1

declare dso_local i32* @org_iv_of_dmreq(%struct.crypt_config*, %struct.dm_crypt_request*) #1

declare dso_local i32* @iv_tag_from_dmreq(%struct.crypt_config*, %struct.dm_crypt_request*) #1

declare dso_local i32* @org_sector_of_dmreq(%struct.crypt_config*, %struct.dm_crypt_request*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local i64 @bio_data_dir(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i32 @bio_advance_iter(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
