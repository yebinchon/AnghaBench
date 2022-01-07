; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_ring_parse_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_ring_parse_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64*, i32* }
%struct.TYPE_4__ = type { i32*, %struct.amdgpu_ib* }
%struct.amdgpu_ib = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"invalid VCE command length (%d)!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Handle already in use!\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid VCE command (0x%x)!\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"no session command at start of IB\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"New session without create command!\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@AMDGPU_MAX_VCE_HANDLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vce_ring_parse_cs(%struct.amdgpu_cs_parser* %0, i64 %1) #0 {
  %3 = alloca %struct.amdgpu_cs_parser*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.amdgpu_ib*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %3, align 8
  store i64 %1, i64* %4, align 8
  %22 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %26, i64 %27
  store %struct.amdgpu_ib* %28, %struct.amdgpu_ib** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i64* %12, i64** %14, align 8
  store i32 0, i32* %17, align 4
  %29 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @amdgpu_sa_bo_gpu_addr(i32 %35)
  %37 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %173, %2
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %42 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %180

45:                                               ; preds = %39
  %46 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %46, i64 %47, i32 %48)
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %18, align 8
  %51 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i32, i32* %15, align 4
  %54 = add i32 %53, 1
  %55 = call i32 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %51, i64 %52, i32 %54)
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %19, align 8
  %57 = load i64, i64* %18, align 8
  %58 = icmp ult i64 %57, 8
  br i1 %58, label %63, label %59

59:                                               ; preds = %45
  %60 = load i64, i64* %18, align 8
  %61 = and i64 %60, 3
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59, %45
  %64 = load i64, i64* %18, align 8
  %65 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %17, align 4
  br label %440

68:                                               ; preds = %59
  %69 = load i64, i64* %19, align 8
  switch i64 %69, label %173 [
    i64 2, label %70
    i64 50331649, label %81
    i64 83886081, label %104
    i64 83886084, label %116
    i64 83886085, label %137
    i64 83886093, label %150
  ]

70:                                               ; preds = %68
  %71 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %72 = load i64, i64* %4, align 8
  %73 = load i32, i32* %15, align 4
  %74 = add i32 %73, 6
  %75 = call i32 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %71, i64 %72, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i32, i32* %15, align 4
  %79 = add i32 %78, 7
  %80 = call i32 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %76, i64 %77, i32 %79)
  store i32 %80, i32* %7, align 4
  br label %173

81:                                               ; preds = %68
  %82 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %83 = load i64, i64* %4, align 8
  %84 = load i32, i32* %15, align 4
  %85 = add i32 %84, 10
  %86 = load i32, i32* %15, align 4
  %87 = add i32 %86, 9
  %88 = call i32 @amdgpu_vce_validate_bo(%struct.amdgpu_cs_parser* %82, i64 %83, i32 %85, i32 %87, i32 0, i32 0)
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %440

92:                                               ; preds = %81
  %93 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %94 = load i64, i64* %4, align 8
  %95 = load i32, i32* %15, align 4
  %96 = add i32 %95, 12
  %97 = load i32, i32* %15, align 4
  %98 = add i32 %97, 11
  %99 = call i32 @amdgpu_vce_validate_bo(%struct.amdgpu_cs_parser* %93, i64 %94, i32 %96, i32 %98, i32 0, i32 0)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %440

103:                                              ; preds = %92
  br label %173

104:                                              ; preds = %68
  %105 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %106 = load i64, i64* %4, align 8
  %107 = load i32, i32* %15, align 4
  %108 = add i32 %107, 3
  %109 = load i32, i32* %15, align 4
  %110 = add i32 %109, 2
  %111 = call i32 @amdgpu_vce_validate_bo(%struct.amdgpu_cs_parser* %105, i64 %106, i32 %108, i32 %110, i32 0, i32 0)
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %440

115:                                              ; preds = %104
  br label %173

116:                                              ; preds = %68
  %117 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %118 = load i64, i64* %4, align 8
  %119 = load i32, i32* %15, align 4
  %120 = add i32 %119, 4
  %121 = call i32 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %117, i64 %118, i32 %120)
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %12, align 8
  %123 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %124 = load i64, i64* %4, align 8
  %125 = load i32, i32* %15, align 4
  %126 = add i32 %125, 3
  %127 = load i32, i32* %15, align 4
  %128 = add i32 %127, 2
  %129 = load i64, i64* %12, align 8
  %130 = trunc i64 %129 to i32
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @amdgpu_vce_validate_bo(%struct.amdgpu_cs_parser* %123, i64 %124, i32 %126, i32 %128, i32 %130, i32 %131)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %116
  br label %440

