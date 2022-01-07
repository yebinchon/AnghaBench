; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_set_crtc_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_set_crtc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ast_private* }
%struct.ast_private = type { i64 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ast_vbios_mode_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@AST2500 = common dso_local global i64 0, align 8
@AST2500PreCatchCRT = common dso_local global i32 0, align 4
@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.ast_vbios_mode_info*)* @ast_set_crtc_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_set_crtc_reg(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.ast_vbios_mode_info* %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.ast_vbios_mode_info*, align 8
  %7 = alloca %struct.ast_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.ast_vbios_mode_info* %2, %struct.ast_vbios_mode_info** %6, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.ast_private*, %struct.ast_private** %19, align 8
  store %struct.ast_private* %20, %struct.ast_private** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %22 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AST2500, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %6, align 8
  %28 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AST2500PreCatchCRT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 40, i32* %15, align 4
  br label %36

36:                                               ; preds = %35, %26, %3
  %37 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %38 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %39 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %37, i32 %38, i32 17, i32 127, i32 0)
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 3
  %44 = sub nsw i32 %43, 5
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = and i32 %45, 256
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %48, %36
  %52 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %53 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %52, i32 %53, i32 0, i32 0, i32 %54)
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %57 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 3
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = and i32 %61, 256
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %64, %51
  %68 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %69 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %68, i32 %69, i32 1, i32 0, i32 %70)
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 3
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = and i32 %77, 256
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, 16
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %80, %67
  %84 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %85 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %84, i32 %85, i32 2, i32 0, i32 %86)
  %88 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %89 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 3
  %92 = sub nsw i32 %91, 1
  %93 = and i32 %92, 127
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = and i32 %94, 32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %83
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, 128
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %97, %83
  %101 = load i32, i32* %14, align 4
  %102 = and i32 %101, 64
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %104, %100
  %108 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %109 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %110 = load i32, i32* %14, align 4
  %111 = and i32 %110, 31
  %112 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %108, i32 %109, i32 3, i32 224, i32 %111)
  %113 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %114 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %15, align 4
  %117 = sub nsw i32 %115, %116
  %118 = ashr i32 %117, 3
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = and i32 %120, 256
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %107
  %124 = load i32, i32* %11, align 4
  %125 = or i32 %124, 64
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %123, %107
  %127 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %128 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %127, i32 %128, i32 4, i32 0, i32 %129)
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %132 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %15, align 4
  %135 = sub nsw i32 %133, %134
  %136 = ashr i32 %135, 3
  %137 = sub nsw i32 %136, 1
  %138 = and i32 %137, 63
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = and i32 %139, 32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %126
  %143 = load i32, i32* %12, align 4
  %144 = or i32 %143, 4
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %142, %126
  %146 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %147 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %148 = load i32, i32* %14, align 4
  %149 = and i32 %148, 31
  %150 = load i32, i32* %8, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %146, i32 %147, i32 5, i32 96, i32 %151)
  %153 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %154 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %153, i32 %154, i32 172, i32 0, i32 %155)
  %157 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %158 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %157, i32 %158, i32 173, i32 0, i32 %159)
  %161 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %162 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %163, 2
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %14, align 4
  %166 = and i32 %165, 256
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %145
  %169 = load i32, i32* %9, align 4
  %170 = or i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %168, %145
  %172 = load i32, i32* %14, align 4
  %173 = and i32 %172, 512
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i32, i32* %9, align 4
  %177 = or i32 %176, 32
  store i32 %177, i32* %9, align 4
  br label %178

178:                                              ; preds = %175, %171
  %179 = load i32, i32* %14, align 4
  %180 = and i32 %179, 1024
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = load i32, i32* %13, align 4
  %184 = or i32 %183, 1
  store i32 %184, i32* %13, align 4
  br label %185

185:                                              ; preds = %182, %178
  %186 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %187 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %188 = load i32, i32* %14, align 4
  %189 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %186, i32 %187, i32 6, i32 0, i32 %188)
  %190 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %191 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %192, 1
  store i32 %193, i32* %14, align 4
  %194 = load i32, i32* %14, align 4
  %195 = and i32 %194, 256
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %185
  %198 = load i32, i32* %9, align 4
  %199 = or i32 %198, 4
  store i32 %199, i32* %9, align 4
  br label %200

200:                                              ; preds = %197, %185
  %201 = load i32, i32* %14, align 4
  %202 = and i32 %201, 512
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %200
  %205 = load i32, i32* %9, align 4
  %206 = or i32 %205, 128
  store i32 %206, i32* %9, align 4
  br label %207

207:                                              ; preds = %204, %200
  %208 = load i32, i32* %14, align 4
  %209 = and i32 %208, 1024
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %207
  %212 = load i32, i32* %13, align 4
  %213 = or i32 %212, 8
  store i32 %213, i32* %13, align 4
  br label %214

