; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_get_encoder_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_get_encoder_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { i64, i64, i64, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i64 }
%struct.drm_connector = type { i32 }
%struct.radeon_connector = type { i32, %struct.radeon_connector_atom_dig*, i32 }
%struct.radeon_connector_atom_dig = type { i32 }

@ATOM_ENCODER_MODE_DP_MST = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@ATOM_ENCODER_MODE_DP = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_DVO1 = common dso_local global i64 0, align 8
@ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1 = common dso_local global i64 0, align 8
@ATOM_ENCODER_MODE_DVO = common dso_local global i32 0, align 4
@radeon_audio = common dso_local global i32 0, align 4
@RADEON_AUDIO_ENABLE = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_HDMI = common dso_local global i32 0, align 4
@RADEON_AUDIO_AUTO = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_DVI = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_CRT = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_LVDS = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_DP_AUDIO = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_TV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atombios_get_encoder_mode(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.radeon_connector*, align 8
  %9 = alloca %struct.radeon_connector_atom_dig*, align 8
  %10 = alloca %struct.radeon_encoder_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %4, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %5, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %18 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %17)
  store %struct.radeon_encoder* %18, %struct.radeon_encoder** %6, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %20 = call i64 @radeon_encoder_is_digital(%struct.drm_encoder* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %24 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %23, i32 0, i32 3
  %25 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %24, align 8
  store %struct.radeon_encoder_atom_dig* %25, %struct.radeon_encoder_atom_dig** %10, align 8
  %26 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %27 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @ATOM_ENCODER_MODE_DP_MST, align 4
  store i32 %31, i32* %2, align 4
  br label %245

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %35 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %40 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %33
  %44 = load i32, i32* @ATOM_ENCODER_MODE_DP_MST, align 4
  store i32 %44, i32* %2, align 4
  br label %245

45:                                               ; preds = %38
  %46 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %47 = call i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %46)
  %48 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @ATOM_ENCODER_MODE_DP, align 4
  store i32 %51, i32* %2, align 4
  br label %245

52:                                               ; preds = %45
  %53 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %54 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_DVO1, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %60 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58, %52
  %65 = load i32, i32* @ATOM_ENCODER_MODE_DVO, align 4
  store i32 %65, i32* %2, align 4
  br label %245

66:                                               ; preds = %58
  %67 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %68 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %67)
  store %struct.drm_connector* %68, %struct.drm_connector** %7, align 8
  %69 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %70 = icmp ne %struct.drm_connector* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %73 = call %struct.drm_connector* @radeon_get_connector_for_encoder_init(%struct.drm_encoder* %72)
  store %struct.drm_connector* %73, %struct.drm_connector** %7, align 8
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %76 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %75)
  store %struct.radeon_connector* %76, %struct.radeon_connector** %8, align 8
  %77 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %78 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %128 [
    i32 135, label %80
    i32 132, label %80
    i32 136, label %127
    i32 133, label %127
    i32 131, label %156
    i32 134, label %158
    i32 128, label %221
    i32 137, label %241
    i32 129, label %241
    i32 138, label %243
    i32 130, label %243
    i32 139, label %243
  ]

80:                                               ; preds = %74, %74
  %81 = load i32, i32* @radeon_audio, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %118

83:                                               ; preds = %80
  %84 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %85 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %90 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @RADEON_AUDIO_ENABLE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  store i32 %95, i32* %2, align 4
  br label %245

