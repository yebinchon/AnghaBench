; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20v2.c_dml20v2_DisplayPipeConfiguration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20v2.c_dml20v2_DisplayPipeConfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64*, i64*, i64*, double*, double*, i32*, i32*, double*, double*, double*, double, double*, double*, i32*, double* }

@dm_444_64 = common dso_local global i64 0, align 8
@dm_444_32 = common dso_local global i64 0, align 8
@dm_444_16 = common dso_local global i64 0, align 8
@dm_444_8 = common dso_local global i64 0, align 8
@dm_420_8 = common dso_local global i64 0, align 8
@dm_sw_linear = common dso_local global i64 0, align 8
@dm_horz = common dso_local global i64 0, align 8
@dm_sw_4kb_s = common dso_local global i64 0, align 8
@dm_sw_4kb_s_x = common dso_local global i64 0, align 8
@dm_sw_64kb_s = common dso_local global i64 0, align 8
@dm_sw_64kb_s_t = common dso_local global i64 0, align 8
@dm_sw_64kb_s_x = common dso_local global i64 0, align 8
@dm_sw_var_s = common dso_local global i64 0, align 8
@dm_sw_var_s_x = common dso_local global i64 0, align 8
@dm_420_10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display_mode_lib*)* @dml20v2_DisplayPipeConfiguration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dml20v2_DisplayPipeConfiguration(%struct.display_mode_lib* %0) #0 {
  %2 = alloca %struct.display_mode_lib*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %2, align 8
  store i32 0, i32* %19, align 4
  br label %21

21:                                               ; preds = %856, %1
  %22 = load i32, i32* %19, align 4
  %23 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %24 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %22, %26
  br i1 %27, label %28, label %859

28:                                               ; preds = %21
  store i32 0, i32* %20, align 4
  %29 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %30 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %19, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @dm_444_64, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store double 8.000000e+00, double* %3, align 8
  store double 0.000000e+00, double* %4, align 8
  br label %93

40:                                               ; preds = %28
  %41 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %42 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %19, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @dm_444_32, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store double 4.000000e+00, double* %3, align 8
  store double 0.000000e+00, double* %4, align 8
  br label %92

52:                                               ; preds = %40
  %53 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %54 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %19, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @dm_444_16, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  store double 2.000000e+00, double* %3, align 8
  store double 0.000000e+00, double* %4, align 8
  br label %91

64:                                               ; preds = %52
  %65 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %66 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %19, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @dm_444_8, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store double 1.000000e+00, double* %3, align 8
  store double 0.000000e+00, double* %4, align 8
  br label %90

76:                                               ; preds = %64
  %77 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %78 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %19, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @dm_420_8, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  store double 1.000000e+00, double* %3, align 8
  store double 2.000000e+00, double* %4, align 8
  br label %89

88:                                               ; preds = %76
  store double 0x3FF5555555555555, double* %3, align 8
  store double 0x4005555555555555, double* %4, align 8
  br label %89

89:                                               ; preds = %88, %87
  br label %90

90:                                               ; preds = %89, %75
  br label %91

91:                                               ; preds = %90, %63
  br label %92

92:                                               ; preds = %91, %51
  br label %93

93:                                               ; preds = %92, %39
  %94 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %95 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %19, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @dm_444_64, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %137, label %104

104:                                              ; preds = %93
  %105 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %106 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %19, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @dm_444_32, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %137, label %115

115:                                              ; preds = %104
  %116 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %117 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %19, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @dm_444_16, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %137, label %126

126:                                              ; preds = %115
  %127 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %128 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %19, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @dm_444_8, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %194

137:                                              ; preds = %126, %115, %104, %93
  %138 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %139 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %19, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @dm_sw_linear, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %137
  store double 1.000000e+00, double* %5, align 8
  br label %187

149:                                              ; preds = %137
  %150 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %151 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %19, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @dm_444_64, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %149
  store double 4.000000e+00, double* %5, align 8
  br label %186

161:                                              ; preds = %149
  %162 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %163 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %19, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @dm_444_32, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %183, label %172