136:                                              ; preds = %116
  br label %173

137:                                              ; preds = %68
  %138 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %139 = load i64, i64* %4, align 8
  %140 = load i32, i32* %15, align 4
  %141 = add i32 %140, 3
  %142 = load i32, i32* %15, align 4
  %143 = add i32 %142, 2
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @amdgpu_vce_validate_bo(%struct.amdgpu_cs_parser* %138, i64 %139, i32 %141, i32 %143, i32 4096, i32 %144)
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %17, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %137
  br label %440

149:                                              ; preds = %137
  br label %173

150:                                              ; preds = %68
  %151 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %152 = load i64, i64* %4, align 8
  %153 = load i32, i32* %15, align 4
  %154 = add i32 %153, 3
  %155 = load i32, i32* %15, align 4
  %156 = add i32 %155, 2
  %157 = call i32 @amdgpu_vce_validate_bo(%struct.amdgpu_cs_parser* %151, i64 %152, i32 %154, i32 %156, i32 0, i32 0)
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %17, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %150
  br label %440

161:                                              ; preds = %150
  %162 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %163 = load i64, i64* %4, align 8
  %164 = load i32, i32* %15, align 4
  %165 = add i32 %164, 8
  %166 = load i32, i32* %15, align 4
  %167 = add i32 %166, 7
  %168 = call i32 @amdgpu_vce_validate_bo(%struct.amdgpu_cs_parser* %162, i64 %163, i32 %165, i32 %167, i32 0, i32 0)
  store i32 %168, i32* %17, align 4
  %169 = load i32, i32* %17, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %161
  br label %440

172:                                              ; preds = %161
  br label %173

173:                                              ; preds = %68, %172, %149, %136, %115, %103, %70
  %174 = load i64, i64* %18, align 8
  %175 = udiv i64 %174, 4
  %176 = load i32, i32* %15, align 4
  %177 = zext i32 %176 to i64
  %178 = add i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %15, align 4
  br label %39

180:                                              ; preds = %39
  store i32 0, i32* %15, align 4
  br label %181

181:                                              ; preds = %422, %180
  %182 = load i32, i32* %15, align 4
  %183 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %184 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp ult i32 %182, %185
  br i1 %186, label %187, label %429

187:                                              ; preds = %181
  %188 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %189 = load i64, i64* %4, align 8
  %190 = load i32, i32* %15, align 4
  %191 = call i32 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %188, i64 %189, i32 %190)
  %192 = sext i32 %191 to i64
  store i64 %192, i64* %20, align 8
  %193 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %194 = load i64, i64* %4, align 8
  %195 = load i32, i32* %15, align 4
  %196 = add i32 %195, 1
  %197 = call i32 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %193, i64 %194, i32 %196)
  %198 = sext i32 %197 to i64
  store i64 %198, i64* %21, align 8
  %199 = load i64, i64* %21, align 8
  switch i64 %199, label %410 [
    i64 1, label %200
    i64 2, label %224
    i64 16777217, label %235
    i64 67108865, label %288
    i64 67108866, label %288
    i64 67108869, label %288
    i64 67108871, label %288
    i64 67108872, label %288
    i64 67108873, label %288
    i64 83886082, label %288
    i64 83886089, label %288
    i64 83886092, label %289
    i64 50331649, label %300
    i64 33554433, label %328
    i64 83886081, label %334
    i64 83886084, label %349
    i64 83886085, label %369
    i64 83886093, label %382
  ]

200:                                              ; preds = %187
  %201 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %202 = load i64, i64* %4, align 8
  %203 = load i32, i32* %15, align 4
  %204 = add i32 %203, 2
  %205 = call i32 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %201, i64 %202, i32 %204)
  %206 = sext i32 %205 to i64
  store i64 %206, i64* %13, align 8
  %207 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %208 = load i64, i64* %13, align 8
  %209 = call i32 @amdgpu_vce_validate_handle(%struct.amdgpu_cs_parser* %207, i64 %208, i64* %11)
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %200
  %213 = load i32, i32* %8, align 4
  store i32 %213, i32* %17, align 4
  br label %440