96:                                               ; preds = %88, %83
  %97 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %98 = call i32 @radeon_connector_edid(%struct.drm_connector* %97)
  %99 = call i32 @drm_detect_hdmi_monitor(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %103 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @RADEON_AUDIO_AUTO, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  store i32 %108, i32* %2, align 4
  br label %245

109:                                              ; preds = %101, %96
  %110 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %111 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  store i32 %115, i32* %2, align 4
  br label %245

116:                                              ; preds = %109
  %117 = load i32, i32* @ATOM_ENCODER_MODE_CRT, align 4
  store i32 %117, i32* %2, align 4
  br label %245

118:                                              ; preds = %80
  %119 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %120 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  store i32 %124, i32* %2, align 4
  br label %245

125:                                              ; preds = %118
  %126 = load i32, i32* @ATOM_ENCODER_MODE_CRT, align 4
  store i32 %126, i32* %2, align 4
  br label %245

127:                                              ; preds = %74, %74
  br label %128

128:                                              ; preds = %74, %127
  %129 = load i32, i32* @radeon_audio, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %154

131:                                              ; preds = %128
  %132 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %133 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @RADEON_AUDIO_ENABLE, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  store i32 %138, i32* %2, align 4
  br label %245

139:                                              ; preds = %131
  %140 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %141 = call i32 @radeon_connector_edid(%struct.drm_connector* %140)
  %142 = call i32 @drm_detect_hdmi_monitor(i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %146 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @RADEON_AUDIO_AUTO, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  store i32 %151, i32* %2, align 4
  br label %245

152:                                              ; preds = %144, %139
  %153 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  store i32 %153, i32* %2, align 4
  br label %245

154:                                              ; preds = %128
  %155 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  store i32 %155, i32* %2, align 4
  br label %245

156:                                              ; preds = %74
  %157 = load i32, i32* @ATOM_ENCODER_MODE_LVDS, align 4
  store i32 %157, i32* %2, align 4
  br label %245

158:                                              ; preds = %74
  %159 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %160 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %159, i32 0, i32 1
  %161 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %160, align 8
  store %struct.radeon_connector_atom_dig* %161, %struct.radeon_connector_atom_dig** %9, align 8
  %162 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %9, align 8
  %163 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %173, label %167

167:                                              ; preds = %158
  %168 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %9, align 8
  %169 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @CONNECTOR_OBJECT_ID_eDP, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %193

173:                                              ; preds = %167, %158
  %174 = load i32, i32* @radeon_audio, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %173
  %177 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %178 = call i32 @radeon_connector_edid(%struct.drm_connector* %177)
  %179 = call i32 @drm_detect_monitor_audio(i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %183 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %187 = call i32 @ASIC_IS_DCE5(%struct.radeon_device* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* @ATOM_ENCODER_MODE_DP_AUDIO, align 4
  store i32 %190, i32* %2, align 4
  br label %245

191:                                              ; preds = %185, %181, %176, %173
  %192 = load i32, i32* @ATOM_ENCODER_MODE_DP, align 4
  store i32 %192, i32* %2, align 4
  br label %245

193:                                              ; preds = %167
  %194 = load i32, i32* @radeon_audio, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %219

196:                                              ; preds = %193
  %197 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %198 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @RADEON_AUDIO_ENABLE, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %196
  %203 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  store i32 %203, i32* %2, align 4
  br label %245

204:                                              ; preds = %196
  %205 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %206 = call i32 @radeon_connector_edid(%struct.drm_connector* %205)
  %207 = call i32 @drm_detect_hdmi_monitor(i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %204
  %210 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %211 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @RADEON_AUDIO_AUTO, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %209
  %216 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  store i32 %216, i32* %2, align 4
  br label %245

217:                                              ; preds = %209, %204
  %218 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  store i32 %218, i32* %2, align 4
  br label %245

219:                                              ; preds = %193
  %220 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  store i32 %220, i32* %2, align 4
  br label %245

221:                                              ; preds = %74
  %222 = load i32, i32* @radeon_audio, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %239

224:                                              ; preds = %221
  %225 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %226 = call i32 @radeon_connector_edid(%struct.drm_connector* %225)
  %227 = call i32 @drm_detect_monitor_audio(i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %239

229:                                              ; preds = %224
  %230 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %231 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %229
  %234 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %235 = call i32 @ASIC_IS_DCE5(%struct.radeon_device* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %233
  %238 = load i32, i32* @ATOM_ENCODER_MODE_DP_AUDIO, align 4
  store i32 %238, i32* %2, align 4
  br label %245

239:                                              ; preds = %233, %229, %224, %221
  %240 = load i32, i32* @ATOM_ENCODER_MODE_DP, align 4
  store i32 %240, i32* %2, align 4
  br label %245

241:                                              ; preds = %74, %74
  %242 = load i32, i32* @ATOM_ENCODER_MODE_CRT, align 4
  store i32 %242, i32* %2, align 4
  br label %245

243:                                              ; preds = %74, %74, %74
  %244 = load i32, i32* @ATOM_ENCODER_MODE_TV, align 4
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %243, %241, %239, %237, %219, %217, %215, %202, %191, %189, %156, %154, %152, %150, %137, %125, %123, %116, %114, %107, %94, %64, %50, %43, %30
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i64 @radeon_encoder_is_digital(%struct.drm_encoder*) #1

declare dso_local i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder_init(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_detect_hdmi_monitor(i32) #1

declare dso_local i32 @radeon_connector_edid(%struct.drm_connector*) #1

declare dso_local i32 @drm_detect_monitor_audio(i32) #1

declare dso_local i32 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @ASIC_IS_DCE5(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