172:                                              ; preds = %161
  %173 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %174 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i64*, i64** %175, align 8
  %177 = load i32, i32* %19, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @dm_444_16, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %172, %161
  store double 8.000000e+00, double* %5, align 8
  br label %185

184:                                              ; preds = %172
  store double 1.600000e+01, double* %5, align 8
  br label %185

185:                                              ; preds = %184, %183
  br label %186

186:                                              ; preds = %185, %160
  br label %187

187:                                              ; preds = %186, %148
  %188 = load double, double* %3, align 8
  %189 = call i32 @dml_ceil(double %188, i32 1)
  %190 = sdiv i32 256, %189
  %191 = sitofp i32 %190 to double
  %192 = load double, double* %5, align 8
  %193 = fdiv double %191, %192
  store double %193, double* %7, align 8
  store double 0.000000e+00, double* %6, align 8
  store double 0.000000e+00, double* %8, align 8
  br label %233

194:                                              ; preds = %126
  %195 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %196 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 2
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %19, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @dm_sw_linear, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %194
  store double 1.000000e+00, double* %5, align 8
  store double 1.000000e+00, double* %6, align 8
  br label %220

206:                                              ; preds = %194
  %207 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %208 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 1
  %210 = load i64*, i64** %209, align 8
  %211 = load i32, i32* %19, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @dm_420_8, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %206
  store double 1.600000e+01, double* %5, align 8
  store double 8.000000e+00, double* %6, align 8
  br label %219

218:                                              ; preds = %206
  store double 8.000000e+00, double* %5, align 8
  store double 8.000000e+00, double* %6, align 8
  br label %219

219:                                              ; preds = %218, %217
  br label %220

220:                                              ; preds = %219, %205
  %221 = load double, double* %3, align 8
  %222 = call i32 @dml_ceil(double %221, i32 1)
  %223 = sdiv i32 256, %222
  %224 = sitofp i32 %223 to double
  %225 = load double, double* %5, align 8
  %226 = fdiv double %224, %225
  store double %226, double* %7, align 8
  %227 = load double, double* %4, align 8
  %228 = call i32 @dml_ceil(double %227, i32 2)
  %229 = sdiv i32 256, %228
  %230 = sitofp i32 %229 to double
  %231 = load double, double* %6, align 8
  %232 = fdiv double %230, %231
  store double %232, double* %8, align 8
  br label %233

233:                                              ; preds = %220, %187
  %234 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %235 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 3
  %237 = load i64*, i64** %236, align 8
  %238 = load i32, i32* %19, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %237, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @dm_horz, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %233
  %245 = load double, double* %5, align 8
  store double %245, double* %9, align 8
  %246 = load double, double* %6, align 8
  store double %246, double* %10, align 8
  br label %250

247:                                              ; preds = %233
  %248 = load double, double* %7, align 8
  store double %248, double* %9, align 8
  %249 = load double, double* %8, align 8
  store double %249, double* %10, align 8
  br label %250

250:                                              ; preds = %247, %244
  %251 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %252 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 1
  %254 = load i64*, i64** %253, align 8
  %255 = load i32, i32* %19, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i64, i64* %254, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @dm_444_64, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %294, label %261

261:                                              ; preds = %250
  %262 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %263 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 1
  %265 = load i64*, i64** %264, align 8
  %266 = load i32, i32* %19, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %265, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @dm_444_32, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %294, label %272

272:                                              ; preds = %261
  %273 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %274 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 1
  %276 = load i64*, i64** %275, align 8
  %277 = load i32, i32* %19, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %276, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @dm_444_16, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %294, label %283

283:                                              ; preds = %272
  %284 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %285 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 1
  %287 = load i64*, i64** %286, align 8
  %288 = load i32, i32* %19, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %287, i64 %289
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @dm_444_8, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %436

294:                                              ; preds = %283, %272, %261, %250
  %295 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %296 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 2
  %298 = load i64*, i64** %297, align 8
  %299 = load i32, i32* %19, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds i64, i64* %298, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @dm_sw_linear, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %404, label %305

305:                                              ; preds = %294
  %306 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %307 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 1
  %309 = load i64*, i64** %308, align 8
  %310 = load i32, i32* %19, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds i64, i64* %309, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @dm_444_64, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %406

