; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_initialize_drm_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_initialize_drm_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.amdgpu_mode_info, %struct.amdgpu_display_manager }
%struct.amdgpu_mode_info = type { i32* }
%struct.amdgpu_display_manager = type { i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.dc_plane_cap* }
%struct.dc_plane_cap = type { i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_dm_connector = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.amdgpu_encoder = type { %struct.TYPE_8__ }
%struct.dc_link = type { i32 }

@dc_connection_none = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"DM: Failed to initialize mode config\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_MAX_PLANES = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"KMS: Failed to initialize primary plane\0A\00", align 1
@DC_PLANE_TYPE_DCN_UNIVERSAL = common dso_local global i64 0, align 8
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"KMS: Failed to initialize overlay plane\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"KMS: Failed to initialize crtc\0A\00", align 1
@AMDGPU_DM_MAX_DISPLAY_INDEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"KMS: Cannot support more than %d display indexes\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"KMS: Failed to initialize encoder\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"KMS: Failed to initialize connector\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"KMS: Failed to detect connector\0A\00", align 1
@DETECT_REASON_BOOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"DM: Failed to initialize IRQ\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Unsupported ASIC type: 0x%X\0A\00", align 1
@amdgpu_pp_feature_mask = common dso_local global i32 0, align 4
@PP_STUTTER_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @amdgpu_dm_initialize_drm_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_dm_initialize_drm_device(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_display_manager*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_dm_connector*, align 8
  %7 = alloca %struct.amdgpu_encoder*, align 8
  %8 = alloca %struct.amdgpu_mode_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dc_plane_cap*, align 8
  %13 = alloca %struct.dc_plane_cap*, align 8
  %14 = alloca %struct.dc_link*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 2
  store %struct.amdgpu_display_manager* %16, %struct.amdgpu_display_manager** %4, align 8
  store %struct.amdgpu_dm_connector* null, %struct.amdgpu_dm_connector** %6, align 8
  store %struct.amdgpu_encoder* null, %struct.amdgpu_encoder** %7, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  store %struct.amdgpu_mode_info* %18, %struct.amdgpu_mode_info** %8, align 8
  %19 = load i32, i32* @dc_connection_none, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %27 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @amdgpu_dm_mode_config_init(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %308

35:                                               ; preds = %1
  %36 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %37 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @AMDGPU_MAX_PLANES, align 4
  %44 = icmp sle i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %72, %35
  %50 = load i32, i32* %5, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %49
  %53 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %54 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load %struct.dc_plane_cap*, %struct.dc_plane_cap** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.dc_plane_cap, %struct.dc_plane_cap* %58, i64 %60
  store %struct.dc_plane_cap* %61, %struct.dc_plane_cap** %12, align 8
  %62 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %63 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %8, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %66 = load %struct.dc_plane_cap*, %struct.dc_plane_cap** %12, align 8
  %67 = call i64 @initialize_plane(%struct.amdgpu_display_manager* %62, %struct.amdgpu_mode_info* %63, i32 %64, i32 %65, %struct.dc_plane_cap* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %52
  %70 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %300

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %5, align 4
  br label %49

75:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %131, %75
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %79 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %77, %83
  br i1 %84, label %85, label %134

85:                                               ; preds = %76
  %86 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %87 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = load %struct.dc_plane_cap*, %struct.dc_plane_cap** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.dc_plane_cap, %struct.dc_plane_cap* %91, i64 %93
  store %struct.dc_plane_cap* %94, %struct.dc_plane_cap** %13, align 8
  %95 = load %struct.dc_plane_cap*, %struct.dc_plane_cap** %13, align 8
  %96 = getelementptr inbounds %struct.dc_plane_cap, %struct.dc_plane_cap* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @DC_PLANE_TYPE_DCN_UNIVERSAL, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %85
  br label %131

101:                                              ; preds = %85
  %102 = load %struct.dc_plane_cap*, %struct.dc_plane_cap** %13, align 8
  %103 = getelementptr inbounds %struct.dc_plane_cap, %struct.dc_plane_cap* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.dc_plane_cap*, %struct.dc_plane_cap** %13, align 8
  %108 = getelementptr inbounds %struct.dc_plane_cap, %struct.dc_plane_cap* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %106, %101
  br label %131

112:                                              ; preds = %106
  %113 = load %struct.dc_plane_cap*, %struct.dc_plane_cap** %13, align 8
  %114 = getelementptr inbounds %struct.dc_plane_cap, %struct.dc_plane_cap* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %112
  br label %131

119:                                              ; preds = %112
  %120 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  %125 = load %struct.dc_plane_cap*, %struct.dc_plane_cap** %13, align 8
  %126 = call i64 @initialize_plane(%struct.amdgpu_display_manager* %120, %struct.amdgpu_mode_info* null, i32 %123, i32 %124, %struct.dc_plane_cap* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %300

130:                                              ; preds = %119
  br label %134

131:                                              ; preds = %118, %111, %100
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %76

134:                                              ; preds = %130, %76
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %159, %134
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %138 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %137, i32 0, i32 1
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %136, %142
  br i1 %143, label %144, label %162

144:                                              ; preds = %135
  %145 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %146 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %8, align 8
  %147 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i64 @amdgpu_dm_crtc_init(%struct.amdgpu_display_manager* %145, i32 %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %144
  %157 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %300

158:                                              ; preds = %144
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %135

162:                                              ; preds = %135
  %163 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %164 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %163, i32 0, i32 1
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %170 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  store i32 0, i32* %5, align 4
  br label %171

171:                                              ; preds = %256, %162
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %259

175:                                              ; preds = %171
  store %struct.dc_link* null, %struct.dc_link** %14, align 8
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @AMDGPU_DM_MAX_DISPLAY_INDEX, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32, i32* @AMDGPU_DM_MAX_DISPLAY_INDEX, align 4
  %181 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %180)
  br label %256

182:                                              ; preds = %175
  %183 = load i32, i32* @GFP_KERNEL, align 4
  %184 = call %struct.amdgpu_encoder* @kzalloc(i32 8, i32 %183)
  %185 = bitcast %struct.amdgpu_encoder* %184 to %struct.amdgpu_dm_connector*
  store %struct.amdgpu_dm_connector* %185, %struct.amdgpu_dm_connector** %6, align 8
  %186 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %187 = icmp ne %struct.amdgpu_dm_connector* %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %182
  br label %300

189:                                              ; preds = %182
  %190 = load i32, i32* @GFP_KERNEL, align 4
  %191 = call %struct.amdgpu_encoder* @kzalloc(i32 8, i32 %190)
  store %struct.amdgpu_encoder* %191, %struct.amdgpu_encoder** %7, align 8
  %192 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %193 = icmp ne %struct.amdgpu_encoder* %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %189
  br label %300

195:                                              ; preds = %189
  %196 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %197 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %200 = load i32, i32* %5, align 4
  %201 = call i64 @amdgpu_dm_encoder_init(i32 %198, %struct.amdgpu_encoder* %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %195
  %204 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %300

205:                                              ; preds = %195
  %206 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %207 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %208 = bitcast %struct.amdgpu_dm_connector* %207 to %struct.amdgpu_encoder*
  %209 = load i32, i32* %5, align 4
  %210 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %211 = call i64 @amdgpu_dm_connector_init(%struct.amdgpu_display_manager* %206, %struct.amdgpu_encoder* %208, i32 %209, %struct.amdgpu_encoder* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %205
  %214 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %300

215:                                              ; preds = %205
  %216 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %217 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %216, i32 0, i32 1
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = load i32, i32* %5, align 4
  %220 = call %struct.dc_link* @dc_get_link_at_index(%struct.TYPE_10__* %218, i32 %219)
  store %struct.dc_link* %220, %struct.dc_link** %14, align 8
  %221 = load %struct.dc_link*, %struct.dc_link** %14, align 8
  %222 = call i32 @dc_link_detect_sink(%struct.dc_link* %221, i32* %11)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %215
  %225 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %215
  %227 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %228 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %226
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* @dc_connection_none, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %232
  %237 = load %struct.dc_link*, %struct.dc_link** %14, align 8
  %238 = call i32 @emulated_link_detect(%struct.dc_link* %237)
  %239 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %240 = bitcast %struct.amdgpu_dm_connector* %239 to %struct.amdgpu_encoder*
  %241 = call i32 @amdgpu_dm_update_connector_after_detect(%struct.amdgpu_encoder* %240)
  br label %255

242:                                              ; preds = %232, %226
  %243 = load %struct.dc_link*, %struct.dc_link** %14, align 8
  %244 = load i32, i32* @DETECT_REASON_BOOT, align 4
  %245 = call i64 @dc_link_detect(%struct.dc_link* %243, i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %242
  %248 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %249 = bitcast %struct.amdgpu_dm_connector* %248 to %struct.amdgpu_encoder*
  %250 = call i32 @amdgpu_dm_update_connector_after_detect(%struct.amdgpu_encoder* %249)
  %251 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %252 = load %struct.dc_link*, %struct.dc_link** %14, align 8
  %253 = call i32 @register_backlight_device(%struct.amdgpu_display_manager* %251, %struct.dc_link* %252)
  br label %254

254:                                              ; preds = %247, %242
  br label %255

255:                                              ; preds = %254, %236
  br label %256

256:                                              ; preds = %255, %179
  %257 = load i32, i32* %5, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %5, align 4
  br label %171

259:                                              ; preds = %171
  %260 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %261 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  switch i32 %262, label %272 [
    i32 148, label %263
    i32 145, label %263
    i32 143, label %263
    i32 144, label %263
    i32 142, label %263
    i32 132, label %263
    i32 146, label %263
    i32 147, label %263
    i32 133, label %263
    i32 137, label %263
    i32 138, label %263
    i32 136, label %263
    i32 128, label %263
    i32 131, label %263
    i32 130, label %263
    i32 129, label %263
  ]

263:                                              ; preds = %259, %259, %259, %259, %259, %259, %259, %259, %259, %259, %259, %259, %259, %259, %259, %259
  %264 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %265 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @dce110_register_irq_handlers(i32 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %263
  %270 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %300

271:                                              ; preds = %263
  br label %277

272:                                              ; preds = %259
  %273 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %274 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %275)
  br label %300

277:                                              ; preds = %271
  %278 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %279 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 147
  br i1 %281, label %282, label %299

282:                                              ; preds = %277
  %283 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %284 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = icmp ne i32 %285, 133
  br i1 %286, label %287, label %299

287:                                              ; preds = %282
  %288 = load i32, i32* @amdgpu_pp_feature_mask, align 4
  %289 = load i32, i32* @PP_STUTTER_MODE, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  %292 = zext i1 %291 to i64
  %293 = select i1 %291, i32 0, i32 1
  %294 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %4, align 8
  %295 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %294, i32 0, i32 1
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  store i32 %293, i32* %298, align 8
  br label %299

299:                                              ; preds = %287, %282, %277
  store i32 0, i32* %2, align 4
  br label %308

300:                                              ; preds = %272, %269, %213, %203, %194, %188, %156, %128, %69
  %301 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %302 = call i32 @kfree(%struct.amdgpu_encoder* %301)
  %303 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %304 = bitcast %struct.amdgpu_dm_connector* %303 to %struct.amdgpu_encoder*
  %305 = call i32 @kfree(%struct.amdgpu_encoder* %304)
  %306 = load i32, i32* @EINVAL, align 4
  %307 = sub nsw i32 0, %306
  store i32 %307, i32* %2, align 4
  br label %308

308:                                              ; preds = %300, %299, %31
  %309 = load i32, i32* %2, align 4
  ret i32 %309
}

declare dso_local i64 @amdgpu_dm_mode_config_init(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @initialize_plane(%struct.amdgpu_display_manager*, %struct.amdgpu_mode_info*, i32, i32, %struct.dc_plane_cap*) #1

declare dso_local i64 @amdgpu_dm_crtc_init(%struct.amdgpu_display_manager*, i32, i32) #1

declare dso_local %struct.amdgpu_encoder* @kzalloc(i32, i32) #1

declare dso_local i64 @amdgpu_dm_encoder_init(i32, %struct.amdgpu_encoder*, i32) #1

declare dso_local i64 @amdgpu_dm_connector_init(%struct.amdgpu_display_manager*, %struct.amdgpu_encoder*, i32, %struct.amdgpu_encoder*) #1

declare dso_local %struct.dc_link* @dc_get_link_at_index(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @dc_link_detect_sink(%struct.dc_link*, i32*) #1

declare dso_local i32 @emulated_link_detect(%struct.dc_link*) #1

declare dso_local i32 @amdgpu_dm_update_connector_after_detect(%struct.amdgpu_encoder*) #1

declare dso_local i64 @dc_link_detect(%struct.dc_link*, i32) #1

declare dso_local i32 @register_backlight_device(%struct.amdgpu_display_manager*, %struct.dc_link*) #1

declare dso_local i32 @dce110_register_irq_handlers(i32) #1

declare dso_local i32 @kfree(%struct.amdgpu_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