214:                                              ; preds = %200
  %215 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %216 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %215, i32 0, i32 0
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i64*, i64** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  store i64* %223, i64** %14, align 8
  br label %415

224:                                              ; preds = %187
  %225 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %226 = load i64, i64* %4, align 8
  %227 = load i32, i32* %15, align 4
  %228 = add i32 %227, 6
  %229 = call i32 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %225, i64 %226, i32 %228)
  store i32 %229, i32* %6, align 4
  %230 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %231 = load i64, i64* %4, align 8
  %232 = load i32, i32* %15, align 4
  %233 = add i32 %232, 7
  %234 = call i32 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %230, i64 %231, i32 %233)
  store i32 %234, i32* %7, align 4
  br label %415

235:                                              ; preds = %187
  %236 = load i32, i32* %8, align 4
  %237 = shl i32 1, %236
  %238 = sext i32 %237 to i64
  %239 = load i64, i64* %10, align 8
  %240 = or i64 %239, %238
  store i64 %240, i64* %10, align 8
  %241 = load i64, i64* %9, align 8
  %242 = load i32, i32* %8, align 4
  %243 = shl i32 1, %242
  %244 = sext i32 %243 to i64
  %245 = and i64 %241, %244
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %259

247:                                              ; preds = %235
  %248 = load i32, i32* %8, align 4
  %249 = shl i32 1, %248
  %250 = xor i32 %249, -1
  %251 = sext i32 %250 to i64
  %252 = load i64, i64* %9, align 8
  %253 = and i64 %252, %251
  store i64 %253, i64* %9, align 8
  %254 = load i32, i32* %8, align 4
  %255 = shl i32 1, %254
  %256 = sext i32 %255 to i64
  %257 = load i64, i64* %11, align 8
  %258 = or i64 %257, %256
  store i64 %258, i64* %11, align 8
  br label %271

259:                                              ; preds = %235
  %260 = load i64, i64* %11, align 8
  %261 = load i32, i32* %8, align 4
  %262 = shl i32 1, %261
  %263 = sext i32 %262 to i64
  %264 = and i64 %260, %263
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %259
  %267 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %268 = load i32, i32* @EINVAL, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %17, align 4
  br label %440

270:                                              ; preds = %259
  br label %271

271:                                              ; preds = %270, %247
  %272 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %273 = load i64, i64* %4, align 8
  %274 = load i32, i32* %15, align 4
  %275 = add i32 %274, 8
  %276 = call i32 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %272, i64 %273, i32 %275)
  %277 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %278 = load i64, i64* %4, align 8
  %279 = load i32, i32* %15, align 4
  %280 = add i32 %279, 10
  %281 = call i32 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %277, i64 %278, i32 %280)
  %282 = mul nsw i32 %276, %281
  %283 = mul nsw i32 %282, 8
  %284 = mul nsw i32 %283, 3
  %285 = sdiv i32 %284, 2
  %286 = sext i32 %285 to i64
  %287 = load i64*, i64** %14, align 8
  store i64 %286, i64* %287, align 8
  br label %415

288:                                              ; preds = %187, %187, %187, %187, %187, %187, %187, %187
  br label %415

289:                                              ; preds = %187
  %290 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %291 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %290, i32 0, i32 0
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  switch i32 %294, label %296 [
    i32 130, label %295
  ]

295:                                              ; preds = %289
  br label %299

296:                                              ; preds = %289
  %297 = load i32, i32* @EINVAL, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %17, align 4
  br label %440

299:                                              ; preds = %295
  br label %415

300:                                              ; preds = %187
  %301 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %302 = load i64, i64* %4, align 8
  %303 = load i32, i32* %15, align 4
  %304 = add i32 %303, 10
  %305 = load i32, i32* %15, align 4
  %306 = add i32 %305, 9
  %307 = load i64*, i64** %14, align 8
  %308 = load i64, i64* %307, align 8
  %309 = call i32 @amdgpu_vce_cs_reloc(%struct.amdgpu_cs_parser* %301, i64 %302, i32 %304, i32 %306, i64 %308, i32 0)
  store i32 %309, i32* %17, align 4
  %310 = load i32, i32* %17, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %300
  br label %440