214:                                              ; preds = %211, %207
  %215 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %216 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %217 = load i32, i32* %14, align 4
  %218 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %215, i32 %216, i32 16, i32 0, i32 %217)
  %219 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %220 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %219, i32 0, i32 8
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %221, 1
  %223 = and i32 %222, 63
  store i32 %223, i32* %14, align 4
  %224 = load i32, i32* %14, align 4
  %225 = and i32 %224, 16
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %214
  %228 = load i32, i32* %13, align 4
  %229 = or i32 %228, 32
  store i32 %229, i32* %13, align 4
  br label %230

230:                                              ; preds = %227, %214
  %231 = load i32, i32* %14, align 4
  %232 = and i32 %231, 32
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = load i32, i32* %13, align 4
  %236 = or i32 %235, 64
  store i32 %236, i32* %13, align 4
  br label %237

237:                                              ; preds = %234, %230
  %238 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %239 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %240 = load i32, i32* %14, align 4
  %241 = and i32 %240, 15
  %242 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %238, i32 %239, i32 17, i32 112, i32 %241)
  %243 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %244 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %243, i32 0, i32 9
  %245 = load i32, i32* %244, align 4
  %246 = sub nsw i32 %245, 1
  store i32 %246, i32* %14, align 4
  %247 = load i32, i32* %14, align 4
  %248 = and i32 %247, 256
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %237
  %251 = load i32, i32* %9, align 4
  %252 = or i32 %251, 2
  store i32 %252, i32* %9, align 4
  br label %253

253:                                              ; preds = %250, %237
  %254 = load i32, i32* %14, align 4
  %255 = and i32 %254, 512
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %253
  %258 = load i32, i32* %9, align 4
  %259 = or i32 %258, 64
  store i32 %259, i32* %9, align 4
  br label %260

260:                                              ; preds = %257, %253
  %261 = load i32, i32* %14, align 4
  %262 = and i32 %261, 1024
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %260
  %265 = load i32, i32* %13, align 4
  %266 = or i32 %265, 2
  store i32 %266, i32* %13, align 4
  br label %267

267:                                              ; preds = %264, %260
  %268 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %269 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %270 = load i32, i32* %14, align 4
  %271 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %268, i32 %269, i32 18, i32 0, i32 %270)
  %272 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %273 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %272, i32 0, i32 10
  %274 = load i32, i32* %273, align 4
  %275 = sub nsw i32 %274, 1
  store i32 %275, i32* %14, align 4
  %276 = load i32, i32* %14, align 4
  %277 = and i32 %276, 256
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %267
  %280 = load i32, i32* %9, align 4
  %281 = or i32 %280, 8
  store i32 %281, i32* %9, align 4
  br label %282

282:                                              ; preds = %279, %267
  %283 = load i32, i32* %14, align 4
  %284 = and i32 %283, 512
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  %287 = load i32, i32* %10, align 4
  %288 = or i32 %287, 32
  store i32 %288, i32* %10, align 4
  br label %289

289:                                              ; preds = %286, %282
  %290 = load i32, i32* %14, align 4
  %291 = and i32 %290, 1024
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %289
  %294 = load i32, i32* %13, align 4
  %295 = or i32 %294, 4
  store i32 %295, i32* %13, align 4
  br label %296

296:                                              ; preds = %293, %289
  %297 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %298 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %299 = load i32, i32* %14, align 4
  %300 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %297, i32 %298, i32 21, i32 0, i32 %299)
  %301 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %302 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %301, i32 0, i32 11
  %303 = load i32, i32* %302, align 4
  %304 = sub nsw i32 %303, 1
  store i32 %304, i32* %14, align 4
  %305 = load i32, i32* %14, align 4
  %306 = and i32 %305, 256
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %296
  %309 = load i32, i32* %13, align 4
  %310 = or i32 %309, 16
  store i32 %310, i32* %13, align 4
  br label %311

311:                                              ; preds = %308, %296
  %312 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %313 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %314 = load i32, i32* %14, align 4
  %315 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %312, i32 %313, i32 22, i32 0, i32 %314)
  %316 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %317 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %318 = load i32, i32* %9, align 4
  %319 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %316, i32 %317, i32 7, i32 0, i32 %318)
  %320 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %321 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %322 = load i32, i32* %10, align 4
  %323 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %320, i32 %321, i32 9, i32 223, i32 %322)
  %324 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %325 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %326 = load i32, i32* %13, align 4
  %327 = or i32 %326, 128
  %328 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %324, i32 %325, i32 174, i32 0, i32 %327)
  %329 = load i32, i32* %15, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %311
  %332 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %333 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %334 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %332, i32 %333, i32 182, i32 63, i32 128)
  br label %339

335:                                              ; preds = %311
  %336 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %337 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %338 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %336, i32 %337, i32 182, i32 63, i32 0)
  br label %339

339:                                              ; preds = %335, %331
  %340 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %341 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %342 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %340, i32 %341, i32 17, i32 127, i32 128)
  ret void
}

declare dso_local i32 @ast_set_index_reg_mask(%struct.ast_private*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