316:                                              ; preds = %305
  %317 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %318 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 2
  %320 = load i64*, i64** %319, align 8
  %321 = load i32, i32* %19, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds i64, i64* %320, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @dm_sw_4kb_s, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %393, label %327

327:                                              ; preds = %316
  %328 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %329 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i32 0, i32 2
  %331 = load i64*, i64** %330, align 8
  %332 = load i32, i32* %19, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds i64, i64* %331, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @dm_sw_4kb_s_x, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %393, label %338

338:                                              ; preds = %327
  %339 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %340 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i32 0, i32 2
  %342 = load i64*, i64** %341, align 8
  %343 = load i32, i32* %19, align 4
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds i64, i64* %342, i64 %344
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @dm_sw_64kb_s, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %393, label %349

349:                                              ; preds = %338
  %350 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %351 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %351, i32 0, i32 2
  %353 = load i64*, i64** %352, align 8
  %354 = load i32, i32* %19, align 4
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds i64, i64* %353, i64 %355
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @dm_sw_64kb_s_t, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %393, label %360

360:                                              ; preds = %349
  %361 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %362 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %362, i32 0, i32 2
  %364 = load i64*, i64** %363, align 8
  %365 = load i32, i32* %19, align 4
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds i64, i64* %364, i64 %366
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @dm_sw_64kb_s_x, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %393, label %371

371:                                              ; preds = %360
  %372 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %373 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %373, i32 0, i32 2
  %375 = load i64*, i64** %374, align 8
  %376 = load i32, i32* %19, align 4
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds i64, i64* %375, i64 %377
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @dm_sw_var_s, align 8
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %393, label %382

382:                                              ; preds = %371
  %383 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %384 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %384, i32 0, i32 2
  %386 = load i64*, i64** %385, align 8
  %387 = load i32, i32* %19, align 4
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds i64, i64* %386, i64 %388
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @dm_sw_var_s_x, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %393, label %406

393:                                              ; preds = %382, %371, %360, %349, %338, %327, %316
  %394 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %395 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %395, i32 0, i32 3
  %397 = load i64*, i64** %396, align 8
  %398 = load i32, i32* %19, align 4
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds i64, i64* %397, i64 %399
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* @dm_horz, align 8
  %403 = icmp eq i64 %401, %402
  br i1 %403, label %404, label %406

404:                                              ; preds = %393, %294
  %405 = load double, double* %9, align 8
  store double %405, double* %11, align 8
  br label %434

406:                                              ; preds = %393, %382, %305
  %407 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %408 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %408, i32 0, i32 1
  %410 = load i64*, i64** %409, align 8
  %411 = load i32, i32* %19, align 4
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds i64, i64* %410, i64 %412
  %414 = load i64, i64* %413, align 8
  %415 = load i64, i64* @dm_444_8, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %430

417:                                              ; preds = %406
  %418 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %419 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %419, i32 0, i32 3
  %421 = load i64*, i64** %420, align 8
  %422 = load i32, i32* %19, align 4
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds i64, i64* %421, i64 %423
  %425 = load i64, i64* %424, align 8
  %426 = load i64, i64* @dm_horz, align 8
  %427 = icmp ne i64 %425, %426
  br i1 %427, label %428, label %430

428:                                              ; preds = %417
  %429 = load double, double* %9, align 8
  store double %429, double* %11, align 8
  br label %433

430:                                              ; preds = %417, %406
  %431 = load double, double* %9, align 8
  %432 = fdiv double %431, 2.000000e+00
  store double %432, double* %11, align 8
  br label %433

433:                                              ; preds = %430, %428
  br label %434

434:                                              ; preds = %433, %404
  %435 = load double, double* %10, align 8
  store double %435, double* %12, align 8
  br label %508

436:                                              ; preds = %283
  %437 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %438 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %438, i32 0, i32 2
  %440 = load i64*, i64** %439, align 8
  %441 = load i32, i32* %19, align 4
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds i64, i64* %440, i64 %442
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* @dm_sw_linear, align 8
  %446 = icmp eq i64 %444, %445
  br i1 %446, label %447, label %450

