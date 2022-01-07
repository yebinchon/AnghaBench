; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_init_connector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_init_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32, %struct.intel_encoder, %struct.intel_dp }
%struct.intel_encoder = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_dp = type { i32, i8*, %struct.intel_connector*, i32, i8*, i8* }
%struct.intel_connector = type { %struct.drm_connector, i32, i32 }
%struct.drm_connector = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@intel_dp_modeset_retry_work_fn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Not enough lanes (%d) for DP on port %c\0A\00", align 1
@INVALID_PIPE = common dso_local global i8* null, align 8
@DRM_MODE_CONNECTOR_eDP = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i32 0, align 4
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@PORT_B = common dso_local global i32 0, align 4
@PORT_C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Adding %s connector on port %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"eDP\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"DP\00", align 1
@intel_dp_connector_funcs = common dso_local global i32 0, align 4
@intel_dp_connector_helper_funcs = common dso_local global i32 0, align 4
@intel_ddi_connector_get_hw_state = common dso_local global i32 0, align 4
@intel_connector_get_hw_state = common dso_local global i32 0, align 4
@PORT_D = common dso_local global i32 0, align 4
@PORT_F = common dso_local global i32 0, align 4
@intel_dp_hdcp_shim = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"HDCP init failed, skipping.\0A\00", align 1
@PEG_BAND_GAP_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dp_init_connector(%struct.intel_digital_port* %0, %struct.intel_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.intel_dp*, align 8
  %8 = alloca %struct.intel_encoder*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %4, align 8
  store %struct.intel_connector* %1, %struct.intel_connector** %5, align 8
  %16 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %17 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %16, i32 0, i32 0
  store %struct.drm_connector* %17, %struct.drm_connector** %6, align 8
  %18 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %19 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %18, i32 0, i32 2
  store %struct.intel_dp* %19, %struct.intel_dp** %7, align 8
  %20 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %21 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %20, i32 0, i32 1
  store %struct.intel_encoder* %21, %struct.intel_encoder** %8, align 8
  %22 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %23 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.drm_device*, %struct.drm_device** %24, align 8
  store %struct.drm_device* %25, %struct.drm_device** %9, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %27 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %26)
  store %struct.drm_i915_private* %27, %struct.drm_i915_private** %10, align 8
  %28 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %29 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @intel_port_to_phy(%struct.drm_i915_private* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %35 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %34, i32 0, i32 2
  %36 = load i32, i32* @intel_dp_modeset_retry_work_fn, align 4
  %37 = call i32 @INIT_WORK(i32* %35, i32 %36)
  %38 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %39 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, 1
  %42 = zext i1 %41 to i32
  %43 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %44 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @port_name(i32 %46)
  %48 = call i64 @WARN(i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %261

51:                                               ; preds = %2
  %52 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %53 = call i32 @intel_dp_set_source_rates(%struct.intel_dp* %52)
  %54 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %55 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load i8*, i8** @INVALID_PIPE, align 8
  %57 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %58 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @INVALID_PIPE, align 8
  %60 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %61 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %63 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @I915_READ(i32 %64)
  %66 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %67 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %69 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %70 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %69, i32 0, i32 2
  store %struct.intel_connector* %68, %struct.intel_connector** %70, align 8
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @intel_dp_is_port_edp(%struct.drm_i915_private* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %51
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @intel_phy_is_tc(%struct.drm_i915_private* %76, i32 %77)
  %79 = call i64 @WARN_ON(i32 %78)
  %80 = load i32, i32* @DRM_MODE_CONNECTOR_eDP, align 4
  store i32 %80, i32* %13, align 4
  br label %83

81:                                               ; preds = %51
  %82 = load i32, i32* @DRM_MODE_CONNECTOR_DisplayPort, align 4
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %81, %75
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %85 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %89 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87, %83
  %92 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %93 = call i8* @vlv_active_pipe(%struct.intel_dp* %92)
  %94 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %95 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %91, %87
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @DRM_MODE_CONNECTOR_eDP, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %102 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %103 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %96
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %106 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %110 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %108, %104
  %113 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %114 = call i64 @intel_dp_is_edp(%struct.intel_dp* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @PORT_B, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @PORT_C, align 4
  %123 = icmp ne i32 %121, %122
  br label %124

124:                                              ; preds = %120, %116, %112, %108
  %125 = phi i1 [ false, %116 ], [ false, %112 ], [ false, %108 ], [ %123, %120 ]
  %126 = zext i1 %125 to i32
  %127 = call i64 @WARN_ON(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %261

130:                                              ; preds = %124
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @DRM_MODE_CONNECTOR_eDP, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @port_name(i32 %136)
  %138 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %135, i32 %137)
  %139 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %140 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @drm_connector_init(%struct.drm_device* %139, %struct.drm_connector* %140, i32* @intel_dp_connector_funcs, i32 %141)
  %143 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %144 = call i32 @drm_connector_helper_add(%struct.drm_connector* %143, i32* @intel_dp_connector_helper_funcs)
  %145 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %146 = call i32 @HAS_GMCH(%struct.drm_i915_private* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %130
  %149 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %150 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  br label %151

151:                                              ; preds = %148, %130
  %152 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %153 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %152, i32 0, i32 3
  store i64 0, i64* %153, align 8
  %154 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %155 = call i32 @INTEL_GEN(%struct.drm_i915_private* %154)
  %156 = icmp sge i32 %155, 11
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %159 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %151
  %161 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @intel_hpd_pin_default(%struct.drm_i915_private* %161, i32 %162)
  %164 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %165 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %167 = call i32 @intel_dp_aux_init(%struct.intel_dp* %166)
  %168 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %169 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %170 = call i32 @intel_connector_attach_encoder(%struct.intel_connector* %168, %struct.intel_encoder* %169)
  %171 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %172 = call i64 @HAS_DDI(%struct.drm_i915_private* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %160
  %175 = load i32, i32* @intel_ddi_connector_get_hw_state, align 4
  %176 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %177 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 8
  br label %182

178:                                              ; preds = %160
  %179 = load i32, i32* @intel_connector_get_hw_state, align 4
  %180 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %181 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %178, %174
  %183 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %184 = call i64 @HAS_DP_MST(%struct.drm_i915_private* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %214

186:                                              ; preds = %182
  %187 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %188 = call i64 @intel_dp_is_edp(%struct.intel_dp* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %214, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @PORT_B, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %206, label %194

194:                                              ; preds = %190
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* @PORT_C, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %206, label %198

198:                                              ; preds = %194
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* @PORT_D, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %206, label %202

202:                                              ; preds = %198
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @PORT_F, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %214

206:                                              ; preds = %202, %198, %194, %190
  %207 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %208 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %209 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @intel_dp_mst_encoder_init(%struct.intel_digital_port* %207, i32 %212)
  br label %214

214:                                              ; preds = %206, %202, %186, %182
  %215 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %216 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %217 = call i32 @intel_edp_init_connector(%struct.intel_dp* %215, %struct.intel_connector* %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %214
  %220 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %221 = call i32 @intel_dp_aux_fini(%struct.intel_dp* %220)
  %222 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %223 = call i32 @intel_dp_mst_encoder_cleanup(%struct.intel_digital_port* %222)
  br label %258

224:                                              ; preds = %214
  %225 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %226 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %227 = call i32 @intel_dp_add_properties(%struct.intel_dp* %225, %struct.drm_connector* %226)
  %228 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %229 = load i32, i32* %11, align 4
  %230 = call i64 @is_hdcp_supported(%struct.drm_i915_private* %228, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %244

232:                                              ; preds = %224
  %233 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %234 = call i64 @intel_dp_is_edp(%struct.intel_dp* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %244, label %236

236:                                              ; preds = %232
  %237 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %238 = call i32 @intel_hdcp_init(%struct.intel_connector* %237, i32* @intel_dp_hdcp_shim)
  store i32 %238, i32* %14, align 4
  %239 = load i32, i32* %14, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %243

243:                                              ; preds = %241, %236
  br label %244

244:                                              ; preds = %243, %232, %224
  %245 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %246 = call i64 @IS_G45(%struct.drm_i915_private* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %257

248:                                              ; preds = %244
  %249 = load i32, i32* @PEG_BAND_GAP_DATA, align 4
  %250 = call i8* @I915_READ(i32 %249)
  %251 = ptrtoint i8* %250 to i32
  store i32 %251, i32* %15, align 4
  %252 = load i32, i32* @PEG_BAND_GAP_DATA, align 4
  %253 = load i32, i32* %15, align 4
  %254 = and i32 %253, -16
  %255 = or i32 %254, 13
  %256 = call i32 @I915_WRITE(i32 %252, i32 %255)
  br label %257

257:                                              ; preds = %248, %244
  store i32 1, i32* %3, align 4
  br label %261

258:                                              ; preds = %219
  %259 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %260 = call i32 @drm_connector_cleanup(%struct.drm_connector* %259)
  store i32 0, i32* %3, align 4
  br label %261

261:                                              ; preds = %258, %257, %129, %50
  %262 = load i32, i32* %3, align 4
  ret i32 %262
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @intel_port_to_phy(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @intel_dp_set_source_rates(%struct.intel_dp*) #1

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i64 @intel_dp_is_port_edp(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_phy_is_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i8* @vlv_active_pipe(%struct.intel_dp*) #1

declare dso_local i64 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_hpd_pin_default(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_dp_aux_init(%struct.intel_dp*) #1

declare dso_local i32 @intel_connector_attach_encoder(%struct.intel_connector*, %struct.intel_encoder*) #1

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_DP_MST(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_dp_mst_encoder_init(%struct.intel_digital_port*, i32) #1

declare dso_local i32 @intel_edp_init_connector(%struct.intel_dp*, %struct.intel_connector*) #1

declare dso_local i32 @intel_dp_aux_fini(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_mst_encoder_cleanup(%struct.intel_digital_port*) #1

declare dso_local i32 @intel_dp_add_properties(%struct.intel_dp*, %struct.drm_connector*) #1

declare dso_local i64 @is_hdcp_supported(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_hdcp_init(%struct.intel_connector*, i32*) #1

declare dso_local i64 @IS_G45(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
