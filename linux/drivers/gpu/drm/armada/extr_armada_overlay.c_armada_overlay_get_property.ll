; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_overlay.c_armada_overlay_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_overlay.c_armada_overlay_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.armada_private* }
%struct.armada_private = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_plane_state = type { i32 }
%struct.drm_property = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CFG_CKMODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_property*, i32*)* @armada_overlay_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_overlay_get_property(%struct.drm_plane* %0, %struct.drm_plane_state* %1, %struct.drm_property* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_plane*, align 8
  %7 = alloca %struct.drm_plane_state*, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.armada_private*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %6, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %7, align 8
  store %struct.drm_property* %2, %struct.drm_property** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.armada_private*, %struct.armada_private** %14, align 8
  store %struct.armada_private* %15, %struct.armada_private** %10, align 8
  %16 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %17 = load %struct.armada_private*, %struct.armada_private** %10, align 8
  %18 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %17, i32 0, i32 8
  %19 = load %struct.drm_property*, %struct.drm_property** %18, align 8
  %20 = icmp eq %struct.drm_property* %16, %19
  br i1 %20, label %21, label %103

21:                                               ; preds = %4
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %23 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = shl i32 %27, 0
  %29 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %30 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = shl i32 %34, 8
  %36 = or i32 %28, %35
  %37 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %38 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = shl i32 %42, 16
  %44 = or i32 %36, %43
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %49 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 24
  %53 = and i32 %52, 255
  %54 = shl i32 %53, 0
  %55 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %56 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 24
  %60 = and i32 %59, 255
  %61 = shl i32 %60, 8
  %62 = or i32 %54, %61
  %63 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %64 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 24
  %68 = and i32 %67, 255
  %69 = shl i32 %68, 16
  %70 = or i32 %62, %69
  %71 = icmp ne i32 %47, %70
  br i1 %71, label %99, label %72

72:                                               ; preds = %21
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %76 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 8
  %80 = and i32 %79, 255
  %81 = shl i32 %80, 0
  %82 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %83 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %82)
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 8
  %87 = and i32 %86, 255
  %88 = shl i32 %87, 8
  %89 = or i32 %81, %88
  %90 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %91 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %90)
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 8
  %95 = and i32 %94, 255
  %96 = shl i32 %95, 16
  %97 = or i32 %89, %96
  %98 = icmp ne i32 %74, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %72, %21
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %293

102:                                              ; preds = %72
  br label %292

103:                                              ; preds = %4
  %104 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %105 = load %struct.armada_private*, %struct.armada_private** %10, align 8
  %106 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %105, i32 0, i32 7
  %107 = load %struct.drm_property*, %struct.drm_property** %106, align 8
  %108 = icmp eq %struct.drm_property* %104, %107
  br i1 %108, label %109, label %134

109:                                              ; preds = %103
  %110 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %111 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %110)
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 16
  %115 = and i32 %114, 255
  %116 = shl i32 %115, 0
  %117 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %118 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %117)
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = ashr i32 %120, 16
  %122 = and i32 %121, 255
  %123 = shl i32 %122, 8
  %124 = or i32 %116, %123
  %125 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %126 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %125)
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 16
  %130 = and i32 %129, 255
  %131 = shl i32 %130, 16
  %132 = or i32 %124, %131
  %133 = load i32*, i32** %9, align 8
  store i32 %132, i32* %133, align 4
  br label %291

134:                                              ; preds = %103
  %135 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %136 = load %struct.armada_private*, %struct.armada_private** %10, align 8
  %137 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %136, i32 0, i32 6
  %138 = load %struct.drm_property*, %struct.drm_property** %137, align 8
  %139 = icmp eq %struct.drm_property* %135, %138
  br i1 %139, label %140, label %165

140:                                              ; preds = %134
  %141 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %142 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %141)
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 4
  %145 = ashr i32 %144, 24
  %146 = and i32 %145, 255
  %147 = shl i32 %146, 0
  %148 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %149 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %148)
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = ashr i32 %151, 24
  %153 = and i32 %152, 255
  %154 = shl i32 %153, 8
  %155 = or i32 %147, %154
  %156 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %157 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %156)
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 24
  %161 = and i32 %160, 255
  %162 = shl i32 %161, 16
  %163 = or i32 %155, %162
  %164 = load i32*, i32** %9, align 8
  store i32 %163, i32* %164, align 4
  br label %290

165:                                              ; preds = %134
  %166 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %167 = load %struct.armada_private*, %struct.armada_private** %10, align 8
  %168 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %167, i32 0, i32 5
  %169 = load %struct.drm_property*, %struct.drm_property** %168, align 8
  %170 = icmp eq %struct.drm_property* %166, %169
  br i1 %170, label %171, label %196