447:                                              ; preds = %436
  %448 = load double, double* %9, align 8
  store double %448, double* %11, align 8
  %449 = load double, double* %10, align 8
  store double %449, double* %12, align 8
  br label %507

450:                                              ; preds = %436
  %451 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %452 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %452, i32 0, i32 1
  %454 = load i64*, i64** %453, align 8
  %455 = load i32, i32* %19, align 4
  %456 = zext i32 %455 to i64
  %457 = getelementptr inbounds i64, i64* %454, i64 %456
  %458 = load i64, i64* %457, align 8
  %459 = load i64, i64* @dm_420_8, align 8
  %460 = icmp eq i64 %458, %459
  br i1 %460, label %461, label %476

461:                                              ; preds = %450
  %462 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %463 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %463, i32 0, i32 3
  %465 = load i64*, i64** %464, align 8
  %466 = load i32, i32* %19, align 4
  %467 = zext i32 %466 to i64
  %468 = getelementptr inbounds i64, i64* %465, i64 %467
  %469 = load i64, i64* %468, align 8
  %470 = load i64, i64* @dm_horz, align 8
  %471 = icmp eq i64 %469, %470
  br i1 %471, label %472, label %476

472:                                              ; preds = %461
  %473 = load double, double* %9, align 8
  %474 = fdiv double %473, 2.000000e+00
  store double %474, double* %11, align 8
  %475 = load double, double* %10, align 8
  store double %475, double* %12, align 8
  br label %506

476:                                              ; preds = %461, %450
  %477 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %478 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %478, i32 0, i32 1
  %480 = load i64*, i64** %479, align 8
  %481 = load i32, i32* %19, align 4
  %482 = zext i32 %481 to i64
  %483 = getelementptr inbounds i64, i64* %480, i64 %482
  %484 = load i64, i64* %483, align 8
  %485 = load i64, i64* @dm_420_10, align 8
  %486 = icmp eq i64 %484, %485
  br i1 %486, label %487, label %502

487:                                              ; preds = %476
  %488 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %489 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %489, i32 0, i32 3
  %491 = load i64*, i64** %490, align 8
  %492 = load i32, i32* %19, align 4
  %493 = zext i32 %492 to i64
  %494 = getelementptr inbounds i64, i64* %491, i64 %493
  %495 = load i64, i64* %494, align 8
  %496 = load i64, i64* @dm_horz, align 8
  %497 = icmp eq i64 %495, %496
  br i1 %497, label %498, label %502

498:                                              ; preds = %487
  %499 = load double, double* %10, align 8
  %500 = fdiv double %499, 2.000000e+00
  store double %500, double* %12, align 8
  %501 = load double, double* %9, align 8
  store double %501, double* %11, align 8
  br label %505

502:                                              ; preds = %487, %476
  %503 = load double, double* %9, align 8
  store double %503, double* %11, align 8
  %504 = load double, double* %10, align 8
  store double %504, double* %12, align 8
  br label %505

505:                                              ; preds = %502, %498
  br label %506

506:                                              ; preds = %505, %472
  br label %507

507:                                              ; preds = %506, %447
  br label %508

508:                                              ; preds = %507, %434
  %509 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %510 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %509, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %510, i32 0, i32 3
  %512 = load i64*, i64** %511, align 8
  %513 = load i32, i32* %19, align 4
  %514 = zext i32 %513 to i64
  %515 = getelementptr inbounds i64, i64* %512, i64 %514
  %516 = load i64, i64* %515, align 8
  %517 = load i64, i64* @dm_horz, align 8
  %518 = icmp eq i64 %516, %517
  br i1 %518, label %519, label %528

519:                                              ; preds = %508
  %520 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %521 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %521, i32 0, i32 4
  %523 = load double*, double** %522, align 8
  %524 = load i32, i32* %19, align 4
  %525 = zext i32 %524 to i64
  %526 = getelementptr inbounds double, double* %523, i64 %525
  %527 = load double, double* %526, align 8
  store double %527, double* %13, align 8
  br label %537

