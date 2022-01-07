; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_convert_block_aead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_convert_block_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i64, i64, i32, i32, i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)*, i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)* }
%struct.dm_crypt_request = type { i32, i32*, i32*, %struct.convert_context* }
%struct.convert_context = type { i32, i32, i32, i32, i32 }
%struct.aead_request = type { i32 }
%struct.bio_vec = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@CRYPT_IV_LARGE_SECTORS = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@EBADMSG = common dso_local global i32 0, align 4
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: INTEGRITY AEAD ERROR, sector %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, %struct.convert_context*, %struct.aead_request*, i32)* @crypt_convert_block_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_convert_block_aead(%struct.crypt_config* %0, %struct.convert_context* %1, %struct.aead_request* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypt_config*, align 8
  %7 = alloca %struct.convert_context*, align 8
  %8 = alloca %struct.aead_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio_vec, align 4
  %11 = alloca { i64, i32 }, align 8
  %12 = alloca %struct.bio_vec, align 4
  %13 = alloca { i64, i32 }, align 8
  %14 = alloca %struct.dm_crypt_request*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %6, align 8
  store %struct.convert_context* %1, %struct.convert_context** %7, align 8
  store %struct.aead_request* %2, %struct.aead_request** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %24 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %27 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call { i64, i32 } @bio_iter_iovec(i32 %25, i32 %28)
  store { i64, i32 } %29, { i64, i32 }* %11, align 8
  %30 = bitcast { i64, i32 }* %11 to i8*
  %31 = bitcast %struct.bio_vec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 8 %30, i64 12, i1 false)
  %32 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %33 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %36 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call { i64, i32 } @bio_iter_iovec(i32 %34, i32 %37)
  store { i64, i32 } %38, { i64, i32 }* %13, align 8
  %39 = bitcast { i64, i32 }* %13 to i8*
  %40 = bitcast %struct.bio_vec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 8 %39, i64 12, i1 false)
  store i32 0, i32* %20, align 4
  %41 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %42 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %4
  %46 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %47 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %50 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br label %53

53:                                               ; preds = %45, %4
  %54 = phi i1 [ false, %4 ], [ %52, %45 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %60 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = and i32 %58, %62
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %415

69:                                               ; preds = %53
  %70 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %71 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %72 = call %struct.dm_crypt_request* @dmreq_of_req(%struct.crypt_config* %70, %struct.aead_request* %71)
  store %struct.dm_crypt_request* %72, %struct.dm_crypt_request** %14, align 8
  %73 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %74 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %77 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @CRYPT_IV_LARGE_SECTORS, align 4
  %79 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %80 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %79, i32 0, i32 8
  %81 = call i64 @test_bit(i32 %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %69
  %84 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %85 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %88 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = ashr i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %83, %69
  %92 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %93 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %94 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %93, i32 0, i32 3
  store %struct.convert_context* %92, %struct.convert_context** %94, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %97 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %98 = call i32* @org_tag_of_dmreq(%struct.crypt_config* %96, %struct.dm_crypt_request* %97)
  store i32 %95, i32* %98, align 4
  %99 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %100 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %101 = call i32* @org_sector_of_dmreq(%struct.crypt_config* %99, %struct.dm_crypt_request* %100)
  store i32* %101, i32** %19, align 8
  %102 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %103 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %106 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %104, %107
  %109 = call i32 @cpu_to_le64(i32 %108)
  %110 = load i32*, i32** %19, align 8
  store i32 %109, i32* %110, align 4
  %111 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %112 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %113 = call i32* @iv_of_dmreq(%struct.crypt_config* %111, %struct.dm_crypt_request* %112)
  store i32* %113, i32** %15, align 8
  %114 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %115 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %116 = call i32* @org_iv_of_dmreq(%struct.crypt_config* %114, %struct.dm_crypt_request* %115)
  store i32* %116, i32** %16, align 8
  %117 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %118 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %119 = call i32* @tag_from_dmreq(%struct.crypt_config* %117, %struct.dm_crypt_request* %118)
  store i32* %119, i32** %18, align 8
  %120 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %121 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %122 = call i32* @iv_tag_from_dmreq(%struct.crypt_config* %120, %struct.dm_crypt_request* %121)
  store i32* %122, i32** %17, align 8
  %123 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %124 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @sg_init_table(i32* %125, i32 4)
  %127 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %128 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32*, i32** %19, align 8
  %132 = call i32 @sg_set_buf(i32* %130, i32* %131, i32 4)
  %133 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %134 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32*, i32** %16, align 8
  %138 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %139 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 @sg_set_buf(i32* %136, i32* %137, i32 %141)
  %143 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %144 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %10, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %150 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %10, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @sg_set_page(i32* %146, i32 %148, i32 %151, i32 %153)
  %155 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %156 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  %159 = load i32*, i32** %18, align 8
  %160 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %161 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @sg_set_buf(i32* %158, i32* %159, i32 %162)
  %164 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %165 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @sg_init_table(i32* %166, i32 4)
  %168 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %169 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32*, i32** %19, align 8
  %173 = call i32 @sg_set_buf(i32* %171, i32* %172, i32 4)
  %174 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %175 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32*, i32** %16, align 8
  %179 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %180 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  %183 = call i32 @sg_set_buf(i32* %177, i32* %178, i32 %182)
  %184 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %185 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  %188 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %12, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %191 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %12, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @sg_set_page(i32* %187, i32 %189, i32 %192, i32 %194)
  %196 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %197 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 3
  %200 = load i32*, i32** %18, align 8
  %201 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %202 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @sg_set_buf(i32* %199, i32* %200, i32 %203)
  %205 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %206 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %205, i32 0, i32 7
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = icmp ne %struct.TYPE_2__* %207, null
  br i1 %208, label %209, label %265

209:                                              ; preds = %91
  %210 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %211 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %229

214:                                              ; preds = %209
  %215 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %216 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @bio_data_dir(i32 %217)
  %219 = load i64, i64* @WRITE, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %214
  %222 = load i32*, i32** %16, align 8
  %223 = load i32*, i32** %17, align 8
  %224 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %225 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = call i32 @memcpy(i32* %222, i32* %223, i32 %227)
  br label %257

229:                                              ; preds = %214, %209
  %230 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %231 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %230, i32 0, i32 7
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  %234 = load i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)*, i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)** %233, align 8
  %235 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %236 = load i32*, i32** %16, align 8
  %237 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %238 = call i32 %234(%struct.crypt_config* %235, i32* %236, %struct.dm_crypt_request* %237)
  store i32 %238, i32* %20, align 4
  %239 = load i32, i32* %20, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %229
  %242 = load i32, i32* %20, align 4
  store i32 %242, i32* %5, align 4
  br label %415

