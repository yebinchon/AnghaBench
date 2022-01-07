; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_dp_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_dp_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i64, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_connector = type { %struct.TYPE_2__, i64, %struct.radeon_connector_atom_dig* }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_connector_atom_dig = type { i64, i32, i64 }
%struct.drm_encoder = type { %struct.drm_encoder_helper_funcs* }
%struct.drm_encoder_helper_funcs = type { i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)* }
%struct.drm_encoder.0 = type opaque
%struct.drm_connector.1 = type opaque
%struct.radeon_encoder = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i64 0, align 8
@connector_status_connected = common dso_local global i32 0, align 4
@RADEON_IS_PX = common dso_local global i32 0, align 4
@radeon_runtime_pm = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i64 0, align 8
@ATOM_TRANSMITTER_ACTION_POWER_ON = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_POWER_OFF = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@radeon_audio = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @radeon_dp_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_dp_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_connector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_connector_atom_dig*, align 8
  %11 = alloca %struct.drm_encoder*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.radeon_encoder*, align 8
  %14 = alloca %struct.drm_display_mode*, align 8
  %15 = alloca %struct.drm_encoder_helper_funcs*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 2
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %6, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 1
  %21 = load %struct.radeon_device*, %struct.radeon_device** %20, align 8
  store %struct.radeon_device* %21, %struct.radeon_device** %7, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %23 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %22)
  store %struct.radeon_connector* %23, %struct.radeon_connector** %8, align 8
  %24 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %26 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %25, i32 0, i32 2
  %27 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %26, align 8
  store %struct.radeon_connector_atom_dig* %27, %struct.radeon_connector_atom_dig** %10, align 8
  %28 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %29 = call %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector* %28)
  store %struct.drm_encoder* %29, %struct.drm_encoder** %11, align 8
  %30 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %31 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %35, i32* %3, align 4
  br label %273