528:                                              ; preds = %508
  %529 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %530 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %529, i32 0, i32 0
  %531 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %530, i32 0, i32 5
  %532 = load double*, double** %531, align 8
  %533 = load i32, i32* %19, align 4
  %534 = zext i32 %533 to i64
  %535 = getelementptr inbounds double, double* %532, i64 %534
  %536 = load double, double* %535, align 8
  store double %536, double* %13, align 8
  br label %537

537:                                              ; preds = %528, %519
  %538 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %539 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %539, i32 0, i32 6
  %541 = load i32*, i32** %540, align 8
  %542 = load i32, i32* %19, align 4
  %543 = zext i32 %542 to i64
  %544 = getelementptr inbounds i32, i32* %541, i64 %543
  %545 = load i32, i32* %544, align 4
  %546 = icmp eq i32 %545, 1
  br i1 %546, label %547, label %548

547:                                              ; preds = %537
  store i32 1, i32* %20, align 4
  br label %548

548:                                              ; preds = %547, %537
  store i32 0, i32* %18, align 4
  br label %549

549:                                              ; preds = %579, %548
  %550 = load i32, i32* %18, align 4
  %551 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %552 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 8
  %555 = icmp ult i32 %550, %554
  br i1 %555, label %556, label %582

556:                                              ; preds = %549
  %557 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %558 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %557, i32 0, i32 0
  %559 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %558, i32 0, i32 7
  %560 = load i32*, i32** %559, align 8
  %561 = load i32, i32* %19, align 4
  %562 = zext i32 %561 to i64
  %563 = getelementptr inbounds i32, i32* %560, i64 %562
  %564 = load i32, i32* %563, align 4
  %565 = load i32, i32* %18, align 4
  %566 = icmp eq i32 %564, %565
  br i1 %566, label %567, label %578

567:                                              ; preds = %556
  %568 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %569 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %568, i32 0, i32 0
  %570 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %569, i32 0, i32 6
  %571 = load i32*, i32** %570, align 8
  %572 = load i32, i32* %18, align 4
  %573 = zext i32 %572 to i64
  %574 = getelementptr inbounds i32, i32* %571, i64 %573
  %575 = load i32, i32* %574, align 4
  %576 = icmp eq i32 %575, 1
  br i1 %576, label %577, label %578

577:                                              ; preds = %567
  store i32 1, i32* %20, align 4
  br label %578

578:                                              ; preds = %577, %567, %556
  br label %579

579:                                              ; preds = %578
  %580 = load i32, i32* %18, align 4
  %581 = add i32 %580, 1
  store i32 %581, i32* %18, align 4
  br label %549

582:                                              ; preds = %549
  %583 = load i32, i32* %20, align 4
  %584 = icmp eq i32 %583, 1
  br i1 %584, label %585, label %606

585:                                              ; preds = %582
  %586 = load double, double* %13, align 8
  %587 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %588 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %587, i32 0, i32 0
  %589 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %588, i32 0, i32 8
  %590 = load double*, double** %589, align 8
  %591 = load i32, i32* %19, align 4
  %592 = zext i32 %591 to i64
  %593 = getelementptr inbounds double, double* %590, i64 %592
  %594 = load double, double* %593, align 8
  %595 = fdiv double %594, 2.000000e+00
  %596 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %597 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %596, i32 0, i32 0
  %598 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %597, i32 0, i32 9
  %599 = load double*, double** %598, align 8
  %600 = load i32, i32* %19, align 4
  %601 = zext i32 %600 to i64
  %602 = getelementptr inbounds double, double* %599, i64 %601
  %603 = load double, double* %602, align 8
  %604 = fmul double %595, %603
  %605 = call double @dml_min(double %586, double %604)
  store double %605, double* %13, align 8
  br label %629

606:                                              ; preds = %582
  %607 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %608 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %607, i32 0, i32 0
  %609 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %608, i32 0, i32 10
  %610 = load double*, double** %609, align 8
  %611 = load i32, i32* %19, align 4
  %612 = zext i32 %611 to i64
  %613 = getelementptr inbounds double, double* %610, i64 %612
  %614 = load double, double* %613, align 8
  %615 = fcmp oeq double %614, 0.000000e+00
  br i1 %615, label %616, label %617

