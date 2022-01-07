; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_handle_cmdline_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_handle_cmdline_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i64, i32 }

@EFI_INVALID_PARAMETER = common dso_local global i64 0, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8
@allocate_pool = common dso_local global i32 0, align 4
@EFI_LOADER_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to alloc mem for file handle list\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to alloc highmem for files\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"We've run out of free low memory\0A\00", align 1
@CONFIG_X86 = common dso_local global i32 0, align 4
@__chunk_size = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Failed to read file\0A\00", align 1
@free_pool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @handle_cmdline_files(i32* %0, i32* %1, i8* %2, i8* %3, i64 %4, i64* %5, i64* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.file_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.file_info*, align 8
  %27 = alloca [256 x i8], align 16
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i32* null, i32** %19, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %32 = load i8*, i8** %11, align 8
  store i8* %32, i8** %22, align 8
  store i32 0, i32* %24, align 4
  %33 = load i64*, i64** %14, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %7
  %36 = load i64*, i64** %15, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35, %7
  %39 = load i64, i64* @EFI_INVALID_PARAMETER, align 8
  store i64 %39, i64* %8, align 8
  br label %373

40:                                               ; preds = %35
  %41 = load i64*, i64** %14, align 8
  store i64 0, i64* %41, align 8
  %42 = load i64*, i64** %15, align 8
  store i64 0, i64* %42, align 8
  %43 = load i8*, i8** %22, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i8*, i8** %22, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45, %40
  %50 = load i64, i64* @EFI_SUCCESS, align 8
  store i64 %50, i64* %8, align 8
  br label %373

51:                                               ; preds = %45
  store i32 0, i32* %21, align 4
  br label %52

52:                                               ; preds = %106, %51
  %53 = load i8*, i8** %22, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %109

56:                                               ; preds = %52
  %57 = load i8*, i8** %22, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i8* @strstr(i8* %57, i8* %58)
  store i8* %59, i8** %22, align 8
  %60 = load i8*, i8** %22, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %109

63:                                               ; preds = %56
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = load i8*, i8** %22, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %22, align 8
  br label %69

69:                                               ; preds = %81, %63
  %70 = load i8*, i8** %22, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 47
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %22, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 92
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i1 [ true, %69 ], [ %78, %74 ]
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i8*, i8** %22, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %22, align 8
  br label %69

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %102, %84
  %86 = load i8*, i8** %22, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load i8*, i8** %22, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 32
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i8*, i8** %22, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 10
  br label %100

100:                                              ; preds = %95, %90, %85
  %101 = phi i1 [ false, %90 ], [ false, %85 ], [ %99, %95 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i8*, i8** %22, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %22, align 8
  br label %85

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %21, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %21, align 4
  br label %52

109:                                              ; preds = %62, %52
  %110 = load i32, i32* %21, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  %113 = load i64, i64* @EFI_SUCCESS, align 8
  store i64 %113, i64* %8, align 8
  br label %373

114:                                              ; preds = %109
  %115 = load i32, i32* @allocate_pool, align 4
  %116 = load i32, i32* @EFI_LOADER_DATA, align 4
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to %struct.file_info*
  %119 = load i32, i32* %21, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 16
  %122 = bitcast %struct.file_info** %16 to i8**
  %123 = call i64 (i32, %struct.file_info*, ...) @efi_call_early(i32 %115, %struct.file_info* %118, i64 %121, i8** %122)
  store i64 %123, i64* %20, align 8
  %124 = load i64, i64* %20, align 8
  %125 = load i64, i64* @EFI_SUCCESS, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %114
  %128 = load i32*, i32** %9, align 8
  %129 = call i32 @pr_efi_err(i32* %128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %369

130:                                              ; preds = %114
  %131 = load i8*, i8** %11, align 8
  store i8* %131, i8** %22, align 8
  store i32 0, i32* %23, align 4
  br label %132

132:                                              ; preds = %245, %130
  %133 = load i32, i32* %23, align 4
  %134 = load i32, i32* %21, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %248

136:                                              ; preds = %132
  %137 = load i8*, i8** %22, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = call i8* @strstr(i8* %137, i8* %138)
  store i8* %139, i8** %22, align 8
  %140 = load i8*, i8** %22, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %136
  br label %248

143:                                              ; preds = %136
  %144 = load i8*, i8** %12, align 8
  %145 = call i32 @strlen(i8* %144)
  %146 = load i8*, i8** %22, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %22, align 8
  %149 = load %struct.file_info*, %struct.file_info** %16, align 8
  %150 = load i32, i32* %23, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.file_info, %struct.file_info* %149, i64 %151
  store %struct.file_info* %152, %struct.file_info** %26, align 8
  %153 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  store i8* %153, i8** %28, align 8
  br label %154

154:                                              ; preds = %166, %143
  %155 = load i8*, i8** %22, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 47
  br i1 %158, label %164, label %159

159:                                              ; preds = %154
  %160 = load i8*, i8** %22, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 92
  br label %164

164:                                              ; preds = %159, %154
  %165 = phi i1 [ true, %154 ], [ %163, %159 ]
  br i1 %165, label %166, label %169

166:                                              ; preds = %164
  %167 = load i8*, i8** %22, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %22, align 8
  br label %154

169:                                              ; preds = %164
  br label %170

170:                                              ; preds = %211, %169
  %171 = load i8*, i8** %22, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %170
  %176 = load i8*, i8** %22, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %178, 32
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load i8*, i8** %22, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp ne i32 %183, 10
  br label %185

185:                                              ; preds = %180, %175, %170
  %186 = phi i1 [ false, %175 ], [ false, %170 ], [ %184, %180 ]
  br i1 %186, label %187, label %212

187:                                              ; preds = %185
  %188 = load i8*, i8** %28, align 8
  %189 = bitcast i8* %188 to i32*
  %190 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  %191 = bitcast i8* %190 to i32*
  %192 = getelementptr inbounds i32, i32* %191, i64 256
  %193 = icmp uge i32* %189, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  br label %212

195:                                              ; preds = %187
  %196 = load i8*, i8** %22, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 47
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load i8*, i8** %28, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %28, align 8
  store i8 92, i8* %201, align 1
  %203 = load i8*, i8** %22, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %22, align 8
  br label %211

205:                                              ; preds = %195
  %206 = load i8*, i8** %22, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %22, align 8
  %208 = load i8, i8* %206, align 1
  %209 = load i8*, i8** %28, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %28, align 8
  store i8 %208, i8* %209, align 1
  br label %211

211:                                              ; preds = %205, %200
  br label %170

212:                                              ; preds = %194, %185
  %213 = load i8*, i8** %28, align 8
  store i8 0, i8* %213, align 1
  %214 = load i32, i32* %23, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %225, label %216

216:                                              ; preds = %212
  %217 = load i32*, i32** %9, align 8
  %218 = load i32*, i32** %10, align 8
  %219 = call i64 @efi_open_volume(i32* %217, i32* %218, i32** %19)
  store i64 %219, i64* %20, align 8
  %220 = load i64, i64* %20, align 8
  %221 = load i64, i64* @EFI_SUCCESS, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  br label %365

224:                                              ; preds = %216
  br label %225

225:                                              ; preds = %224, %212
  %226 = load i32*, i32** %9, align 8
  %227 = load i32*, i32** %19, align 8
  %228 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0
  %229 = load %struct.file_info*, %struct.file_info** %26, align 8
  %230 = getelementptr inbounds %struct.file_info, %struct.file_info* %229, i32 0, i32 1
  %231 = bitcast i32* %230 to i8**
  %232 = load %struct.file_info*, %struct.file_info** %26, align 8
  %233 = getelementptr inbounds %struct.file_info, %struct.file_info* %232, i32 0, i32 0
  %234 = call i64 @efi_file_size(i32* %226, i32* %227, i8* %228, i8** %231, i64* %233)
  store i64 %234, i64* %20, align 8
  %235 = load i64, i64* %20, align 8
  %236 = load i64, i64* @EFI_SUCCESS, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %225
  br label %347

239:                                              ; preds = %225
  %240 = load %struct.file_info*, %struct.file_info** %26, align 8
  %241 = getelementptr inbounds %struct.file_info, %struct.file_info* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* %18, align 8
  %244 = add i64 %243, %242
  store i64 %244, i64* %18, align 8
  br label %245

245:                                              ; preds = %239
  %246 = load i32, i32* %23, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %23, align 4
  br label %132

248:                                              ; preds = %142, %132
  %249 = load i64, i64* %18, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %333

251:                                              ; preds = %248
  %252 = load i32*, i32** %9, align 8
  %253 = load i64, i64* %18, align 8
  %254 = load i64, i64* %13, align 8
  %255 = call i64 @efi_high_alloc(i32* %252, i64 %253, i32 4096, i64* %17, i64 %254)
  store i64 %255, i64* %20, align 8
  %256 = load i64, i64* %20, align 8
  %257 = load i64, i64* @EFI_SUCCESS, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %251
  %260 = load i32*, i32** %9, align 8
  %261 = call i32 @pr_efi_err(i32* %260, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %347

262:                                              ; preds = %251
  %263 = load i64, i64* %17, align 8
  %264 = load i64, i64* %13, align 8
  %265 = icmp ugt i64 %263, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %262
  %267 = load i32*, i32** %9, align 8
  %268 = call i32 @pr_efi_err(i32* %267, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %269 = load i64, i64* @EFI_INVALID_PARAMETER, align 8
  store i64 %269, i64* %20, align 8
  br label %342

270:                                              ; preds = %262
  %271 = load i64, i64* %17, align 8
  store i64 %271, i64* %29, align 8
  store i32 0, i32* %24, align 4
  br label %272

272:                                              ; preds = %329, %270
  %273 = load i32, i32* %24, align 4
  %274 = load i32, i32* %21, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %332

276:                                              ; preds = %272
  %277 = load %struct.file_info*, %struct.file_info** %16, align 8
  %278 = load i32, i32* %24, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.file_info, %struct.file_info* %277, i64 %279
  %281 = getelementptr inbounds %struct.file_info, %struct.file_info* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %30, align 8
  br label %283

283:                                              ; preds = %314, %276
  %284 = load i64, i64* %30, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %321

286:                                              ; preds = %283
  %287 = load i32, i32* @CONFIG_X86, align 4
  %288 = call i64 @IS_ENABLED(i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %296

290:                                              ; preds = %286
  %291 = load i64, i64* %30, align 8
  %292 = load i64, i64* @__chunk_size, align 8
  %293 = icmp ugt i64 %291, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %290
  %295 = load i64, i64* @__chunk_size, align 8
  store i64 %295, i64* %31, align 8
  br label %298

296:                                              ; preds = %290, %286
  %297 = load i64, i64* %30, align 8
  store i64 %297, i64* %31, align 8
  br label %298

298:                                              ; preds = %296, %294
  %299 = load %struct.file_info*, %struct.file_info** %16, align 8
  %300 = load i32, i32* %24, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.file_info, %struct.file_info* %299, i64 %301
  %303 = getelementptr inbounds %struct.file_info, %struct.file_info* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = load i64, i64* %29, align 8
  %306 = inttoptr i64 %305 to i8*
  %307 = call i64 @efi_file_read(i32 %304, i64* %31, i8* %306)
  store i64 %307, i64* %20, align 8
  %308 = load i64, i64* %20, align 8
  %309 = load i64, i64* @EFI_SUCCESS, align 8
  %310 = icmp ne i64 %308, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %298
  %312 = load i32*, i32** %9, align 8
  %313 = call i32 @pr_efi_err(i32* %312, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %342

314:                                              ; preds = %298
  %315 = load i64, i64* %31, align 8
  %316 = load i64, i64* %29, align 8
  %317 = add i64 %316, %315
  store i64 %317, i64* %29, align 8
  %318 = load i64, i64* %31, align 8
  %319 = load i64, i64* %30, align 8
  %320 = sub i64 %319, %318
  store i64 %320, i64* %30, align 8
  br label %283

321:                                              ; preds = %283
  %322 = load %struct.file_info*, %struct.file_info** %16, align 8
  %323 = load i32, i32* %24, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.file_info, %struct.file_info* %322, i64 %324
  %326 = getelementptr inbounds %struct.file_info, %struct.file_info* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @efi_file_close(i32 %327)
  br label %329

329:                                              ; preds = %321
  %330 = load i32, i32* %24, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %24, align 4
  br label %272

332:                                              ; preds = %272
  br label %333

333:                                              ; preds = %332, %248
  %334 = load i32, i32* @free_pool, align 4
  %335 = load %struct.file_info*, %struct.file_info** %16, align 8
  %336 = call i64 (i32, %struct.file_info*, ...) @efi_call_early(i32 %334, %struct.file_info* %335)
  %337 = load i64, i64* %17, align 8
  %338 = load i64*, i64** %14, align 8
  store i64 %337, i64* %338, align 8
  %339 = load i64, i64* %18, align 8
  %340 = load i64*, i64** %15, align 8
  store i64 %339, i64* %340, align 8
  %341 = load i64, i64* %20, align 8
  store i64 %341, i64* %8, align 8
  br label %373

342:                                              ; preds = %311, %266
  %343 = load i32*, i32** %9, align 8
  %344 = load i64, i64* %18, align 8
  %345 = load i64, i64* %17, align 8
  %346 = call i32 @efi_free(i32* %343, i64 %344, i64 %345)
  br label %347

347:                                              ; preds = %342, %259, %238
  %348 = load i32, i32* %24, align 4
  store i32 %348, i32* %25, align 4
  br label %349

349:                                              ; preds = %361, %347
  %350 = load i32, i32* %25, align 4
  %351 = load i32, i32* %23, align 4
  %352 = icmp slt i32 %350, %351
  br i1 %352, label %353, label %364

353:                                              ; preds = %349
  %354 = load %struct.file_info*, %struct.file_info** %16, align 8
  %355 = load i32, i32* %25, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.file_info, %struct.file_info* %354, i64 %356
  %358 = getelementptr inbounds %struct.file_info, %struct.file_info* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = call i32 @efi_file_close(i32 %359)
  br label %361

361:                                              ; preds = %353
  %362 = load i32, i32* %25, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %25, align 4
  br label %349

364:                                              ; preds = %349
  br label %365

365:                                              ; preds = %364, %223
  %366 = load i32, i32* @free_pool, align 4
  %367 = load %struct.file_info*, %struct.file_info** %16, align 8
  %368 = call i64 (i32, %struct.file_info*, ...) @efi_call_early(i32 %366, %struct.file_info* %367)
  br label %369

369:                                              ; preds = %365, %127
  %370 = load i64*, i64** %14, align 8
  store i64 0, i64* %370, align 8
  %371 = load i64*, i64** %15, align 8
  store i64 0, i64* %371, align 8
  %372 = load i64, i64* %20, align 8
  store i64 %372, i64* %8, align 8
  br label %373

373:                                              ; preds = %369, %333, %112, %49, %38
  %374 = load i64, i64* %8, align 8
  ret i64 %374
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @efi_call_early(i32, %struct.file_info*, ...) #1

declare dso_local i32 @pr_efi_err(i32*, i8*) #1

declare dso_local i64 @efi_open_volume(i32*, i32*, i32**) #1

declare dso_local i64 @efi_file_size(i32*, i32*, i8*, i8**, i64*) #1

declare dso_local i64 @efi_high_alloc(i32*, i64, i32, i64*, i64) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @efi_file_read(i32, i64*, i8*) #1

declare dso_local i32 @efi_file_close(i32) #1

declare dso_local i32 @efi_free(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