171:                                              ; preds = %165
  %172 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %173 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %172)
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = ashr i32 %175, 8
  %177 = and i32 %176, 255
  %178 = shl i32 %177, 0
  %179 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %180 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %179)
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = ashr i32 %182, 8
  %184 = and i32 %183, 255
  %185 = shl i32 %184, 8
  %186 = or i32 %178, %185
  %187 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %188 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %187)
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = ashr i32 %190, 8
  %192 = and i32 %191, 255
  %193 = shl i32 %192, 16
  %194 = or i32 %186, %193
  %195 = load i32*, i32** %9, align 8
  store i32 %194, i32* %195, align 4
  br label %289

196:                                              ; preds = %165
  %197 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %198 = load %struct.armada_private*, %struct.armada_private** %10, align 8
  %199 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %198, i32 0, i32 4
  %200 = load %struct.drm_property*, %struct.drm_property** %199, align 8
  %201 = icmp eq %struct.drm_property* %197, %200
  br i1 %201, label %202, label %227

202:                                              ; preds = %196
  %203 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %204 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %203)
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 4
  %207 = ashr i32 %206, 0
  %208 = and i32 %207, 255
  %209 = shl i32 %208, 0
  %210 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %211 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %210)
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = ashr i32 %213, 0
  %215 = and i32 %214, 255
  %216 = shl i32 %215, 8
  %217 = or i32 %209, %216
  %218 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %219 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %218)
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = ashr i32 %221, 0
  %223 = and i32 %222, 255
  %224 = shl i32 %223, 16
  %225 = or i32 %217, %224
  %226 = load i32*, i32** %9, align 8
  store i32 %225, i32* %226, align 4
  br label %288

227:                                              ; preds = %196
  %228 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %229 = load %struct.armada_private*, %struct.armada_private** %10, align 8
  %230 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %229, i32 0, i32 3
  %231 = load %struct.drm_property*, %struct.drm_property** %230, align 8
  %232 = icmp eq %struct.drm_property* %228, %231
  br i1 %232, label %233, label %244

233:                                              ; preds = %227
  %234 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %235 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %234)
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @CFG_CKMODE_MASK, align 4
  %239 = and i32 %237, %238
  %240 = load i32, i32* @CFG_CKMODE_MASK, align 4
  %241 = call i32 @ffs(i32 %240)
  %242 = ashr i32 %239, %241
  %243 = load i32*, i32** %9, align 8
  store i32 %242, i32* %243, align 4
  br label %287

244:                                              ; preds = %227
  %245 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %246 = load %struct.armada_private*, %struct.armada_private** %10, align 8
  %247 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %246, i32 0, i32 2
  %248 = load %struct.drm_property*, %struct.drm_property** %247, align 8
  %249 = icmp eq %struct.drm_property* %245, %248
  br i1 %249, label %250, label %257

250:                                              ; preds = %244
  %251 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %252 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %251)
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, 256
  %256 = load i32*, i32** %9, align 8
  store i32 %255, i32* %256, align 4
  br label %286

257:                                              ; preds = %244
  %258 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %259 = load %struct.armada_private*, %struct.armada_private** %10, align 8
  %260 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %259, i32 0, i32 1
  %261 = load %struct.drm_property*, %struct.drm_property** %260, align 8
  %262 = icmp eq %struct.drm_property* %258, %261
  br i1 %262, label %263, label %269

263:                                              ; preds = %257
  %264 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %265 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %264)
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = load i32*, i32** %9, align 8
  store i32 %267, i32* %268, align 4
  br label %285

269:                                              ; preds = %257
  %270 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %271 = load %struct.armada_private*, %struct.armada_private** %10, align 8
  %272 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %271, i32 0, i32 0
  %273 = load %struct.drm_property*, %struct.drm_property** %272, align 8
  %274 = icmp eq %struct.drm_property* %270, %273
  br i1 %274, label %275, label %281

275:                                              ; preds = %269
  %276 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %277 = call %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state* %276)
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = load i32*, i32** %9, align 8
  store i32 %279, i32* %280, align 4
  br label %284

281:                                              ; preds = %269
  %282 = load i32, i32* @EINVAL, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %5, align 4
  br label %293

284:                                              ; preds = %275
  br label %285

285:                                              ; preds = %284, %263
  br label %286

286:                                              ; preds = %285, %250
  br label %287

287:                                              ; preds = %286, %233
  br label %288

288:                                              ; preds = %287, %202
  br label %289

289:                                              ; preds = %288, %171
  br label %290

290:                                              ; preds = %289, %140
  br label %291

291:                                              ; preds = %290, %109
  br label %292

292:                                              ; preds = %291, %102
  store i32 0, i32* %5, align 4
  br label %293

293:                                              ; preds = %292, %281, %99
  %294 = load i32, i32* %5, align 4
  ret i32 %294
}

declare dso_local %struct.TYPE_4__* @drm_to_overlay_state(%struct.drm_plane_state*) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