616:                                              ; preds = %606
  store double 0.000000e+00, double* %13, align 8
  br label %628

617:                                              ; preds = %606
  %618 = load double, double* %13, align 8
  %619 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %620 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %619, i32 0, i32 0
  %621 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %620, i32 0, i32 10
  %622 = load double*, double** %621, align 8
  %623 = load i32, i32* %19, align 4
  %624 = zext i32 %623 to i64
  %625 = getelementptr inbounds double, double* %622, i64 %624
  %626 = load double, double* %625, align 8
  %627 = fdiv double %618, %626
  store double %627, double* %13, align 8
  br label %628

628:                                              ; preds = %617, %616
  br label %629

629:                                              ; preds = %628, %585
  %630 = load double, double* %3, align 8
  %631 = call i32 @dml_ceil(double %630, i32 1)
  %632 = sdiv i32 256, %631
  %633 = sitofp i32 %632 to double
  %634 = load double, double* %9, align 8
  %635 = fdiv double %633, %634
  store double %635, double* %14, align 8
  %636 = load double, double* %13, align 8
  %637 = fsub double %636, 1.000000e+00
  %638 = load double, double* %14, align 8
  %639 = fptosi double %638 to i32
  %640 = call i32 @dml_ceil(double %637, i32 %639)
  %641 = sitofp i32 %640 to double
  %642 = load double, double* %14, align 8
  %643 = fadd double %641, %642
  %644 = load double, double* %3, align 8
  %645 = fmul double %643, %644
  %646 = load double, double* %9, align 8
  %647 = fmul double %645, %646
  store double %647, double* %16, align 8
  %648 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %649 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %648, i32 0, i32 0
  %650 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %649, i32 0, i32 1
  %651 = load i64*, i64** %650, align 8
  %652 = load i32, i32* %19, align 4
  %653 = zext i32 %652 to i64
  %654 = getelementptr inbounds i64, i64* %651, i64 %653
  %655 = load i64, i64* %654, align 8
  %656 = load i64, i64* @dm_420_10, align 8
  %657 = icmp eq i64 %655, %656
  br i1 %657, label %658, label %663

658:                                              ; preds = %629
  %659 = load double, double* %16, align 8
  %660 = call i32 @dml_ceil(double %659, i32 256)
  %661 = add nsw i32 %660, 256
  %662 = sitofp i32 %661 to double
  store double %662, double* %16, align 8
  br label %663

663:                                              ; preds = %658, %629
  %664 = load double, double* %10, align 8
  %665 = fcmp ogt double %664, 0.000000e+00
  br i1 %665, label %666, label %702

666:                                              ; preds = %663
  %667 = load double, double* %4, align 8
  %668 = call i32 @dml_ceil(double %667, i32 2)
  %669 = sitofp i32 %668 to double
  %670 = fdiv double 2.560000e+02, %669
  %671 = load double, double* %10, align 8
  %672 = fdiv double %670, %671
  store double %672, double* %15, align 8
  %673 = load double, double* %13, align 8
  %674 = fdiv double %673, 2.000000e+00
  %675 = fsub double %674, 1.000000e+00
  %676 = load double, double* %15, align 8
  %677 = fptosi double %676 to i32
  %678 = call i32 @dml_ceil(double %675, i32 %677)
  %679 = sitofp i32 %678 to double
  %680 = load double, double* %15, align 8
  %681 = fadd double %679, %680
  %682 = load double, double* %4, align 8
  %683 = fmul double %681, %682
  %684 = load double, double* %10, align 8
  %685 = fmul double %683, %684
  store double %685, double* %17, align 8
  %686 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %687 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %686, i32 0, i32 0
  %688 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %687, i32 0, i32 1
  %689 = load i64*, i64** %688, align 8
  %690 = load i32, i32* %19, align 4
  %691 = zext i32 %690 to i64
  %692 = getelementptr inbounds i64, i64* %689, i64 %691
  %693 = load i64, i64* %692, align 8
  %694 = load i64, i64* @dm_420_10, align 8
  %695 = icmp eq i64 %693, %694
  br i1 %695, label %696, label %701

