; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vce.c_radeon_vce_cs_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vce.c_radeon_vce_cs_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i64, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"invalid VCE command length (%d)!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"No other command allowed after destroy!\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Handle already in use!\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"invalid VCE command (0x%x)!\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"no session command at start of IB\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"New session without create command!\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@RADEON_MAX_VCE_HANDLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_vce_cs_parse(%struct.radeon_cs_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_cs_parser*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32* %8, i32** %10, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %210, %1
  %16 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %20 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %18, %23
  br i1 %24, label %25, label %218

25:                                               ; preds = %15
  %26 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %27 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %26, i64 %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %32 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %31, i64 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %43, label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, 3
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39, %25
  %44 = load i32, i32* %13, align 4
  %45 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %12, align 4
  br label %229

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  br label %229

55:                                               ; preds = %48
  %56 = load i32, i32* %14, align 4
  switch i32 %56, label %198 [
    i32 1, label %57
    i32 2, label %81
    i32 16777217, label %82
    i32 67108865, label %107
    i32 67108866, label %107
    i32 67108869, label %107
    i32 67108871, label %107
    i32 67108872, label %107
    i32 67108873, label %107
    i32 50331649, label %108
    i32 33554433, label %142
    i32 83886081, label %143
    i32 83886084, label %161
    i32 83886085, label %183
  ]

57:                                               ; preds = %55
  %58 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %59 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 2
  %63 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %58, i64 %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @radeon_vce_validate_handle(%struct.radeon_cs_parser* %64, i32 %65, i32* %7)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %264

71:                                               ; preds = %57
  %72 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %73 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32* %80, i32** %10, align 8
  br label %203

81:                                               ; preds = %55
  br label %203

82:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %12, align 4
  br label %229

89:                                               ; preds = %82
  %90 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %91 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %92 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 8
  %95 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %90, i64 %94)
  %96 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %97 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %98 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 10
  %101 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %96, i64 %100)
  %102 = mul nsw i32 %95, %101
  %103 = mul nsw i32 %102, 8
  %104 = mul nsw i32 %103, 3
  %105 = sdiv i32 %104, 2
  %106 = load i32*, i32** %10, align 8
  store i32 %105, i32* %106, align 4
  br label %203

107:                                              ; preds = %55, %55, %55, %55, %55, %55
  br label %203

108:                                              ; preds = %55
  %109 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %110 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %111 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 10
  %114 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %115 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 9
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @radeon_vce_cs_reloc(%struct.radeon_cs_parser* %109, i64 %113, i64 %117, i32 %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %108
  br label %229

124:                                              ; preds = %108
  %125 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %126 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %127 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 12
  %130 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %131 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 11
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %134, align 4
  %136 = sdiv i32 %135, 3
  %137 = call i32 @radeon_vce_cs_reloc(%struct.radeon_cs_parser* %125, i64 %129, i64 %133, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %124
  br label %229

141:                                              ; preds = %124
  br label %203

142:                                              ; preds = %55
  store i32 1, i32* %5, align 4
  br label %203

143:                                              ; preds = %55
  %144 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %145 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %146 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 3
  %149 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %150 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, 2
  %153 = load i32*, i32** %10, align 8
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %154, 2
  %156 = call i32 @radeon_vce_cs_reloc(%struct.radeon_cs_parser* %144, i64 %148, i64 %152, i32 %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %143
  br label %229

160:                                              ; preds = %143
  br label %203

161:                                              ; preds = %55
  %162 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %163 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %164 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, 4
  %167 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %162, i64 %166)
  store i32 %167, i32* %8, align 4
  %168 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %169 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %170 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 3
  %173 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %174 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, 2
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @radeon_vce_cs_reloc(%struct.radeon_cs_parser* %168, i64 %172, i64 %176, i32 %177)
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %161
  br label %229

182:                                              ; preds = %161
  br label %203

183:                                              ; preds = %55
  %184 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %185 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %186 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, 3
  %189 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %190 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %191, 2
  %193 = call i32 @radeon_vce_cs_reloc(%struct.radeon_cs_parser* %184, i64 %188, i64 %192, i32 4096)
  store i32 %193, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %183
  br label %229

197:                                              ; preds = %183
  br label %203

198:                                              ; preds = %55
  %199 = load i32, i32* %14, align 4
  %200 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %12, align 4
  br label %229

203:                                              ; preds = %197, %182, %160, %142, %141, %107, %89, %81, %71
  %204 = load i32, i32* %4, align 4
  %205 = icmp eq i32 %204, -1
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %12, align 4
  br label %229

210:                                              ; preds = %203
  %211 = load i32, i32* %13, align 4
  %212 = sdiv i32 %211, 4
  %213 = sext i32 %212 to i64
  %214 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %215 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, %213
  store i64 %217, i64* %215, align 8
  br label %15

218:                                              ; preds = %15
  %219 = load i32, i32* %7, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %218
  %222 = load i32, i32* %6, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %221
  %225 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %226 = load i32, i32* @ENOENT, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %12, align 4
  br label %228

228:                                              ; preds = %224, %221, %218
  br label %229

229:                                              ; preds = %228, %206, %198, %196, %181, %159, %140, %123, %85, %51, %43
  %230 = load i32, i32* %12, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* %5, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %241, label %235

235:                                              ; preds = %232, %229
  %236 = load i32, i32* %12, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %262

238:                                              ; preds = %235
  %239 = load i32, i32* %7, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %262

241:                                              ; preds = %238, %232
  store i32 0, i32* %11, align 4
  br label %242

242:                                              ; preds = %258, %241
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* @RADEON_MAX_VCE_HANDLES, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %261

246:                                              ; preds = %242
  %247 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %248 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %247, i32 0, i32 1
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %11, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %9, align 4
  %257 = call i32 @atomic_cmpxchg(i32* %255, i32 %256, i32 0)
  br label %258

258:                                              ; preds = %246
  %259 = load i32, i32* %11, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %11, align 4
  br label %242

261:                                              ; preds = %242
  br label %262

262:                                              ; preds = %261, %238, %235
  %263 = load i32, i32* %12, align 4
  store i32 %263, i32* %2, align 4
  br label %264

264:                                              ; preds = %262, %69
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i64) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_vce_validate_handle(%struct.radeon_cs_parser*, i32, i32*) #1

declare dso_local i32 @radeon_vce_cs_reloc(%struct.radeon_cs_parser*, i64, i64, i32) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
