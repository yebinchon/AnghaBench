; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head.c_nv50_head_atomic_check_view.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head.c_nv50_head_atomic_check_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head_atom = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.drm_display_mode, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i64 }
%struct.nouveau_conn_atom = type { %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.edid = type { i32 }

@DRM_MODE_SCALE_NONE = common dso_local global i32 0, align 4
@DRM_MODE_SCALE_FULLSCREEN = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_3D_MASK = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_3D_FRAME_PACKING = common dso_local global i32 0, align 4
@UNDERSCAN_ON = common dso_local global i64 0, align 8
@UNDERSCAN_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_head_atom*, %struct.nv50_head_atom*, %struct.nouveau_conn_atom*)* @nv50_head_atomic_check_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_head_atomic_check_view(%struct.nv50_head_atom* %0, %struct.nv50_head_atom* %1, %struct.nouveau_conn_atom* %2) #0 {
  %4 = alloca %struct.nv50_head_atom*, align 8
  %5 = alloca %struct.nv50_head_atom*, align 8
  %6 = alloca %struct.nouveau_conn_atom*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.edid*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nv50_head_atom* %0, %struct.nv50_head_atom** %4, align 8
  store %struct.nv50_head_atom* %1, %struct.nv50_head_atom** %5, align 8
  store %struct.nouveau_conn_atom* %2, %struct.nouveau_conn_atom** %6, align 8
  %20 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %6, align 8
  %21 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.drm_connector*, %struct.drm_connector** %22, align 8
  store %struct.drm_connector* %23, %struct.drm_connector** %7, align 8
  %24 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %25 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store %struct.drm_display_mode* %26, %struct.drm_display_mode** %8, align 8
  %27 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %28 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store %struct.drm_display_mode* %29, %struct.drm_display_mode** %9, align 8
  %30 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %6, align 8
  %31 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %35 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = icmp ne %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %3
  %39 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %40 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.edid*
  store %struct.edid* %44, %struct.edid** %11, align 8
  br label %46

45:                                               ; preds = %3
  store %struct.edid* null, %struct.edid** %11, align 8
  br label %46

46:                                               ; preds = %45, %38
  %47 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %6, align 8
  %48 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @DRM_MODE_SCALE_NONE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  store %struct.drm_display_mode* %57, %struct.drm_display_mode** %8, align 8
  br label %58

58:                                               ; preds = %56, %52
  br label %61

59:                                               ; preds = %46
  %60 = load i32, i32* @DRM_MODE_SCALE_FULLSCREEN, align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %59, %58
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %12, align 4
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @DRM_MODE_FLAG_3D_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @DRM_MODE_FLAG_3D_FRAME_PACKING, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %61
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %72, %61
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %85 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %89 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %92 = call i32 @drm_mode_get_hv_timing(%struct.drm_display_mode* %91, i32* %13, i32* %14)
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %95 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %99 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 4
  %101 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %6, align 8
  %102 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @UNDERSCAN_ON, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %80
  %109 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %6, align 8
  %110 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @UNDERSCAN_AUTO, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %214