313:                                              ; preds = %300
  %314 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %315 = load i64, i64* %4, align 8
  %316 = load i32, i32* %15, align 4
  %317 = add i32 %316, 12
  %318 = load i32, i32* %15, align 4
  %319 = add i32 %318, 11
  %320 = load i64*, i64** %14, align 8
  %321 = load i64, i64* %320, align 8
  %322 = udiv i64 %321, 3
  %323 = call i32 @amdgpu_vce_cs_reloc(%struct.amdgpu_cs_parser* %314, i64 %315, i32 %317, i32 %319, i64 %322, i32 0)
  store i32 %323, i32* %17, align 4
  %324 = load i32, i32* %17, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %313
  br label %440

327:                                              ; preds = %313
  br label %415

328:                                              ; preds = %187
  %329 = load i32, i32* %8, align 4
  %330 = shl i32 1, %329
  %331 = sext i32 %330 to i64
  %332 = load i64, i64* %9, align 8
  %333 = or i64 %332, %331
  store i64 %333, i64* %9, align 8
  br label %415

334:                                              ; preds = %187
  %335 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %336 = load i64, i64* %4, align 8
  %337 = load i32, i32* %15, align 4
  %338 = add i32 %337, 3
  %339 = load i32, i32* %15, align 4
  %340 = add i32 %339, 2
  %341 = load i64*, i64** %14, align 8
  %342 = load i64, i64* %341, align 8
  %343 = mul i64 %342, 2
  %344 = call i32 @amdgpu_vce_cs_reloc(%struct.amdgpu_cs_parser* %335, i64 %336, i32 %338, i32 %340, i64 %343, i32 0)
  store i32 %344, i32* %17, align 4
  %345 = load i32, i32* %17, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %334
  br label %440

348:                                              ; preds = %334
  br label %415

349:                                              ; preds = %187
  %350 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %351 = load i64, i64* %4, align 8
  %352 = load i32, i32* %15, align 4
  %353 = add i32 %352, 4
  %354 = call i32 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %350, i64 %351, i32 %353)
  %355 = sext i32 %354 to i64
  store i64 %355, i64* %12, align 8
  %356 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %357 = load i64, i64* %4, align 8
  %358 = load i32, i32* %15, align 4
  %359 = add i32 %358, 3
  %360 = load i32, i32* %15, align 4
  %361 = add i32 %360, 2
  %362 = load i64, i64* %12, align 8
  %363 = load i32, i32* %7, align 4
  %364 = call i32 @amdgpu_vce_cs_reloc(%struct.amdgpu_cs_parser* %356, i64 %357, i32 %359, i32 %361, i64 %362, i32 %363)
  store i32 %364, i32* %17, align 4
  %365 = load i32, i32* %17, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %349
  br label %440

368:                                              ; preds = %349
  br label %415

369:                                              ; preds = %187
  %370 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %371 = load i64, i64* %4, align 8
  %372 = load i32, i32* %15, align 4
  %373 = add i32 %372, 3
  %374 = load i32, i32* %15, align 4
  %375 = add i32 %374, 2
  %376 = load i32, i32* %6, align 4
  %377 = call i32 @amdgpu_vce_cs_reloc(%struct.amdgpu_cs_parser* %370, i64 %371, i32 %373, i32 %375, i64 4096, i32 %376)
  store i32 %377, i32* %17, align 4
  %378 = load i32, i32* %17, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %369
  br label %440

381:                                              ; preds = %369
  br label %415

382:                                              ; preds = %187
  %383 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %384 = load i64, i64* %4, align 8
  %385 = load i32, i32* %15, align 4
  %386 = add i32 %385, 3
  %387 = load i32, i32* %15, align 4
  %388 = add i32 %387, 2
  %389 = load i64*, i64** %14, align 8
  %390 = load i64, i64* %389, align 8
  %391 = call i32 @amdgpu_vce_cs_reloc(%struct.amdgpu_cs_parser* %383, i64 %384, i32 %386, i32 %388, i64 %390, i32 0)
  store i32 %391, i32* %17, align 4
  %392 = load i32, i32* %17, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %382
  br label %440

