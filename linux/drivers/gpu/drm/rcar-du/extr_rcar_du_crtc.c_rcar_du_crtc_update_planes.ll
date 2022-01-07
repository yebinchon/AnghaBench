; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_update_planes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_update_planes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_crtc = type { i32, %struct.TYPE_10__*, i32, %struct.rcar_du_device* }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i64, %struct.rcar_du_plane* }
%struct.rcar_du_plane = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32, i32* }
%struct.rcar_du_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@RCAR_DU_NUM_HW_PLANES = common dso_local global i32 0, align 4
@RCAR_DU_FEATURE_VSP1_SOURCE = common dso_local global i32 0, align 4
@DPTSR = common dso_local global i32 0, align 4
@DS2PR = common dso_local global i32 0, align 4
@DS1PR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_crtc*)* @rcar_du_crtc_update_planes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_crtc_update_planes(%struct.rcar_du_crtc* %0) #0 {
  %2 = alloca %struct.rcar_du_crtc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rcar_du_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rcar_du_plane*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rcar_du_plane*, align 8
  %15 = alloca %struct.drm_plane_state*, align 8
  %16 = alloca i32, align 4
  store %struct.rcar_du_crtc* %0, %struct.rcar_du_crtc** %2, align 8
  %17 = load i32, i32* @RCAR_DU_NUM_HW_PLANES, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %3, align 8
  %20 = alloca %struct.rcar_du_plane*, i64 %18, align 16
  store i64 %18, i64* %4, align 8
  %21 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %22 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %21, i32 0, i32 3
  %23 = load %struct.rcar_du_device*, %struct.rcar_du_device** %22, align 8
  store %struct.rcar_du_device* %23, %struct.rcar_du_device** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %100, %1
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %27 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %25, %30
  br i1 %31, label %32, label %103

32:                                               ; preds = %24
  %33 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %34 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 5
  %37 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.rcar_du_plane, %struct.rcar_du_plane* %37, i64 %39
  store %struct.rcar_du_plane* %40, %struct.rcar_du_plane** %12, align 8
  %41 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %12, align 8
  %42 = getelementptr inbounds %struct.rcar_du_plane, %struct.rcar_du_plane* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.drm_plane_state*, %struct.drm_plane_state** %43, align 8
  %45 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %48 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %47, i32 0, i32 2
  %49 = icmp ne i32* %46, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %32
  %51 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %12, align 8
  %52 = getelementptr inbounds %struct.rcar_du_plane, %struct.rcar_du_plane* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.drm_plane_state*, %struct.drm_plane_state** %53, align 8
  %55 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50, %32
  br label %100

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %6, align 4
  store i32 %60, i32* %13, align 4
  br label %62

62:                                               ; preds = %85, %59
  %63 = load i32, i32* %13, align 4
  %64 = icmp ugt i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = sub i32 %66, 1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.rcar_du_plane*, %struct.rcar_du_plane** %20, i64 %68
  %70 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %69, align 8
  %71 = call i64 @plane_zpos(%struct.rcar_du_plane* %70)
  %72 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %12, align 8
  %73 = call i64 @plane_zpos(%struct.rcar_du_plane* %72)
  %74 = icmp sle i64 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %88

76:                                               ; preds = %65
  %77 = load i32, i32* %13, align 4
  %78 = sub i32 %77, 1
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.rcar_du_plane*, %struct.rcar_du_plane** %20, i64 %79
  %81 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.rcar_du_plane*, %struct.rcar_du_plane** %20, i64 %83
  store %struct.rcar_du_plane* %81, %struct.rcar_du_plane** %84, align 8
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %13, align 4
  %87 = add i32 %86, -1
  store i32 %87, i32* %13, align 4
  br label %62

88:                                               ; preds = %75, %62
  %89 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %12, align 8
  %90 = load i32, i32* %13, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.rcar_du_plane*, %struct.rcar_du_plane** %20, i64 %91
  store %struct.rcar_du_plane* %89, %struct.rcar_du_plane** %92, align 8
  %93 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %12, align 8
  %94 = call %struct.TYPE_11__* @plane_format(%struct.rcar_du_plane* %93)
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, 4
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %88, %58
  %101 = load i32, i32* %10, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %24

103:                                              ; preds = %24
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %155, %103
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %158

108:                                              ; preds = %104
  %109 = load i32, i32* %10, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.rcar_du_plane*, %struct.rcar_du_plane** %20, i64 %110
  %112 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %111, align 8
  store %struct.rcar_du_plane* %112, %struct.rcar_du_plane** %14, align 8
  %113 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %14, align 8
  %114 = getelementptr inbounds %struct.rcar_du_plane, %struct.rcar_du_plane* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load %struct.drm_plane_state*, %struct.drm_plane_state** %115, align 8
  store %struct.drm_plane_state* %116, %struct.drm_plane_state** %15, align 8
  %117 = load %struct.drm_plane_state*, %struct.drm_plane_state** %15, align 8
  %118 = call %struct.TYPE_9__* @to_rcar_plane_state(%struct.drm_plane_state* %117)
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %9, align 4
  %122 = sub i32 %121, 4
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %16, align 4
  %124 = add i32 %123, 1
  %125 = load i32, i32* %9, align 4
  %126 = shl i32 %124, %125
  %127 = load i32, i32* %11, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %16, align 4
  %130 = shl i32 1, %129
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %8, align 4
  %133 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %14, align 8
  %134 = call %struct.TYPE_11__* @plane_format(%struct.rcar_du_plane* %133)
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %154

