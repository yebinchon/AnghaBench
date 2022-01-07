; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_cs_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_cs_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32*, i32*, i32* }
%struct.radeon_bo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dma_fence = type { i32 }
%struct.radeon_fence = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"UVD messages must be 64 byte aligned!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed waiting for UVD message (%d)!\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed mapping the UVD message (%d)!\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid UVD handle!\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Handle 0x%x already in use!\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"No more free UVD handles!\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"UVD handle collision detected!\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Invalid UVD handle 0x%x!\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"Illegal UVD message type (%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*, %struct.radeon_bo*, i32, i32*)* @radeon_uvd_cs_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_uvd_cs_msg(%struct.radeon_cs_parser* %0, %struct.radeon_bo* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_cs_parser*, align 8
  %7 = alloca %struct.radeon_bo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dma_fence*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %6, align 8
  store %struct.radeon_bo* %1, %struct.radeon_bo** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 63
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %270

25:                                               ; preds = %4
  %26 = load %struct.radeon_bo*, %struct.radeon_bo** %7, align 8
  %27 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.dma_fence* @dma_resv_get_excl(i32 %30)
  store %struct.dma_fence* %31, %struct.dma_fence** %14, align 8
  %32 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %33 = icmp ne %struct.dma_fence* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %36 = bitcast %struct.dma_fence* %35 to %struct.radeon_fence*
  %37 = call i32 @radeon_fence_wait(%struct.radeon_fence* %36, i32 0)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %17, align 4
  %42 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %5, align 4
  br label %270

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %25
  %46 = load %struct.radeon_bo*, %struct.radeon_bo** %7, align 8
  %47 = call i32 @radeon_bo_kmap(%struct.radeon_bo* %46, i8** %15)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %17, align 4
  %52 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %17, align 4
  store i32 %53, i32* %5, align 4
  br label %270

54:                                               ; preds = %45
  %55 = load i8*, i8** %15, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr i8, i8* %55, i64 %57
  %59 = bitcast i8* %58 to i64*
  store i64* %59, i64** %10, align 8
  %60 = load i64*, i64** %10, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %11, align 8
  %63 = load i64*, i64** %10, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %270

72:                                               ; preds = %54
  %73 = load i64, i64* %11, align 8
  switch i64 %73, label %265 [
    i64 0, label %74
    i64 1, label %166
    i64 2, label %237
  ]

74:                                               ; preds = %72
  %75 = load i64*, i64** %10, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 7
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %10, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 8
  %80 = load i64, i64* %79, align 8
  %81 = mul nsw i64 %77, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %13, align 4
  %83 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %84 = load i64*, i64** %10, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 4
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @radeon_uvd_validate_codec(%struct.radeon_cs_parser* %83, i64 %86)
  store i32 %87, i32* %17, align 4
  %88 = load %struct.radeon_bo*, %struct.radeon_bo** %7, align 8
  %89 = call i32 @radeon_bo_kunmap(%struct.radeon_bo* %88)
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %74
  %93 = load i32, i32* %17, align 4
  store i32 %93, i32* %5, align 4
  br label %270

94:                                               ; preds = %74
  store i32 0, i32* %16, align 4
  br label %95

95:                                               ; preds = %159, %94
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %98 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %96, %102
  br i1 %103, label %104, label %162

104:                                              ; preds = %95
  %105 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %106 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i64 @atomic_read(i32* %113)
  %115 = load i64, i64* %12, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %104
  %118 = load i64, i64* %12, align 8
  %119 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %270

122:                                              ; preds = %104
  %123 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %124 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i64, i64* %12, align 8
  %133 = call i32 @atomic_cmpxchg(i32* %131, i64 0, i64 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %158, label %135

135:                                              ; preds = %122
  %136 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %137 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %140 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %139, i32 0, i32 0
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %138, i32* %147, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %150 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %149, i32 0, i32 0
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %148, i32* %157, align 4
  store i32 0, i32* %5, align 4
  br label %270

158:                                              ; preds = %122
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %16, align 4
  br label %95

162:                                              ; preds = %95
  %163 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %5, align 4
  br label %270

166:                                              ; preds = %72
  %167 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %168 = load i64*, i64** %10, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 4
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @radeon_uvd_validate_codec(%struct.radeon_cs_parser* %167, i64 %170)
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %17, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %166
  %175 = load i64*, i64** %10, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = call i32 @radeon_uvd_cs_msg_decode(i64* %175, i32* %176)
  store i32 %177, i32* %17, align 4
  br label %178

178:                                              ; preds = %174, %166
  %179 = load %struct.radeon_bo*, %struct.radeon_bo** %7, align 8
  %180 = call i32 @radeon_bo_kunmap(%struct.radeon_bo* %179)
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i32, i32* %17, align 4
  store i32 %184, i32* %5, align 4
  br label %270

185:                                              ; preds = %178
  store i32 0, i32* %16, align 4
  br label %186

186:                                              ; preds = %229, %185
  %187 = load i32, i32* %16, align 4
  %188 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %189 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %188, i32 0, i32 0
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp slt i32 %187, %193
  br i1 %194, label %195, label %232

195:                                              ; preds = %186
  %196 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %197 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %196, i32 0, i32 0
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %16, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = call i64 @atomic_read(i32* %204)
  %206 = load i64, i64* %12, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %228

208:                                              ; preds = %195
  %209 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %210 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %209, i32 0, i32 0
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %16, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %220 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %218, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %208
  %224 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %5, align 4
  br label %270

227:                                              ; preds = %208
  store i32 0, i32* %5, align 4
  br label %270

228:                                              ; preds = %195
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %16, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %16, align 4
  br label %186

232:                                              ; preds = %186
  %233 = load i64, i64* %12, align 8
  %234 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 %233)
  %235 = load i32, i32* @ENOENT, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %5, align 4
  br label %270

237:                                              ; preds = %72
  store i32 0, i32* %16, align 4
  br label %238

238:                                              ; preds = %259, %237
  %239 = load i32, i32* %16, align 4
  %240 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %241 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %240, i32 0, i32 0
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %239, %245
  br i1 %246, label %247, label %262

247:                                              ; preds = %238
  %248 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %249 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %248, i32 0, i32 0
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %16, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i64, i64* %12, align 8
  %258 = call i32 @atomic_cmpxchg(i32* %256, i64 %257, i64 0)
  br label %259

259:                                              ; preds = %247
  %260 = load i32, i32* %16, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %16, align 4
  br label %238

262:                                              ; preds = %238
  %263 = load %struct.radeon_bo*, %struct.radeon_bo** %7, align 8
  %264 = call i32 @radeon_bo_kunmap(%struct.radeon_bo* %263)
  store i32 0, i32* %5, align 4
  br label %270

265:                                              ; preds = %72
  %266 = load i64, i64* %11, align 8
  %267 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 %266)
  %268 = load i32, i32* @EINVAL, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %5, align 4
  br label %270

270:                                              ; preds = %265, %262, %232, %227, %223, %183, %162, %135, %117, %92, %68, %50, %40, %21
  %271 = load i32, i32* %5, align 4
  ret i32 %271
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local %struct.dma_fence* @dma_resv_get_excl(i32) #1

declare dso_local i32 @radeon_fence_wait(%struct.radeon_fence*, i32) #1

declare dso_local i32 @radeon_bo_kmap(%struct.radeon_bo*, i8**) #1

declare dso_local i32 @radeon_uvd_validate_codec(%struct.radeon_cs_parser*, i64) #1

declare dso_local i32 @radeon_bo_kunmap(%struct.radeon_bo*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @radeon_uvd_cs_msg_decode(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
