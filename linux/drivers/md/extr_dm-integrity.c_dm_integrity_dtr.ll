; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dm_integrity_dtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dm_integrity_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_integrity_c* }
%struct.dm_integrity_c = type { i32, i32, i64, i32, i64, i32, i64, i64, %struct.skcipher_request**, %struct.skcipher_request**, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, %struct.skcipher_request**, %struct.skcipher_request**, i32, i64, i64, i64, i64, i64, i32, i32 }
%struct.skcipher_request = type { i32 }

@SB_SECTORS = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @dm_integrity_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_integrity_dtr(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.dm_integrity_c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.skcipher_request*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %6 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %7 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %6, i32 0, i32 0
  %8 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  store %struct.dm_integrity_c* %8, %struct.dm_integrity_c** %3, align 8
  %9 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %10 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %9, i32 0, i32 31
  %11 = call i32 @RB_EMPTY_ROOT(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %17 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %16, i32 0, i32 30
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %24 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %23, i32 0, i32 29
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %29 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %28, i32 0, i32 29
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @destroy_workqueue(i64 %30)
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %34 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %33, i32 0, i32 28
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %39 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %38, i32 0, i32 28
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @destroy_workqueue(i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %44 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %43, i32 0, i32 27
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %49 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %48, i32 0, i32 27
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @destroy_workqueue(i64 %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %54 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %53, i32 0, i32 26
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %59 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %58, i32 0, i32 26
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @destroy_workqueue(i64 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %64 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %63, i32 0, i32 25
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %69 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %68, i32 0, i32 25
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @destroy_workqueue(i64 %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %74 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %73, i32 0, i32 24
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @vfree(i32 %75)
  %77 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %78 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %77, i32 0, i32 23
  %79 = load %struct.skcipher_request**, %struct.skcipher_request*** %78, align 8
  %80 = call i32 @kvfree(%struct.skcipher_request** %79)
  %81 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %82 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %81, i32 0, i32 22
  %83 = load %struct.skcipher_request**, %struct.skcipher_request*** %82, align 8
  %84 = call i32 @kvfree(%struct.skcipher_request** %83)
  %85 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %86 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %85, i32 0, i32 21
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %72
  %90 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %91 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %90, i32 0, i32 21
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @dm_bufio_client_destroy(i64 %92)
  br label %94

94:                                               ; preds = %89, %72
  %95 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %96 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %95, i32 0, i32 20
  %97 = call i32 @mempool_exit(i32* %96)
  %98 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %99 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %98, i32 0, i32 19
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %94
  %103 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %104 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %103, i32 0, i32 19
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @dm_io_client_destroy(i64 %105)
  br label %107

107:                                              ; preds = %102, %94
  %108 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %109 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %108, i32 0, i32 18
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %114 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %115 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %114, i32 0, i32 18
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @dm_put_device(%struct.dm_target* %113, i64 %116)
  br label %118

118:                                              ; preds = %112, %107
  %119 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %120 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %119, i32 0, i32 17
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %125 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %126 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %125, i32 0, i32 17
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @dm_put_device(%struct.dm_target* %124, i64 %127)
  br label %129

129:                                              ; preds = %123, %118
  %130 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %131 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %130, i32 0, i32 16
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @dm_integrity_free_page_list(i32 %132)
  %134 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %135 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %134, i32 0, i32 15
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @dm_integrity_free_page_list(i32 %136)
  %138 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %139 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %138, i32 0, i32 14
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @dm_integrity_free_page_list(i32 %140)
  %142 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %143 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %142, i32 0, i32 13
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @dm_integrity_free_page_list(i32 %144)
  %146 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %147 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %146, i32 0, i32 12
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @dm_integrity_free_page_list(i32 %148)
  %150 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %151 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %150, i32 0, i32 11
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %129
  %155 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %156 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %157 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %156, i32 0, i32 11
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @dm_integrity_free_journal_scatterlist(%struct.dm_integrity_c* %155, i64 %158)
  br label %160

160:                                              ; preds = %154, %129
  %161 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %162 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %161, i32 0, i32 10
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %167 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %168 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %167, i32 0, i32 10
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @dm_integrity_free_journal_scatterlist(%struct.dm_integrity_c* %166, i64 %169)
  br label %171

171:                                              ; preds = %165, %160
  %172 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %173 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %172, i32 0, i32 9
  %174 = load %struct.skcipher_request**, %struct.skcipher_request*** %173, align 8
  %175 = icmp ne %struct.skcipher_request** %174, null
  br i1 %175, label %176, label %209

176:                                              ; preds = %171
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %201, %176
  %178 = load i32, i32* %4, align 4
  %179 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %180 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ult i32 %178, %181
  br i1 %182, label %183, label %204

183:                                              ; preds = %177
  %184 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %185 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %184, i32 0, i32 9
  %186 = load %struct.skcipher_request**, %struct.skcipher_request*** %185, align 8
  %187 = load i32, i32* %4, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.skcipher_request*, %struct.skcipher_request** %186, i64 %188
  %190 = load %struct.skcipher_request*, %struct.skcipher_request** %189, align 8
  store %struct.skcipher_request* %190, %struct.skcipher_request** %5, align 8
  %191 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %192 = icmp ne %struct.skcipher_request* %191, null
  br i1 %192, label %193, label %200

193:                                              ; preds = %183
  %194 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %195 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @kzfree(i32 %196)
  %198 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %199 = call i32 @skcipher_request_free(%struct.skcipher_request* %198)
  br label %200

200:                                              ; preds = %193, %183
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %4, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %4, align 4
  br label %177

204:                                              ; preds = %177
  %205 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %206 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %205, i32 0, i32 9
  %207 = load %struct.skcipher_request**, %struct.skcipher_request*** %206, align 8
  %208 = call i32 @kvfree(%struct.skcipher_request** %207)
  br label %209

209:                                              ; preds = %204, %171
  %210 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %211 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %210, i32 0, i32 8
  %212 = load %struct.skcipher_request**, %struct.skcipher_request*** %211, align 8
  %213 = call i32 @kvfree(%struct.skcipher_request** %212)
  %214 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %215 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %214, i32 0, i32 7
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %209
  %219 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %220 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %219, i32 0, i32 7
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* @SB_SECTORS, align 4
  %223 = load i32, i32* @SECTOR_SHIFT, align 4
  %224 = shl i32 %222, %223
  %225 = call i32 @free_pages_exact(i64 %221, i32 %224)
  br label %226

226:                                              ; preds = %218, %209
  %227 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %228 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %227, i32 0, i32 6
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %233 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %232, i32 0, i32 6
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @crypto_free_shash(i64 %234)
  br label %236

236:                                              ; preds = %231, %226
  %237 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %238 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %237, i32 0, i32 5
  %239 = call i32 @free_alg(i32* %238)
  %240 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %241 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %236
  %245 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %246 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @crypto_free_skcipher(i64 %247)
  br label %249

249:                                              ; preds = %244, %236
  %250 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %251 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %250, i32 0, i32 3
  %252 = call i32 @free_alg(i32* %251)
  %253 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %254 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %249
  %258 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %259 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @crypto_free_shash(i64 %260)
  br label %262

262:                                              ; preds = %257, %249
  %263 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %264 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %263, i32 0, i32 1
  %265 = call i32 @free_alg(i32* %264)
  %266 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %267 = call i32 @kfree(%struct.dm_integrity_c* %266)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kvfree(%struct.skcipher_request**) #1

declare dso_local i32 @dm_bufio_client_destroy(i64) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @dm_io_client_destroy(i64) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, i64) #1

declare dso_local i32 @dm_integrity_free_page_list(i32) #1

declare dso_local i32 @dm_integrity_free_journal_scatterlist(%struct.dm_integrity_c*, i64) #1

declare dso_local i32 @kzfree(i32) #1

declare dso_local i32 @skcipher_request_free(%struct.skcipher_request*) #1

declare dso_local i32 @free_pages_exact(i64, i32) #1

declare dso_local i32 @crypto_free_shash(i64) #1

declare dso_local i32 @free_alg(i32*) #1

declare dso_local i32 @crypto_free_skcipher(i64) #1

declare dso_local i32 @kfree(%struct.dm_integrity_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