138:                                              ; preds = %108
  %139 = load i32, i32* %16, align 4
  %140 = add i32 %139, 1
  %141 = urem i32 %140, 8
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %9, align 4
  %143 = sub i32 %142, 4
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %16, align 4
  %145 = add i32 %144, 1
  %146 = load i32, i32* %9, align 4
  %147 = shl i32 %145, %146
  %148 = load i32, i32* %11, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %16, align 4
  %151 = shl i32 1, %150
  %152 = load i32, i32* %8, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %138, %108
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %10, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %104

158:                                              ; preds = %104
  %159 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %160 = load i32, i32* @RCAR_DU_FEATURE_VSP1_SOURCE, align 4
  %161 = call i64 @rcar_du_has(%struct.rcar_du_device* %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %198

163:                                              ; preds = %158
  %164 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %165 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %164, i32 0, i32 0
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp slt i32 %168, 3
  br i1 %169, label %170, label %181

170:                                              ; preds = %163
  %171 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %172 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = srem i32 %173, 2
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  %176 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %177 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = srem i32 %178, 2
  %180 = shl i32 1, %179
  store i32 %180, i32* %8, align 4
  br label %197

181:                                              ; preds = %163
  %182 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %183 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = srem i32 %184, 2
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 3, i32 1
  store i32 %188, i32* %11, align 4
  %189 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %190 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = srem i32 %191, 2
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 2, i32 0
  %196 = shl i32 1, %195
  store i32 %196, i32* %8, align 4
  br label %197

197:                                              ; preds = %181, %170
  br label %198

198:                                              ; preds = %197, %158
  %199 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %200 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %199, i32 0, i32 1
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 2
  %203 = call i32 @mutex_lock(i32* %202)
  %204 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %205 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = srem i32 %206, 2
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %198
  %210 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %211 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %210, i32 0, i32 1
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %8, align 4
  %216 = or i32 %214, %215
  br label %226

217:                                              ; preds = %198
  %218 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %219 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %218, i32 0, i32 1
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %8, align 4
  %224 = xor i32 %223, -1
  %225 = and i32 %222, %224
  br label %226

226:                                              ; preds = %217, %209
  %227 = phi i32 [ %216, %209 ], [ %225, %217 ]
  store i32 %227, i32* %7, align 4
  %228 = load i32, i32* %7, align 4
  %229 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %230 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %229, i32 0, i32 1
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %228, %233
  br i1 %234, label %235, label %262

235:                                              ; preds = %226
  %236 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %237 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %236, i32 0, i32 1
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = load i32, i32* @DPTSR, align 4
  %240 = load i32, i32* %7, align 4
  %241 = shl i32 %240, 16
  %242 = load i32, i32* %7, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @rcar_du_group_write(%struct.TYPE_10__* %238, i32 %239, i32 %243)
  %245 = load i32, i32* %7, align 4
  %246 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %247 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %246, i32 0, i32 1
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  store i32 %245, i32* %249, align 4
  %250 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %251 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %250, i32 0, i32 1
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %235
  %257 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %258 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %257, i32 0, i32 1
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %258, align 8
  %260 = call i32 @rcar_du_group_restart(%struct.TYPE_10__* %259)
  br label %261

261:                                              ; preds = %256, %235
  br label %262

262:                                              ; preds = %261, %226
  %263 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %264 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %263, i32 0, i32 1
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %262
  %270 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %271 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %270, i32 0, i32 1
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %271, align 8
  %273 = call i32 @rcar_du_group_restart(%struct.TYPE_10__* %272)
  br label %274

274:                                              ; preds = %269, %262
  %275 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %276 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %275, i32 0, i32 1
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 2
  %279 = call i32 @mutex_unlock(i32* %278)
  %280 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %281 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %280, i32 0, i32 1
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %281, align 8
  %283 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %284 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = srem i32 %285, 2
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %274
  %289 = load i32, i32* @DS2PR, align 4
  br label %292

290:                                              ; preds = %274
  %291 = load i32, i32* @DS1PR, align 4
  br label %292

292:                                              ; preds = %290, %288
  %293 = phi i32 [ %289, %288 ], [ %291, %290 ]
  %294 = load i32, i32* %11, align 4
  %295 = call i32 @rcar_du_group_write(%struct.TYPE_10__* %282, i32 %293, i32 %294)
  %296 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %296)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @plane_zpos(%struct.rcar_du_plane*) #2

declare dso_local %struct.TYPE_11__* @plane_format(%struct.rcar_du_plane*) #2

declare dso_local %struct.TYPE_9__* @to_rcar_plane_state(%struct.drm_plane_state*) #2

declare dso_local i64 @rcar_du_has(%struct.rcar_du_device*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @rcar_du_group_write(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @rcar_du_group_restart(%struct.TYPE_10__*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