696:                                              ; preds = %666
  %697 = load double, double* %17, align 8
  %698 = call i32 @dml_ceil(double %697, i32 256)
  %699 = add nsw i32 %698, 256
  %700 = sitofp i32 %699 to double
  store double %700, double* %17, align 8
  br label %701

701:                                              ; preds = %696, %666
  br label %703

702:                                              ; preds = %663
  store double 0.000000e+00, double* %17, align 8
  br label %703

703:                                              ; preds = %702, %701
  %704 = load double, double* %16, align 8
  %705 = load double, double* %17, align 8
  %706 = fadd double %704, %705
  %707 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %708 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %707, i32 0, i32 0
  %709 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %708, i32 0, i32 11
  %710 = load double, double* %709, align 8
  %711 = fmul double %710, 1.024000e+03
  %712 = fdiv double %711, 2.000000e+00
  %713 = fcmp ole double %706, %712
  br i1 %713, label %714, label %731

714:                                              ; preds = %703
  %715 = load double, double* %9, align 8
  %716 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %717 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %716, i32 0, i32 0
  %718 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %717, i32 0, i32 12
  %719 = load double*, double** %718, align 8
  %720 = load i32, i32* %19, align 4
  %721 = zext i32 %720 to i64
  %722 = getelementptr inbounds double, double* %719, i64 %721
  store double %715, double* %722, align 8
  %723 = load double, double* %10, align 8
  %724 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %725 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %724, i32 0, i32 0
  %726 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %725, i32 0, i32 13
  %727 = load double*, double** %726, align 8
  %728 = load i32, i32* %19, align 4
  %729 = zext i32 %728 to i64
  %730 = getelementptr inbounds double, double* %727, i64 %729
  store double %723, double* %730, align 8
  br label %748

731:                                              ; preds = %703
  %732 = load double, double* %11, align 8
  %733 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %734 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %733, i32 0, i32 0
  %735 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %734, i32 0, i32 12
  %736 = load double*, double** %735, align 8
  %737 = load i32, i32* %19, align 4
  %738 = zext i32 %737 to i64
  %739 = getelementptr inbounds double, double* %736, i64 %738
  store double %732, double* %739, align 8
  %740 = load double, double* %12, align 8
  %741 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %742 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %741, i32 0, i32 0
  %743 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %742, i32 0, i32 13
  %744 = load double*, double** %743, align 8
  %745 = load i32, i32* %19, align 4
  %746 = zext i32 %745 to i64
  %747 = getelementptr inbounds double, double* %744, i64 %746
  store double %740, double* %747, align 8
  br label %748

748:                                              ; preds = %731, %714
  %749 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %750 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %749, i32 0, i32 0
  %751 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %750, i32 0, i32 13
  %752 = load double*, double** %751, align 8
  %753 = load i32, i32* %19, align 4
  %754 = zext i32 %753 to i64
  %755 = getelementptr inbounds double, double* %752, i64 %754
  %756 = load double, double* %755, align 8
  %757 = fcmp oeq double %756, 0.000000e+00
  br i1 %757, label %758, label %779

758:                                              ; preds = %748
  %759 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %760 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %759, i32 0, i32 0
  %761 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %760, i32 0, i32 11
  %762 = load double, double* %761, align 8
  %763 = fmul double %762, 1.024000e+03
  %764 = fptosi double %763 to i32
  %765 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %766 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %765, i32 0, i32 0
  %767 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %766, i32 0, i32 14
  %768 = load i32*, i32** %767, align 8
  %769 = load i32, i32* %19, align 4
  %770 = zext i32 %769 to i64
  %771 = getelementptr inbounds i32, i32* %768, i64 %770
  store i32 %764, i32* %771, align 4
  %772 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %773 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %772, i32 0, i32 0
  %774 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %773, i32 0, i32 15
  %775 = load double*, double** %774, align 8
  %776 = load i32, i32* %19, align 4
  %777 = zext i32 %776 to i64
  %778 = getelementptr inbounds double, double* %775, i64 %777
  store double 0.000000e+00, double* %778, align 8
  br label %855