116:                                              ; preds = %108
  %117 = load %struct.edid*, %struct.edid** %11, align 8
  %118 = call i64 @drm_detect_hdmi_monitor(%struct.edid* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %214

120:                                              ; preds = %116, %80
  %121 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %6, align 8
  %122 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %15, align 4
  %126 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %6, align 8
  %127 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %16, align 4
  %131 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %132 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 19
  %136 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %137 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = sdiv i32 %135, %139
  store i32 %140, i32* %17, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %176

143:                                              ; preds = %120
  %144 = load i32, i32* %15, align 4
  %145 = mul nsw i32 %144, 2
  %146 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %147 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, %145
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %143
  %154 = load i32, i32* %16, align 4
  %155 = mul nsw i32 %154, 2
  %156 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %157 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %159, %155
  store i32 %160, i32* %158, align 4
  br label %175

161:                                              ; preds = %143
  %162 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %163 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %17, align 4
  %167 = mul nsw i32 %165, %166
  %168 = load i32, i32* %17, align 4
  %169 = sdiv i32 %168, 2
  %170 = add nsw i32 %167, %169
  %171 = ashr i32 %170, 19
  %172 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %173 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 3
  store i32 %171, i32* %174, align 4
  br label %175

175:                                              ; preds = %161, %153
  br label %213

176:                                              ; preds = %120
  %177 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %178 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = ashr i32 %180, 4
  %182 = add nsw i32 %181, 32
  %183 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %184 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %186, %182
  store i32 %187, i32* %185, align 4
  %188 = load i32, i32* %16, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %176
  %191 = load i32, i32* %16, align 4
  %192 = mul nsw i32 %191, 2
  %193 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %194 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 %196, %192
  store i32 %197, i32* %195, align 4
  br label %212

198:                                              ; preds = %176
  %199 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %200 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %17, align 4
  %204 = mul nsw i32 %202, %203
  %205 = load i32, i32* %17, align 4
  %206 = sdiv i32 %205, 2
  %207 = add nsw i32 %204, %206
  %208 = ashr i32 %207, 19
  %209 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %210 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 3
  store i32 %208, i32* %211, align 4
  br label %212

212:                                              ; preds = %198, %190
  br label %213

213:                                              ; preds = %212, %175
  br label %214

214:                                              ; preds = %213, %116, %108
  %215 = load i32, i32* %10, align 4
  switch i32 %215, label %312 [
    i32 128, label %216
    i32 129, label %243
  ]

216:                                              ; preds = %214
  %217 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %218 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %222 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = call i8* @min(i32 %220, i32 %224)
  %226 = ptrtoint i8* %225 to i32
  %227 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %228 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 2
  store i32 %226, i32* %229, align 4
  %230 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %231 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %235 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = call i8* @min(i32 %233, i32 %237)
  %239 = ptrtoint i8* %238 to i32
  %240 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %241 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 3
  store i32 %239, i32* %242, align 4
  br label %313

243:                                              ; preds = %214
  %244 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %245 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %249 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = mul nsw i32 %247, %251
  %253 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %254 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %258 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = mul nsw i32 %256, %260
  %262 = icmp sgt i32 %252, %261
  br i1 %262, label %263, label %287

263:                                              ; preds = %243
  %264 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %265 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = shl i32 %267, 19
  %269 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %270 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = sdiv i32 %268, %272
  store i32 %273, i32* %18, align 4
  %274 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %275 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %18, align 4
  %279 = mul nsw i32 %277, %278
  %280 = load i32, i32* %18, align 4
  %281 = sdiv i32 %280, 2
  %282 = add nsw i32 %279, %281
  %283 = ashr i32 %282, 19
  %284 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %285 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 2
  store i32 %283, i32* %286, align 4
  br label %311

287:                                              ; preds = %243
  %288 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %289 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = shl i32 %291, 19
  %293 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %294 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = sdiv i32 %292, %296
  store i32 %297, i32* %19, align 4
  %298 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %299 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %19, align 4
  %303 = mul nsw i32 %301, %302
  %304 = load i32, i32* %19, align 4
  %305 = sdiv i32 %304, 2
  %306 = add nsw i32 %303, %305
  %307 = ashr i32 %306, 19
  %308 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %309 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 3
  store i32 %307, i32* %310, align 4
  br label %311

311:                                              ; preds = %287, %263
  br label %313

312:                                              ; preds = %214
  br label %313

313:                                              ; preds = %312, %311, %216
  %314 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %315 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 0
  store i32 1, i32* %316, align 8
  ret void
}

declare dso_local i32 @drm_mode_get_hv_timing(%struct.drm_display_mode*, i32*, i32*) #1

declare dso_local i64 @drm_detect_hdmi_monitor(%struct.edid*) #1

declare dso_local i8* @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
