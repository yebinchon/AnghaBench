; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_helpers_parse_edid_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_helpers_parse_edid_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cea_sad = type { i32, i32, i64, i32 }
%struct.dc_context = type { i32 }
%struct.dc_edid = type { i64 }
%struct.dc_edid_caps = type { i32, i32, i8*, i32, %struct.cea_sad, %struct.TYPE_12__*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i32 }
%struct.edid = type { %struct.TYPE_11__*, i32, i32, i32, i64*, i64* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@EDID_OK = common dso_local global i32 0, align 4
@EDID_BAD_INPUT = common dso_local global i32 0, align 4
@EDID_BAD_CHECKSUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"SADs count is: %d, don't need to read it\0A\00", align 1
@DC_MAX_AUDIO_DESC_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Couldn't read Speaker Allocation Data Block: %d\0A\00", align 1
@DEFAULT_SPEAKER_LOCATION = common dso_local global %struct.cea_sad zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_helpers_parse_edid_caps(%struct.dc_context* %0, %struct.dc_edid* %1, %struct.dc_edid_caps* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca %struct.dc_edid*, align 8
  %7 = alloca %struct.dc_edid_caps*, align 8
  %8 = alloca %struct.edid*, align 8
  %9 = alloca %struct.cea_sad*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cea_sad*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.cea_sad*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %5, align 8
  store %struct.dc_edid* %1, %struct.dc_edid** %6, align 8
  store %struct.dc_edid_caps* %2, %struct.dc_edid_caps** %7, align 8
  %17 = load %struct.dc_edid*, %struct.dc_edid** %6, align 8
  %18 = getelementptr inbounds %struct.dc_edid, %struct.dc_edid* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.edid*
  store %struct.edid* %20, %struct.edid** %8, align 8
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.cea_sad* null, %struct.cea_sad** %14, align 8
  %21 = load i32, i32* @EDID_OK, align 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %7, align 8
  %23 = icmp ne %struct.dc_edid_caps* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.dc_edid*, %struct.dc_edid** %6, align 8
  %26 = icmp ne %struct.dc_edid* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24, %3
  %28 = load i32, i32* @EDID_BAD_INPUT, align 4
  store i32 %28, i32* %4, align 4
  br label %290

29:                                               ; preds = %24
  %30 = load %struct.edid*, %struct.edid** %8, align 8
  %31 = call i32 @drm_edid_is_valid(%struct.edid* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @EDID_BAD_CHECKSUM, align 4
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load %struct.edid*, %struct.edid** %8, align 8
  %37 = getelementptr inbounds %struct.edid, %struct.edid* %36, i32 0, i32 5
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.edid*, %struct.edid** %8, align 8
  %43 = getelementptr inbounds %struct.edid, %struct.edid* %42, i32 0, i32 5
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = shl i32 %47, 8
  %49 = or i32 %41, %48
  %50 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %7, align 8
  %51 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.edid*, %struct.edid** %8, align 8
  %53 = getelementptr inbounds %struct.edid, %struct.edid* %52, i32 0, i32 4
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.edid*, %struct.edid** %8, align 8
  %59 = getelementptr inbounds %struct.edid, %struct.edid* %58, i32 0, i32 4
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = shl i32 %63, 8
  %65 = or i32 %57, %64
  %66 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %7, align 8
  %67 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.edid*, %struct.edid** %8, align 8
  %69 = getelementptr inbounds %struct.edid, %struct.edid* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %7, align 8
  %72 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 4
  %73 = load %struct.edid*, %struct.edid** %8, align 8
  %74 = getelementptr inbounds %struct.edid, %struct.edid* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %7, align 8
  %77 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 8
  %78 = load %struct.edid*, %struct.edid** %8, align 8
  %79 = getelementptr inbounds %struct.edid, %struct.edid* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %7, align 8
  %82 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %170, %35
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %86, label %173

86:                                               ; preds = %83
  %87 = load %struct.edid*, %struct.edid** %8, align 8
  %88 = getelementptr inbounds %struct.edid, %struct.edid* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 252
  br i1 %97, label %98, label %169

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %143, %98
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %100, 13
  br i1 %101, label %102, label %121

102:                                              ; preds = %99
  %103 = load %struct.edid*, %struct.edid** %8, align 8
  %104 = getelementptr inbounds %struct.edid, %struct.edid* %103, i32 0, i32 0
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br label %121

121:                                              ; preds = %102, %99
  %122 = phi i1 [ false, %99 ], [ %120, %102 ]
  br i1 %122, label %123, label %168

123:                                              ; preds = %121
  %124 = load %struct.edid*, %struct.edid** %8, align 8
  %125 = getelementptr inbounds %struct.edid, %struct.edid* %124, i32 0, i32 0
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 10
  br i1 %141, label %142, label %143

142:                                              ; preds = %123
  br label %168

143:                                              ; preds = %123
  %144 = load %struct.edid*, %struct.edid** %8, align 8
  %145 = getelementptr inbounds %struct.edid, %struct.edid* %144, i32 0, i32 0
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %7, align 8
  %161 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %160, i32 0, i32 2
  %162 = load i8*, i8** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  store i8 %159, i8* %165, align 1
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %13, align 4
  br label %99

168:                                              ; preds = %142, %121
  br label %169

169:                                              ; preds = %168, %86
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %12, align 4
  br label %83

173:                                              ; preds = %83
  %174 = load %struct.dc_edid*, %struct.dc_edid** %6, align 8
  %175 = getelementptr inbounds %struct.dc_edid, %struct.dc_edid* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = inttoptr i64 %176 to %struct.edid*
  %178 = call i32 @drm_detect_hdmi_monitor(%struct.edid* %177)
  %179 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %7, align 8
  %180 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %179, i32 0, i32 6
  store i32 %178, i32* %180, align 8
  %181 = load %struct.dc_edid*, %struct.dc_edid** %6, align 8
  %182 = getelementptr inbounds %struct.dc_edid, %struct.dc_edid* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to %struct.edid*
  %185 = call i32 @drm_edid_to_sad(%struct.edid* %184, %struct.cea_sad** %9)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp sle i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %173
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @DRM_INFO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %15, align 4
  store i32 %191, i32* %4, align 4
  br label %290

192:                                              ; preds = %173
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @DC_MAX_AUDIO_DESC_COUNT, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i32, i32* %10, align 4
  br label %200

198:                                              ; preds = %192
  %199 = load i32, i32* @DC_MAX_AUDIO_DESC_COUNT, align 4
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i32 [ %197, %196 ], [ %199, %198 ]
  %202 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %7, align 8
  %203 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %202, i32 0, i32 3
  store i32 %201, i32* %203, align 8
  store i32 0, i32* %12, align 4
  br label %204

204:                                              ; preds = %256, %200
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %7, align 8
  %207 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = icmp slt i32 %205, %208
  br i1 %209, label %210, label %259

210:                                              ; preds = %204
  %211 = load %struct.cea_sad*, %struct.cea_sad** %9, align 8
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %211, i64 %213
  store %struct.cea_sad* %214, %struct.cea_sad** %16, align 8
  %215 = load %struct.cea_sad*, %struct.cea_sad** %16, align 8
  %216 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %7, align 8
  %219 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %218, i32 0, i32 5
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 3
  store i32 %217, i32* %224, align 8
  %225 = load %struct.cea_sad*, %struct.cea_sad** %16, align 8
  %226 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, 1
  %229 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %7, align 8
  %230 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %229, i32 0, i32 5
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %230, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 2
  store i64 %228, i64* %235, align 8
  %236 = load %struct.cea_sad*, %struct.cea_sad** %16, align 8
  %237 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %7, align 8
  %240 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %239, i32 0, i32 5
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = load i32, i32* %12, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 1
  store i32 %238, i32* %245, align 4
  %246 = load %struct.cea_sad*, %struct.cea_sad** %16, align 8
  %247 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %7, align 8
  %250 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %249, i32 0, i32 5
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %250, align 8
  %252 = load i32, i32* %12, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  store i32 %248, i32* %255, align 8
  br label %256

256:                                              ; preds = %210
  %257 = load i32, i32* %12, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %12, align 4
  br label %204

259:                                              ; preds = %204
  %260 = load %struct.dc_edid*, %struct.dc_edid** %6, align 8
  %261 = getelementptr inbounds %struct.dc_edid, %struct.dc_edid* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = inttoptr i64 %262 to %struct.edid*
  %264 = call i32 @drm_edid_to_speaker_allocation(%struct.edid* %263, %struct.cea_sad** %14)
  store i32 %264, i32* %11, align 4
  %265 = load i32, i32* %11, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %259
  %268 = load i32, i32* %11, align 4
  %269 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %268)
  store i32 0, i32* %11, align 4
  br label %270

270:                                              ; preds = %267, %259
  %271 = load i32, i32* %11, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %270
  %274 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %7, align 8
  %275 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %274, i32 0, i32 4
  %276 = load %struct.cea_sad*, %struct.cea_sad** %14, align 8
  %277 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %276, i64 0
  %278 = bitcast %struct.cea_sad* %275 to i8*
  %279 = bitcast %struct.cea_sad* %277 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %278, i8* align 8 %279, i64 24, i1 false)
  br label %284

280:                                              ; preds = %270
  %281 = load %struct.dc_edid_caps*, %struct.dc_edid_caps** %7, align 8
  %282 = getelementptr inbounds %struct.dc_edid_caps, %struct.dc_edid_caps* %281, i32 0, i32 4
  %283 = bitcast %struct.cea_sad* %282 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %283, i8* align 8 bitcast (%struct.cea_sad* @DEFAULT_SPEAKER_LOCATION to i8*), i64 24, i1 false)
  br label %284

284:                                              ; preds = %280, %273
  %285 = load %struct.cea_sad*, %struct.cea_sad** %9, align 8
  %286 = call i32 @kfree(%struct.cea_sad* %285)
  %287 = load %struct.cea_sad*, %struct.cea_sad** %14, align 8
  %288 = call i32 @kfree(%struct.cea_sad* %287)
  %289 = load i32, i32* %15, align 4
  store i32 %289, i32* %4, align 4
  br label %290

290:                                              ; preds = %284, %188, %27
  %291 = load i32, i32* %4, align 4
  ret i32 %291
}

declare dso_local i32 @drm_edid_is_valid(%struct.edid*) #1

declare dso_local i32 @drm_detect_hdmi_monitor(%struct.edid*) #1

declare dso_local i32 @drm_edid_to_sad(%struct.edid*, %struct.cea_sad**) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @drm_edid_to_speaker_allocation(%struct.edid*, %struct.cea_sad**) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfree(%struct.cea_sad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