395:                                              ; preds = %382
  %396 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %397 = load i64, i64* %4, align 8
  %398 = load i32, i32* %15, align 4
  %399 = add i32 %398, 8
  %400 = load i32, i32* %15, align 4
  %401 = add i32 %400, 7
  %402 = load i64*, i64** %14, align 8
  %403 = load i64, i64* %402, align 8
  %404 = udiv i64 %403, 12
  %405 = call i32 @amdgpu_vce_cs_reloc(%struct.amdgpu_cs_parser* %396, i64 %397, i32 %399, i32 %401, i64 %404, i32 0)
  store i32 %405, i32* %17, align 4
  %406 = load i32, i32* %17, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %395
  br label %440

409:                                              ; preds = %395
  br label %415

410:                                              ; preds = %187
  %411 = load i64, i64* %21, align 8
  %412 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %411)
  %413 = load i32, i32* @EINVAL, align 4
  %414 = sub nsw i32 0, %413
  store i32 %414, i32* %17, align 4
  br label %440

415:                                              ; preds = %409, %381, %368, %348, %328, %327, %299, %288, %271, %224, %214
  %416 = load i32, i32* %8, align 4
  %417 = icmp eq i32 %416, -1
  br i1 %417, label %418, label %422

418:                                              ; preds = %415
  %419 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %420 = load i32, i32* @EINVAL, align 4
  %421 = sub nsw i32 0, %420
  store i32 %421, i32* %17, align 4
  br label %440

422:                                              ; preds = %415
  %423 = load i64, i64* %20, align 8
  %424 = udiv i64 %423, 4
  %425 = load i32, i32* %15, align 4
  %426 = zext i32 %425 to i64
  %427 = add i64 %426, %424
  %428 = trunc i64 %427 to i32
  store i32 %428, i32* %15, align 4
  br label %181

429:                                              ; preds = %181
  %430 = load i64, i64* %11, align 8
  %431 = load i64, i64* %10, align 8
  %432 = xor i64 %431, -1
  %433 = and i64 %430, %432
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %429
  %436 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %437 = load i32, i32* @ENOENT, align 4
  %438 = sub nsw i32 0, %437
  store i32 %438, i32* %17, align 4
  br label %439

439:                                              ; preds = %435, %429
  br label %440

440:                                              ; preds = %439, %418, %410, %408, %394, %380, %367, %347, %326, %312, %296, %266, %212, %171, %160, %148, %135, %114, %102, %91, %63
  %441 = load i32, i32* %17, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %445, label %443

443:                                              ; preds = %440
  %444 = load i64, i64* %9, align 8
  store i64 %444, i64* %12, align 8
  br label %447

445:                                              ; preds = %440
  %446 = load i64, i64* %11, align 8
  store i64 %446, i64* %12, align 8
  br label %447

447:                                              ; preds = %445, %443
  store i32 0, i32* %16, align 4
  br label %448

448:                                              ; preds = %471, %447
  %449 = load i32, i32* %16, align 4
  %450 = load i32, i32* @AMDGPU_MAX_VCE_HANDLES, align 4
  %451 = icmp slt i32 %449, %450
  br i1 %451, label %452, label %474

452:                                              ; preds = %448
  %453 = load i64, i64* %12, align 8
  %454 = load i32, i32* %16, align 4
  %455 = shl i32 1, %454
  %456 = sext i32 %455 to i64
  %457 = and i64 %453, %456
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %470

459:                                              ; preds = %452
  %460 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %461 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %460, i32 0, i32 0
  %462 = load %struct.TYPE_6__*, %struct.TYPE_6__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %463, i32 0, i32 1
  %465 = load i32*, i32** %464, align 8
  %466 = load i32, i32* %16, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  %469 = call i32 @atomic_set(i32* %468, i32 0)
  br label %470

470:                                              ; preds = %459, %452
  br label %471

471:                                              ; preds = %470
  %472 = load i32, i32* %16, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %16, align 4
  br label %448

474:                                              ; preds = %448
  %475 = load i32, i32* %17, align 4
  ret i32 %475
}

declare dso_local i32 @amdgpu_sa_bo_gpu_addr(i32) #1

declare dso_local i32 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser*, i64, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @amdgpu_vce_validate_bo(%struct.amdgpu_cs_parser*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_vce_validate_handle(%struct.amdgpu_cs_parser*, i64, i64*) #1

declare dso_local i32 @amdgpu_vce_cs_reloc(%struct.amdgpu_cs_parser*, i64, i32, i32, i64, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
