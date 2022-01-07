; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_dp_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_dp_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i64, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_connector = type { %struct.TYPE_2__, i64, %struct.amdgpu_connector_atom_dig* }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_connector_atom_dig = type { i64, i32 }
%struct.drm_encoder = type { %struct.drm_encoder_helper_funcs* }
%struct.drm_encoder_helper_funcs = type { i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)* }
%struct.drm_encoder.0 = type opaque
%struct.drm_connector.1 = type opaque
%struct.amdgpu_encoder = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i64 0, align 8
@connector_status_connected = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i64 0, align 8
@ATOM_TRANSMITTER_ACTION_POWER_ON = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_POWER_OFF = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @amdgpu_connector_dp_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_connector_dp_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.amdgpu_connector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  %11 = alloca %struct.drm_encoder*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.amdgpu_encoder*, align 8
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
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %20, align 8
  store %struct.amdgpu_device* %21, %struct.amdgpu_device** %7, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %23 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %22)
  store %struct.amdgpu_connector* %23, %struct.amdgpu_connector** %8, align 8
  %24 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %8, align 8
  %26 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %25, i32 0, i32 2
  %27 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %26, align 8
  store %struct.amdgpu_connector_atom_dig* %27, %struct.amdgpu_connector_atom_dig** %10, align 8
  %28 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %29 = call %struct.drm_encoder* @amdgpu_connector_best_single_encoder(%struct.drm_connector* %28)
  store %struct.drm_encoder* %29, %struct.drm_encoder** %11, align 8
  %30 = call i32 (...) @drm_kms_helper_is_poll_worker()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %2
  %33 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %34 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %33, i32 0, i32 2
  %35 = load %struct.drm_device*, %struct.drm_device** %34, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pm_runtime_get_sync(i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %42, i32* %3, align 4
  br label %226

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %49 = call i64 @amdgpu_connector_check_hpd_status_unchanged(%struct.drm_connector* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %53 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %9, align 4
  br label %208

55:                                               ; preds = %47, %44
  %56 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %57 = call i32 @amdgpu_connector_free_edid(%struct.drm_connector* %56)
  %58 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %59 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %55
  %64 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %65 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DRM_MODE_CONNECTOR_LVDS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %117

69:                                               ; preds = %63, %55
  %70 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %71 = icmp ne %struct.drm_encoder* %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %74 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %73)
  store %struct.amdgpu_encoder* %74, %struct.amdgpu_encoder** %13, align 8
  %75 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %13, align 8
  %76 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %75, i32 0, i32 0
  store %struct.drm_display_mode* %76, %struct.drm_display_mode** %14, align 8
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp sge i32 %79, 320
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %83 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %84, 240
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @connector_status_connected, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %86, %81, %72
  br label %89

89:                                               ; preds = %88, %69
  %90 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %91 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %10, align 8
  %92 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %10, align 8
  %94 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %89
  %98 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %99 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_ON, align 4
  %100 = call i32 @amdgpu_atombios_encoder_set_edp_panel_power(%struct.drm_connector* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %89
  %102 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %8, align 8
  %103 = call i32 @amdgpu_atombios_dp_get_dpcd(%struct.amdgpu_connector* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* @connector_status_connected, align 4
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %105, %101
  %108 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %10, align 8
  %109 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %114 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_OFF, align 4
  %115 = call i32 @amdgpu_atombios_encoder_set_edp_panel_power(%struct.drm_connector* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %107
  br label %204

117:                                              ; preds = %63
  %118 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %119 = call i64 @amdgpu_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector* %118)
  %120 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %158

122:                                              ; preds = %117
  %123 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %124 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %10, align 8
  %125 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %8, align 8
  %127 = call i32 @amdgpu_atombios_dp_get_dpcd(%struct.amdgpu_connector* %126)
  %128 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %129 = icmp ne %struct.drm_encoder* %128, null
  br i1 %129, label %130, label %157

130:                                              ; preds = %122
  %131 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %132 = call i32 @amdgpu_atombios_encoder_setup_ext_encoder_ddc(%struct.drm_encoder* %131)
  %133 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %8, align 8
  %134 = call i64 @amdgpu_display_ddc_probe(%struct.amdgpu_connector* %133, i32 1)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* @connector_status_connected, align 4
  store i32 %137, i32* %9, align 4
  br label %156

138:                                              ; preds = %130
  %139 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %8, align 8
  %140 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %138
  %144 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %145 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %144, i32 0, i32 0
  %146 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %145, align 8
  store %struct.drm_encoder_helper_funcs* %146, %struct.drm_encoder_helper_funcs** %15, align 8
  %147 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %15, align 8
  %148 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %147, i32 0, i32 0
  %149 = load i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)*, i32 (%struct.drm_encoder.0*, %struct.drm_connector.1*)** %148, align 8
  %150 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %151 = bitcast %struct.drm_encoder* %150 to %struct.drm_encoder.0*
  %152 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %153 = bitcast %struct.drm_connector* %152 to %struct.drm_connector.1*
  %154 = call i32 %149(%struct.drm_encoder.0* %151, %struct.drm_connector.1* %153)
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %143, %138
  br label %156

156:                                              ; preds = %155, %136
  br label %157

157:                                              ; preds = %156, %122
  br label %203

158:                                              ; preds = %117
  %159 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %8, align 8
  %160 = call i64 @amdgpu_atombios_dp_get_sinktype(%struct.amdgpu_connector* %159)
  %161 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %10, align 8
  %162 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %164 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %8, align 8
  %165 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i64 @amdgpu_display_hpd_sense(%struct.amdgpu_device* %163, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %158
  %171 = load i32, i32* @connector_status_connected, align 4
  store i32 %171, i32* %9, align 4
  %172 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %10, align 8
  %173 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %8, align 8
  %179 = call i32 @amdgpu_atombios_dp_get_dpcd(%struct.amdgpu_connector* %178)
  br label %180

180:                                              ; preds = %177, %170
  br label %202

181:                                              ; preds = %158
  %182 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %10, align 8
  %183 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %181
  %188 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %8, align 8
  %189 = call i32 @amdgpu_atombios_dp_get_dpcd(%struct.amdgpu_connector* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %187
  %192 = load i32, i32* @connector_status_connected, align 4
  store i32 %192, i32* %9, align 4
  br label %193

193:                                              ; preds = %191, %187
  br label %201

194:                                              ; preds = %181
  %195 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %8, align 8
  %196 = call i64 @amdgpu_display_ddc_probe(%struct.amdgpu_connector* %195, i32 0)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i32, i32* @connector_status_connected, align 4
  store i32 %199, i32* %9, align 4
  br label %200

200:                                              ; preds = %198, %194
  br label %201

201:                                              ; preds = %200, %193
  br label %202

202:                                              ; preds = %201, %180
  br label %203

203:                                              ; preds = %202, %157
  br label %204

204:                                              ; preds = %203, %116
  %205 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @amdgpu_connector_update_scratch_regs(%struct.drm_connector* %205, i32 %206)
  br label %208

208:                                              ; preds = %204, %51
  %209 = call i32 (...) @drm_kms_helper_is_poll_worker()
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %224, label %211

211:                                              ; preds = %208
  %212 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %213 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %212, i32 0, i32 2
  %214 = load %struct.drm_device*, %struct.drm_device** %213, align 8
  %215 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @pm_runtime_mark_last_busy(i32 %216)
  %218 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %219 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %218, i32 0, i32 2
  %220 = load %struct.drm_device*, %struct.drm_device** %219, align 8
  %221 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @pm_runtime_put_autosuspend(i32 %222)
  br label %224

224:                                              ; preds = %211, %208
  %225 = load i32, i32* %9, align 4
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %224, %41
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @amdgpu_connector_best_single_encoder(%struct.drm_connector*) #1

declare dso_local i32 @drm_kms_helper_is_poll_worker(...) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i64 @amdgpu_connector_check_hpd_status_unchanged(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_connector_free_edid(%struct.drm_connector*) #1

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @amdgpu_atombios_encoder_set_edp_panel_power(%struct.drm_connector*, i32) #1

declare dso_local i32 @amdgpu_atombios_dp_get_dpcd(%struct.amdgpu_connector*) #1

declare dso_local i64 @amdgpu_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_atombios_encoder_setup_ext_encoder_ddc(%struct.drm_encoder*) #1

declare dso_local i64 @amdgpu_display_ddc_probe(%struct.amdgpu_connector*, i32) #1

declare dso_local i64 @amdgpu_atombios_dp_get_sinktype(%struct.amdgpu_connector*) #1

declare dso_local i64 @amdgpu_display_hpd_sense(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_connector_update_scratch_regs(%struct.drm_connector*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