243:                                              ; preds = %229
  %244 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %245 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %243
  %249 = load i32*, i32** %17, align 8
  %250 = load i32*, i32** %16, align 8
  %251 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %252 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = trunc i64 %253 to i32
  %255 = call i32 @memcpy(i32* %249, i32* %250, i32 %254)
  br label %256

256:                                              ; preds = %248, %243
  br label %257

257:                                              ; preds = %256, %221
  %258 = load i32*, i32** %15, align 8
  %259 = load i32*, i32** %16, align 8
  %260 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %261 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = trunc i64 %262 to i32
  %264 = call i32 @memcpy(i32* %258, i32* %259, i32 %263)
  br label %265

265:                                              ; preds = %257, %91
  %266 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %267 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %268 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = add i64 4, %269
  %271 = trunc i64 %270 to i32
  %272 = call i32 @aead_request_set_ad(%struct.aead_request* %266, i32 %271)
  %273 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %274 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 4
  %276 = call i64 @bio_data_dir(i32 %275)
  %277 = load i64, i64* @WRITE, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %332

279:                                              ; preds = %265
  %280 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %281 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %282 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %281, i32 0, i32 2
  %283 = load i32*, i32** %282, align 8
  %284 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %285 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %288 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load i32*, i32** %15, align 8
  %291 = call i32 @aead_request_set_crypt(%struct.aead_request* %280, i32* %283, i32* %286, i32 %289, i32* %290)
  %292 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %293 = call i32 @crypto_aead_encrypt(%struct.aead_request* %292)
  store i32 %293, i32* %20, align 4
  %294 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %295 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 4
  %297 = sext i32 %296 to i64
  %298 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %299 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = add nsw i64 %297, %300
  %302 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %303 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %302, i32 0, i32 6
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %301, %304
  br i1 %305, label %306, label %331

306:                                              ; preds = %279
  %307 = load i32*, i32** %18, align 8
  %308 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %309 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %307, i64 %311
  %313 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %314 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds i32, i32* %312, i64 %315
  %317 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %318 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %317, i32 0, i32 6
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %321 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %320, i32 0, i32 5
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  %324 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %325 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = add nsw i64 %323, %326
  %328 = sub nsw i64 %319, %327
  %329 = trunc i64 %328 to i32
  %330 = call i32 @memset(i32* %316, i32 0, i32 %329)
  br label %331

331:                                              ; preds = %306, %279
  br label %351