779:                                              ; preds = %748
  %780 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %781 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %780, i32 0, i32 0
  %782 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %781, i32 0, i32 12
  %783 = load double*, double** %782, align 8
  %784 = load i32, i32* %19, align 4
  %785 = zext i32 %784 to i64
  %786 = getelementptr inbounds double, double* %783, i64 %785
  %787 = load double, double* %786, align 8
  %788 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %789 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %788, i32 0, i32 0
  %790 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %789, i32 0, i32 13
  %791 = load double*, double** %790, align 8
  %792 = load i32, i32* %19, align 4
  %793 = zext i32 %792 to i64
  %794 = getelementptr inbounds double, double* %791, i64 %793
  %795 = load double, double* %794, align 8
  %796 = fcmp ole double %787, %795
  br i1 %796, label %797, label %825

797:                                              ; preds = %779
  %798 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %799 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %798, i32 0, i32 0
  %800 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %799, i32 0, i32 11
  %801 = load double, double* %800, align 8
  %802 = fmul double %801, 1.024000e+03
  %803 = fdiv double %802, 2.000000e+00
  %804 = fptosi double %803 to i32
  %805 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %806 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %805, i32 0, i32 0
  %807 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %806, i32 0, i32 14
  %808 = load i32*, i32** %807, align 8
  %809 = load i32, i32* %19, align 4
  %810 = zext i32 %809 to i64
  %811 = getelementptr inbounds i32, i32* %808, i64 %810
  store i32 %804, i32* %811, align 4
  %812 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %813 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %812, i32 0, i32 0
  %814 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %813, i32 0, i32 11
  %815 = load double, double* %814, align 8
  %816 = fmul double %815, 1.024000e+03
  %817 = fdiv double %816, 2.000000e+00
  %818 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %819 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %818, i32 0, i32 0
  %820 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %819, i32 0, i32 15
  %821 = load double*, double** %820, align 8
  %822 = load i32, i32* %19, align 4
  %823 = zext i32 %822 to i64
  %824 = getelementptr inbounds double, double* %821, i64 %823
  store double %817, double* %824, align 8
  br label %854

825:                                              ; preds = %779
  %826 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %827 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %826, i32 0, i32 0
  %828 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %827, i32 0, i32 11
  %829 = load double, double* %828, align 8
  %830 = fmul double %829, 1.024000e+03
  %831 = fmul double %830, 2.000000e+00
  %832 = fdiv double %831, 3.000000e+00
  %833 = fptosi double %832 to i32
  %834 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %835 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %834, i32 0, i32 0
  %836 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %835, i32 0, i32 14
  %837 = load i32*, i32** %836, align 8
  %838 = load i32, i32* %19, align 4
  %839 = zext i32 %838 to i64
  %840 = getelementptr inbounds i32, i32* %837, i64 %839
  store i32 %833, i32* %840, align 4
  %841 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %842 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %841, i32 0, i32 0
  %843 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %842, i32 0, i32 11
  %844 = load double, double* %843, align 8
  %845 = fmul double %844, 1.024000e+03
  %846 = fdiv double %845, 3.000000e+00
  %847 = load %struct.display_mode_lib*, %struct.display_mode_lib** %2, align 8
  %848 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %847, i32 0, i32 0
  %849 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %848, i32 0, i32 15
  %850 = load double*, double** %849, align 8
  %851 = load i32, i32* %19, align 4
  %852 = zext i32 %851 to i64
  %853 = getelementptr inbounds double, double* %850, i64 %852
  store double %846, double* %853, align 8
  br label %854

854:                                              ; preds = %825, %797
  br label %855

855:                                              ; preds = %854, %758
  br label %856

856:                                              ; preds = %855
  %857 = load i32, i32* %19, align 4
  %858 = add i32 %857, 1
  store i32 %858, i32* %19, align 4
  br label %21

859:                                              ; preds = %21
  ret void
}

declare dso_local i32 @dml_ceil(double, i32) #1

declare dso_local double @dml_min(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