36:                                               ; preds = %2
  %37 = call i32 (...) @drm_kms_helper_is_poll_worker()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  %40 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %41 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %40, i32 0, i32 2
  %42 = load %struct.drm_device*, %struct.drm_device** %41, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pm_runtime_get_sync(i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %49, i32* %3, align 4
  br label %273

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %56 = call i64 @radeon_check_hpd_status_unchanged(%struct.drm_connector* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %60 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %9, align 4
  br label %255

62:                                               ; preds = %54, %51
  %63 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %64 = call i32 @radeon_connector_free_edid(%struct.drm_connector* %63)
  %65 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %66 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %62
  %71 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %72 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DRM_MODE_CONNECTOR_LVDS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %136

76:                                               ; preds = %70, %62
  %77 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %78 = icmp ne %struct.drm_encoder* %77, null
  br i1 %78, label %79, label %108

79:                                               ; preds = %76
  %80 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %81 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %80)
  store %struct.radeon_encoder* %81, %struct.radeon_encoder** %13, align 8
  %82 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %83 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %82, i32 0, i32 0
  store %struct.drm_display_mode* %83, %struct.drm_display_mode** %14, align 8
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 320
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %90 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %91, 240
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @connector_status_connected, align 4
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %93, %88, %79
  %96 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RADEON_IS_PX, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load i64, i64* @radeon_runtime_pm, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %105, %102, %95
  br label %108

108:                                              ; preds = %107, %76
  %109 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %110 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %111 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %113 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %108
  %117 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %118 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_ON, align 4
  %119 = call i32 @atombios_set_edp_panel_power(%struct.drm_connector* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %108
  %121 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %122 = call i64 @radeon_dp_getdpcd(%struct.radeon_connector* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* @connector_status_connected, align 4
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %124, %120
  %127 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %128 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %126
  %132 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %133 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_OFF, align 4
  %134 = call i32 @atombios_set_edp_panel_power(%struct.drm_connector* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %126
  br label %238

136:                                              ; preds = %70
  %137 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %138 = call i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector* %137)
  %139 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %177

141:                                              ; preds = %136
  %142 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %143 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %144 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %146 = call i64 @radeon_dp_getdpcd(%struct.radeon_connector* %145)
  %147 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %148 = icmp ne %struct.drm_encoder* %147, null
  br i1 %148, label %149, label %176

149:                                              ; preds = %141
  %150 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %151 = call i32 @radeon_atom_ext_encoder_setup_ddc(%struct.drm_encoder* %150)
  %152 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %153 = call i64 @radeon_ddc_probe(%struct.radeon_connector* %152, i32 1)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* @connector_status_connected, align 4
  store i32 %156, i32* %9, align 4
  br label %175

157:                                              ; preds = %149
  %158 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %159 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %157
  %163 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %164 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %163, i32 0, i32 0
  %165 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %164, align 8
  store %struct.drm_encoder_helper_funcs* %165, %struct.drm_encoder_helper_funcs** %15, align 8
  %166 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %15, align 8
  %167 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %166, i32 0, i32 0
  %168 = load i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)*, i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)** %167, align 8
  %169 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %170 = bitcast %struct.drm_encoder* %169 to %struct.drm_encoder.0*
  %171 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %172 = bitcast %struct.drm_connector* %171 to %struct.drm_connector.1*
  %173 = call i32 %168(%struct.drm_encoder.0* %170, %struct.drm_connector.1* %172)
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %162, %157
  br label %175

175:                                              ; preds = %174, %155
  br label %176

176:                                              ; preds = %175, %141
  br label %237

177:                                              ; preds = %136
  %178 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %179 = call i64 @radeon_dp_getsinktype(%struct.radeon_connector* %178)
  %180 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %181 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %180, i32 0, i32 0
  store i64 %179, i64* %181, align 8
  %182 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %183 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %184 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i64 @radeon_hpd_sense(%struct.radeon_device* %182, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %207

189:                                              ; preds = %177
  %190 = load i32, i32* @connector_status_connected, align 4
  store i32 %190, i32* %9, align 4
  %191 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %192 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %189
  %197 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %198 = call i64 @radeon_dp_getdpcd(%struct.radeon_connector* %197)
  %199 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %200 = call i32 @radeon_dp_mst_probe(%struct.radeon_connector* %199)
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %205

203:                                              ; preds = %196
  %204 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %204, i32* %9, align 4
  br label %205

205:                                              ; preds = %203, %196
  br label %206

206:                                              ; preds = %205, %189
  br label %236

207:                                              ; preds = %177
  %208 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %209 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %228

213:                                              ; preds = %207
  %214 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %215 = call i64 @radeon_dp_getdpcd(%struct.radeon_connector* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %213
  %218 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %219 = call i32 @radeon_dp_mst_probe(%struct.radeon_connector* %218)
  store i32 %219, i32* %12, align 4
  %220 = load i32, i32* %12, align 4
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %223, i32* %9, align 4
  br label %226

224:                                              ; preds = %217
  %225 = load i32, i32* @connector_status_connected, align 4
  store i32 %225, i32* %9, align 4
  br label %226

226:                                              ; preds = %224, %222
  br label %227

227:                                              ; preds = %226, %213
  br label %235

228:                                              ; preds = %207
  %229 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %230 = call i64 @radeon_ddc_probe(%struct.radeon_connector* %229, i32 0)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = load i32, i32* @connector_status_connected, align 4
  store i32 %233, i32* %9, align 4
  br label %234

234:                                              ; preds = %232, %228
  br label %235

235:                                              ; preds = %234, %227
  br label %236

236:                                              ; preds = %235, %206
  br label %237

237:                                              ; preds = %236, %176
  br label %238

238:                                              ; preds = %237, %135
  %239 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @radeon_connector_update_scratch_regs(%struct.drm_connector* %239, i32 %240)
  %242 = load i64, i64* @radeon_audio, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %254

244:                                              ; preds = %238
  %245 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %246 = icmp ne %struct.drm_encoder* %245, null
  br i1 %246, label %247, label %254

247:                                              ; preds = %244
  %248 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %249 = call i32 @radeon_connector_get_edid(%struct.drm_connector* %248)
  %250 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %251 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %252 = load i32, i32* %9, align 4
  %253 = call i32 @radeon_audio_detect(%struct.drm_connector* %250, %struct.drm_encoder* %251, i32 %252)
  br label %254

254:                                              ; preds = %247, %244, %238
  br label %255

255:                                              ; preds = %254, %58
  %256 = call i32 (...) @drm_kms_helper_is_poll_worker()
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %271, label %258

258:                                              ; preds = %255
  %259 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %260 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %259, i32 0, i32 2
  %261 = load %struct.drm_device*, %struct.drm_device** %260, align 8
  %262 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @pm_runtime_mark_last_busy(i32 %263)
  %265 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %266 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %265, i32 0, i32 2
  %267 = load %struct.drm_device*, %struct.drm_device** %266, align 8
  %268 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @pm_runtime_put_autosuspend(i32 %269)
  br label %271

271:                                              ; preds = %258, %255
  %272 = load i32, i32* %9, align 4
  store i32 %272, i32* %3, align 4
  br label %273

273:                                              ; preds = %271, %48, %34
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector*) #1

declare dso_local i32 @drm_kms_helper_is_poll_worker(...) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i64 @radeon_check_hpd_status_unchanged(%struct.drm_connector*) #1

declare dso_local i32 @radeon_connector_free_edid(%struct.drm_connector*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @atombios_set_edp_panel_power(%struct.drm_connector*, i32) #1

declare dso_local i64 @radeon_dp_getdpcd(%struct.radeon_connector*) #1

declare dso_local i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector*) #1

declare dso_local i32 @radeon_atom_ext_encoder_setup_ddc(%struct.drm_encoder*) #1

declare dso_local i64 @radeon_ddc_probe(%struct.radeon_connector*, i32) #1

declare dso_local i64 @radeon_dp_getsinktype(%struct.radeon_connector*) #1

declare dso_local i64 @radeon_hpd_sense(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_dp_mst_probe(%struct.radeon_connector*) #1

declare dso_local i32 @radeon_connector_update_scratch_regs(%struct.drm_connector*, i32) #1

declare dso_local i32 @radeon_connector_get_edid(%struct.drm_connector*) #1

declare dso_local i32 @radeon_audio_detect(%struct.drm_connector*, %struct.drm_encoder*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