332:                                              ; preds = %265
  %333 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %334 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %335 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %334, i32 0, i32 2
  %336 = load i32*, i32** %335, align 8
  %337 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %338 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %341 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %344 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 4
  %346 = add nsw i32 %342, %345
  %347 = load i32*, i32** %15, align 8
  %348 = call i32 @aead_request_set_crypt(%struct.aead_request* %333, i32* %336, i32* %339, i32 %346, i32* %347)
  %349 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %350 = call i32 @crypto_aead_decrypt(%struct.aead_request* %349)
  store i32 %350, i32* %20, align 4
  br label %351

351:                                              ; preds = %332, %331
  %352 = load i32, i32* %20, align 4
  %353 = load i32, i32* @EBADMSG, align 4
  %354 = sub nsw i32 0, %353
  %355 = icmp eq i32 %352, %354
  br i1 %355, label %356, label %370

356:                                              ; preds = %351
  %357 = load i32, i32* @BDEVNAME_SIZE, align 4
  %358 = zext i32 %357 to i64
  %359 = call i8* @llvm.stacksave()
  store i8* %359, i8** %21, align 8
  %360 = alloca i8, i64 %358, align 16
  store i64 %358, i64* %22, align 8
  %361 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %362 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %361, i32 0, i32 4
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @bio_devname(i32 %363, i8* %360)
  %365 = load i32*, i32** %19, align 8
  %366 = load i32, i32* %365, align 4
  %367 = call i64 @le64_to_cpu(i32 %366)
  %368 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %364, i64 %367)
  %369 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %369)
  br label %370

370:                                              ; preds = %356, %351
  %371 = load i32, i32* %20, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %395, label %373

373:                                              ; preds = %370
  %374 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %375 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %374, i32 0, i32 7
  %376 = load %struct.TYPE_2__*, %struct.TYPE_2__** %375, align 8
  %377 = icmp ne %struct.TYPE_2__* %376, null
  br i1 %377, label %378, label %395

378:                                              ; preds = %373
  %379 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %380 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %379, i32 0, i32 7
  %381 = load %struct.TYPE_2__*, %struct.TYPE_2__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %381, i32 0, i32 1
  %383 = load i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)*, i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)** %382, align 8
  %384 = icmp ne i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)* %383, null
  br i1 %384, label %385, label %395

385:                                              ; preds = %378
  %386 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %387 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %386, i32 0, i32 7
  %388 = load %struct.TYPE_2__*, %struct.TYPE_2__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %388, i32 0, i32 1
  %390 = load i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)*, i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*)** %389, align 8
  %391 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %392 = load i32*, i32** %16, align 8
  %393 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %14, align 8
  %394 = call i32 %390(%struct.crypt_config* %391, i32* %392, %struct.dm_crypt_request* %393)
  store i32 %394, i32* %20, align 4
  br label %395

395:                                              ; preds = %385, %378, %373, %370
  %396 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %397 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %396, i32 0, i32 4
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %400 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %399, i32 0, i32 3
  %401 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %402 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = call i32 @bio_advance_iter(i32 %398, i32* %400, i32 %403)
  %405 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %406 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %409 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %408, i32 0, i32 1
  %410 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %411 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 8
  %413 = call i32 @bio_advance_iter(i32 %407, i32* %409, i32 %412)
  %414 = load i32, i32* %20, align 4
  store i32 %414, i32* %5, align 4
  br label %415

415:                                              ; preds = %395, %241, %66
  %416 = load i32, i32* %5, align 4
  ret i32 %416
}

declare dso_local { i64, i32 } @bio_iter_iovec(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dm_crypt_request* @dmreq_of_req(%struct.crypt_config*, %struct.aead_request*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32* @org_tag_of_dmreq(%struct.crypt_config*, %struct.dm_crypt_request*) #1

declare dso_local i32* @org_sector_of_dmreq(%struct.crypt_config*, %struct.dm_crypt_request*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32* @iv_of_dmreq(%struct.crypt_config*, %struct.dm_crypt_request*) #1

declare dso_local i32* @org_iv_of_dmreq(%struct.crypt_config*, %struct.dm_crypt_request*) #1

declare dso_local i32* @tag_from_dmreq(%struct.crypt_config*, %struct.dm_crypt_request*) #1

declare dso_local i32* @iv_tag_from_dmreq(%struct.crypt_config*, %struct.dm_crypt_request*) #1

declare dso_local i32 @sg_init_table(i32*, i32) #1

declare dso_local i32 @sg_set_buf(i32*, i32*, i32) #1

declare dso_local i32 @sg_set_page(i32*, i32, i32, i32) #1

declare dso_local i64 @bio_data_dir(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @crypto_aead_encrypt(%struct.aead_request*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @crypto_aead_decrypt(%struct.aead_request*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @DMERR_LIMIT(i8*, i32, i64) #1

declare dso_local i32 @bio_devname(i32, i8*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @bio_advance_iter(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
