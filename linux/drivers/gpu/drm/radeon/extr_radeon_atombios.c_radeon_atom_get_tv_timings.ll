; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_tv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_tv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_mode_info }
%struct.radeon_mode_info = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@DATA = common dso_local global i32 0, align 4
@AnalogTV_Info = common dso_local global i32 0, align 4
@MAX_SUPPORTED_TV_TIMING = common dso_local global i32 0, align 4
@ATOM_VSYNC_POLARITY = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@ATOM_HSYNC_POLARITY = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@ATOM_COMPOSITESYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_CSYNC = common dso_local global i32 0, align 4
@ATOM_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@ATOM_DOUBLE_CLOCK_MODE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@MAX_SUPPORTED_TV_TIMING_V1_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atom_get_tv_timings(%struct.radeon_device* %0, i32 %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.radeon_mode_info*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  store %struct.radeon_mode_info* %18, %struct.radeon_mode_info** %8, align 8
  %19 = load i32, i32* @DATA, align 4
  %20 = load i32, i32* @AnalogTV_Info, align 4
  %21 = call i32 @GetIndexIntoMasterTable(i32 %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %8, align 8
  %23 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @atom_parse_data_header(%struct.TYPE_14__* %24, i32 %25, i32* null, i32* %13, i32* %14, i32* %15)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %416

29:                                               ; preds = %3
  %30 = load i32, i32* %14, align 4
  switch i32 %30, label %415 [
    i32 1, label %31
    i32 2, label %247
  ]

31:                                               ; preds = %29
  %32 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %8, align 8
  %33 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %9, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MAX_SUPPORTED_TV_TIMING, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %416

45:                                               ; preds = %31
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %67 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le16_to_cpu(i32 %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le16_to_cpu(i32 %95)
  %97 = add nsw i32 %87, %96
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le16_to_cpu(i32 %107)
  %109 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %110 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le16_to_cpu(i32 %118)
  %120 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %121 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le16_to_cpu(i32 %129)
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %132 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @le16_to_cpu(i32 %140)
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @le16_to_cpu(i32 %149)
  %151 = add nsw i32 %141, %150
  %152 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %153 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %152, i32 0, i32 7
  store i32 %151, i32* %153, align 4
  %154 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %155 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %154, i32 0, i32 10
  store i32 0, i32* %155, align 4
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @le16_to_cpu(i32 %164)
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* @ATOM_VSYNC_POLARITY, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %45
  %171 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %172 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %173 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %170, %45
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* @ATOM_HSYNC_POLARITY, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %183 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %184 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %183, i32 0, i32 10
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %181, %176
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* @ATOM_COMPOSITESYNC, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load i32, i32* @DRM_MODE_FLAG_CSYNC, align 4
  %194 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %195 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %194, i32 0, i32 10
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %192, %187
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* @ATOM_INTERLACE, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %205 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %206 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %205, i32 0, i32 10
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %203, %198
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* @ATOM_DOUBLE_CLOCK_MODE, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %216 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %217 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %216, i32 0, i32 10
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %214, %209
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %222, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @le16_to_cpu(i32 %228)
  %230 = mul nsw i32 %229, 10
  %231 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %232 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %231, i32 0, i32 9
  store i32 %230, i32* %232, align 4
  %233 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %234 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %233, i32 0, i32 8
  store i32 %230, i32* %234, align 4
  %235 = load i32, i32* %6, align 4
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %246

237:                                              ; preds = %220
  %238 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %239 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = sub nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  %242 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %243 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 4
  %245 = sub nsw i32 %244, 1
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %237, %220
  br label %415

247:                                              ; preds = %29
  %248 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %8, align 8
  %249 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %248, i32 0, i32 0
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %15, align 4
  %254 = add nsw i32 %252, %253
  %255 = sext i32 %254 to i64
  %256 = inttoptr i64 %255 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %256, %struct.TYPE_12__** %10, align 8
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* @MAX_SUPPORTED_TV_TIMING_V1_2, align 4
  %259 = icmp sge i32 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %247
  store i32 0, i32* %4, align 4
  br label %416

261:                                              ; preds = %247
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %263, align 8
  %265 = load i32, i32* %6, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i64 %266
  store %struct.TYPE_11__* %267, %struct.TYPE_11__** %11, align 8
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 8
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @le16_to_cpu(i32 %270)
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 9
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @le16_to_cpu(i32 %274)
  %276 = add nsw i32 %271, %275
  %277 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %278 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %277, i32 0, i32 0
  store i32 %276, i32* %278, align 4
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 8
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @le16_to_cpu(i32 %281)
  %283 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %284 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 4
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 8
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @le16_to_cpu(i32 %287)
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 7
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @le16_to_cpu(i32 %291)
  %293 = add nsw i32 %288, %292
  %294 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %295 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 4
  %296 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %297 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 6
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @le16_to_cpu(i32 %301)
  %303 = add nsw i32 %298, %302
  %304 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %305 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %304, i32 0, i32 3
  store i32 %303, i32* %305, align 4
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @le16_to_cpu(i32 %308)
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @le16_to_cpu(i32 %312)
  %314 = add nsw i32 %309, %313
  %315 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %316 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %315, i32 0, i32 4
  store i32 %314, i32* %316, align 4
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @le16_to_cpu(i32 %319)
  %321 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %322 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %321, i32 0, i32 5
  store i32 %320, i32* %322, align 4
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @le16_to_cpu(i32 %325)
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @le16_to_cpu(i32 %329)
  %331 = add nsw i32 %326, %330
  %332 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %333 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %332, i32 0, i32 6
  store i32 %331, i32* %333, align 4
  %334 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %335 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %334, i32 0, i32 6
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @le16_to_cpu(i32 %339)
  %341 = add nsw i32 %336, %340
  %342 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %343 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %342, i32 0, i32 7
  store i32 %341, i32* %343, align 4
  %344 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %345 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %344, i32 0, i32 10
  store i32 0, i32* %345, align 4
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @le16_to_cpu(i32 %349)
  store i32 %350, i32* %16, align 4
  %351 = load i32, i32* %16, align 4
  %352 = load i32, i32* @ATOM_VSYNC_POLARITY, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %261
  %356 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %357 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %358 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %357, i32 0, i32 10
  %359 = load i32, i32* %358, align 4
  %360 = or i32 %359, %356
  store i32 %360, i32* %358, align 4
  br label %361

361:                                              ; preds = %355, %261
  %362 = load i32, i32* %16, align 4
  %363 = load i32, i32* @ATOM_HSYNC_POLARITY, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %372

366:                                              ; preds = %361
  %367 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %368 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %369 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %368, i32 0, i32 10
  %370 = load i32, i32* %369, align 4
  %371 = or i32 %370, %367
  store i32 %371, i32* %369, align 4
  br label %372

372:                                              ; preds = %366, %361
  %373 = load i32, i32* %16, align 4
  %374 = load i32, i32* @ATOM_COMPOSITESYNC, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %372
  %378 = load i32, i32* @DRM_MODE_FLAG_CSYNC, align 4
  %379 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %380 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %379, i32 0, i32 10
  %381 = load i32, i32* %380, align 4
  %382 = or i32 %381, %378
  store i32 %382, i32* %380, align 4
  br label %383

383:                                              ; preds = %377, %372
  %384 = load i32, i32* %16, align 4
  %385 = load i32, i32* @ATOM_INTERLACE, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %383
  %389 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %390 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %391 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %390, i32 0, i32 10
  %392 = load i32, i32* %391, align 4
  %393 = or i32 %392, %389
  store i32 %393, i32* %391, align 4
  br label %394

394:                                              ; preds = %388, %383
  %395 = load i32, i32* %16, align 4
  %396 = load i32, i32* @ATOM_DOUBLE_CLOCK_MODE, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %394
  %400 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %401 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %402 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %401, i32 0, i32 10
  %403 = load i32, i32* %402, align 4
  %404 = or i32 %403, %400
  store i32 %404, i32* %402, align 4
  br label %405

405:                                              ; preds = %399, %394
  %406 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = call i32 @le16_to_cpu(i32 %408)
  %410 = mul nsw i32 %409, 10
  %411 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %412 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %411, i32 0, i32 9
  store i32 %410, i32* %412, align 4
  %413 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %414 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %413, i32 0, i32 8
  store i32 %410, i32* %414, align 4
  br label %415

415:                                              ; preds = %29, %405, %246
  store i32 1, i32* %4, align 4
  br label %416

416:                                              ; preds = %415, %260, %44, %28
  %417 = load i32, i32* %4, align 4
  ret i32 %417
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_data_header(%struct.TYPE_14__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
