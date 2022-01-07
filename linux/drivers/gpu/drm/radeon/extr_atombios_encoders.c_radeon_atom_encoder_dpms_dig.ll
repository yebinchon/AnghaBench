; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_dpms_dig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_dpms_dig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_encoder = type { i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32, i32, i32 }
%struct.drm_connector = type { i32 }
%struct.radeon_connector = type { %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i32 }

@ENCODER_OBJECT_ID_TRAVIS = common dso_local global i64 0, align 8
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@DP_PANEL_MODE_EXTERNAL_DP_MODE = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_SETUP = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_SETUP_PANEL_MODE = common dso_local global i32 0, align 4
@EXTERNAL_ENCODER_ACTION_V3_ENCODER_SETUP = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_SETUP = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_POWER_ON = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_ENABLE = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_DP_VIDEO_ON = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_LCD_BLON = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_DP_VIDEO_OFF = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_LCD_BLOFF = common dso_local global i32 0, align 4
@DP_SET_POWER_D3 = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_DISABLE = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_POWER_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @radeon_atom_encoder_dpms_dig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_atom_encoder_dpms_dig(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %10 = alloca %struct.drm_connector*, align 8
  %11 = alloca %struct.radeon_connector*, align 8
  %12 = alloca %struct.radeon_connector_atom_dig*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %5, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %6, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %21 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %20)
  store %struct.radeon_encoder* %21, %struct.radeon_encoder** %7, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %23 = call %struct.drm_encoder* @radeon_get_external_encoder(%struct.drm_encoder* %22)
  store %struct.drm_encoder* %23, %struct.drm_encoder** %8, align 8
  %24 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %25 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %24, i32 0, i32 1
  %26 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %25, align 8
  store %struct.radeon_encoder_atom_dig* %26, %struct.radeon_encoder_atom_dig** %9, align 8
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %28 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %27)
  store %struct.drm_connector* %28, %struct.drm_connector** %10, align 8
  store %struct.radeon_connector* null, %struct.radeon_connector** %11, align 8
  store %struct.radeon_connector_atom_dig* null, %struct.radeon_connector_atom_dig** %12, align 8
  store i32 0, i32* %13, align 4
  %29 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %30 = icmp ne %struct.drm_connector* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %2
  %32 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %33 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %32)
  store %struct.radeon_connector* %33, %struct.radeon_connector** %11, align 8
  %34 = load %struct.radeon_connector*, %struct.radeon_connector** %11, align 8
  %35 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %34, i32 0, i32 0
  %36 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %35, align 8
  store %struct.radeon_connector_atom_dig* %36, %struct.radeon_connector_atom_dig** %12, align 8
  %37 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %38 = call i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector* %37)
  %39 = load i64, i64* @ENCODER_OBJECT_ID_TRAVIS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %31
  %42 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %43 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %50 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 1, i32* %13, align 4
  br label %53

53:                                               ; preds = %52, %48, %41, %31
  br label %54

54:                                               ; preds = %53, %2
  %55 = load i32, i32* %4, align 4
  switch i32 %55, label %298 [
    i32 130, label %56
    i32 129, label %197
    i32 128, label %197
    i32 131, label %197
  ]

56:                                               ; preds = %54
  %57 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %58 = call i32 @ASIC_IS_DCE41(%struct.radeon_device* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %62 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %104

64:                                               ; preds = %60, %56
  %65 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %66 = icmp ne %struct.drm_connector* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @DP_PANEL_MODE_EXTERNAL_DP_MODE, align 4
  %69 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %70 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  br label %77

71:                                               ; preds = %64
  %72 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %73 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %74 = call i32 @radeon_dp_get_panel_mode(%struct.drm_encoder* %72, %struct.drm_connector* %73)
  %75 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %76 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %71, %67
  %78 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %79 = load i32, i32* @ATOM_ENCODER_CMD_SETUP, align 4
  %80 = call i32 @atombios_dig_encoder_setup(%struct.drm_encoder* %78, i32 %79, i32 0)
  %81 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %82 = load i32, i32* @ATOM_ENCODER_CMD_SETUP_PANEL_MODE, align 4
  %83 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %84 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @atombios_dig_encoder_setup(%struct.drm_encoder* %81, i32 %82, i32 %85)
  %87 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %88 = icmp ne %struct.drm_encoder* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %77
  %90 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %91 = call i32 @ASIC_IS_DCE41(%struct.radeon_device* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %95 = call i32 @ASIC_IS_DCE61(%struct.radeon_device* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93, %89
  %98 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %99 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %100 = load i32, i32* @EXTERNAL_ENCODER_ACTION_V3_ENCODER_SETUP, align 4
  %101 = call i32 @atombios_external_encoder_setup(%struct.drm_encoder* %98, %struct.drm_encoder* %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %93
  br label %103

103:                                              ; preds = %102, %77
  br label %120

104:                                              ; preds = %60
  %105 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %106 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %110 = load i32, i32* @ATOM_ENCODER_CMD_SETUP, align 4
  %111 = call i32 @atombios_dig_encoder_setup(%struct.drm_encoder* %109, i32 %110, i32 0)
  br label %119

112:                                              ; preds = %104
  %113 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %114 = load i32, i32* @ATOM_ENABLE, align 4
  %115 = call i32 @atombios_dig_encoder_setup(%struct.drm_encoder* %113, i32 %114, i32 0)
  %116 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %117 = load i32, i32* @ATOM_TRANSMITTER_ACTION_SETUP, align 4
  %118 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %116, i32 %117, i32 0, i32 0)
  br label %119

119:                                              ; preds = %112, %108
  br label %120

120:                                              ; preds = %119, %103
  %121 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %122 = call i32 @atombios_get_encoder_mode(%struct.drm_encoder* %121)
  %123 = call i32 @ENCODER_MODE_IS_DP(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %127 = icmp ne %struct.drm_connector* %126, null
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %130 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @DRM_MODE_CONNECTOR_eDP, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %136 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_ON, align 4
  %137 = call i32 @atombios_set_edp_panel_power(%struct.drm_connector* %135, i32 %136)
  %138 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %12, align 8
  %139 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %138, i32 0, i32 0
  store i32 1, i32* %139, align 4
  br label %140

140:                                              ; preds = %134, %128
  br label %141

141:                                              ; preds = %140, %125, %120
  %142 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %143 = load i32, i32* @ATOM_TRANSMITTER_ACTION_ENABLE, align 4
  %144 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %142, i32 %143, i32 0, i32 0)
  %145 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %146 = call i32 @atombios_get_encoder_mode(%struct.drm_encoder* %145)
  %147 = call i32 @ENCODER_MODE_IS_DP(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %141
  %150 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %151 = icmp ne %struct.drm_connector* %150, null
  br i1 %151, label %152, label %164

152:                                              ; preds = %149
  %153 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %154 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %155 = call i32 @radeon_dp_link_train(%struct.drm_encoder* %153, %struct.drm_connector* %154)
  %156 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %157 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %161 = load i32, i32* @ATOM_ENCODER_CMD_DP_VIDEO_ON, align 4
  %162 = call i32 @atombios_dig_encoder_setup(%struct.drm_encoder* %160, i32 %161, i32 0)
  br label %163

163:                                              ; preds = %159, %152
  br label %164

164:                                              ; preds = %163, %149, %141
  %165 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %166 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %188

171:                                              ; preds = %164
  %172 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %173 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %171
  %178 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %179 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %180 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @atombios_set_backlight_level(%struct.radeon_encoder* %178, i32 %181)
  br label %187

183:                                              ; preds = %171
  %184 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %185 = load i32, i32* @ATOM_TRANSMITTER_ACTION_LCD_BLON, align 4
  %186 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %184, i32 %185, i32 0, i32 0)
  br label %187

187:                                              ; preds = %183, %177
  br label %188

188:                                              ; preds = %187, %164
  %189 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %190 = icmp ne %struct.drm_encoder* %189, null
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %193 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %194 = load i32, i32* @ATOM_ENABLE, align 4
  %195 = call i32 @atombios_external_encoder_setup(%struct.drm_encoder* %192, %struct.drm_encoder* %193, i32 %194)
  br label %196

196:                                              ; preds = %191, %188
  br label %298

197:                                              ; preds = %54, %54, %54
  %198 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %199 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %298

203:                                              ; preds = %197
  %204 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %205 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %220

207:                                              ; preds = %203
  %208 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %209 = call i32 @atombios_get_encoder_mode(%struct.drm_encoder* %208)
  %210 = call i32 @ENCODER_MODE_IS_DP(i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %207
  %213 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %214 = icmp ne %struct.drm_connector* %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %217 = load i32, i32* @ATOM_ENCODER_CMD_DP_VIDEO_OFF, align 4
  %218 = call i32 @atombios_dig_encoder_setup(%struct.drm_encoder* %216, i32 %217, i32 0)
  br label %219

219:                                              ; preds = %215, %212, %207
  br label %220

220:                                              ; preds = %219, %203
  %221 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %222 = icmp ne %struct.drm_encoder* %221, null
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %225 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %226 = load i32, i32* @ATOM_DISABLE, align 4
  %227 = call i32 @atombios_external_encoder_setup(%struct.drm_encoder* %224, %struct.drm_encoder* %225, i32 %226)
  br label %228

228:                                              ; preds = %223, %220
  %229 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %230 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %228
  %236 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %237 = load i32, i32* @ATOM_TRANSMITTER_ACTION_LCD_BLOFF, align 4
  %238 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %236, i32 %237, i32 0, i32 0)
  br label %239

239:                                              ; preds = %235, %228
  %240 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %241 = call i32 @atombios_get_encoder_mode(%struct.drm_encoder* %240)
  %242 = call i32 @ENCODER_MODE_IS_DP(i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %254

244:                                              ; preds = %239
  %245 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %246 = icmp ne %struct.drm_connector* %245, null
  br i1 %246, label %247, label %254

247:                                              ; preds = %244
  %248 = load i32, i32* %13, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %247
  %251 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %252 = load i32, i32* @DP_SET_POWER_D3, align 4
  %253 = call i32 @radeon_dp_set_rx_power_state(%struct.drm_connector* %251, i32 %252)
  br label %254

254:                                              ; preds = %250, %247, %244, %239
  %255 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %256 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %254
  %259 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %260 = load i32, i32* @ATOM_TRANSMITTER_ACTION_DISABLE, align 4
  %261 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %259, i32 %260, i32 0, i32 0)
  br label %269

262:                                              ; preds = %254
  %263 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %264 = load i32, i32* @ATOM_TRANSMITTER_ACTION_DISABLE, align 4
  %265 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %263, i32 %264, i32 0, i32 0)
  %266 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %267 = load i32, i32* @ATOM_DISABLE, align 4
  %268 = call i32 @atombios_dig_encoder_setup(%struct.drm_encoder* %266, i32 %267, i32 0)
  br label %269

269:                                              ; preds = %262, %258
  %270 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %271 = call i32 @atombios_get_encoder_mode(%struct.drm_encoder* %270)
  %272 = call i32 @ENCODER_MODE_IS_DP(i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %297

274:                                              ; preds = %269
  %275 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %276 = icmp ne %struct.drm_connector* %275, null
  br i1 %276, label %277, label %297

277:                                              ; preds = %274
  %278 = load i32, i32* %13, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %282 = load i32, i32* @DP_SET_POWER_D3, align 4
  %283 = call i32 @radeon_dp_set_rx_power_state(%struct.drm_connector* %281, i32 %282)
  br label %284

284:                                              ; preds = %280, %277
  %285 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %286 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @DRM_MODE_CONNECTOR_eDP, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %296

290:                                              ; preds = %284
  %291 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %292 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_OFF, align 4
  %293 = call i32 @atombios_set_edp_panel_power(%struct.drm_connector* %291, i32 %292)
  %294 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %12, align 8
  %295 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %294, i32 0, i32 0
  store i32 0, i32* %295, align 4
  br label %296

296:                                              ; preds = %290, %284
  br label %297

297:                                              ; preds = %296, %274, %269
  br label %298

298:                                              ; preds = %202, %54, %297, %196
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_encoder* @radeon_get_external_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector*) #1

declare dso_local i64 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i32 @ASIC_IS_DCE41(%struct.radeon_device*) #1

declare dso_local i32 @radeon_dp_get_panel_mode(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local i32 @atombios_dig_encoder_setup(%struct.drm_encoder*, i32, i32) #1

declare dso_local i32 @ASIC_IS_DCE61(%struct.radeon_device*) #1

declare dso_local i32 @atombios_external_encoder_setup(%struct.drm_encoder*, %struct.drm_encoder*, i32) #1

declare dso_local i32 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @atombios_dig_transmitter_setup(%struct.drm_encoder*, i32, i32, i32) #1

declare dso_local i32 @ENCODER_MODE_IS_DP(i32) #1

declare dso_local i32 @atombios_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @atombios_set_edp_panel_power(%struct.drm_connector*, i32) #1

declare dso_local i32 @radeon_dp_link_train(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local i32 @atombios_set_backlight_level(%struct.radeon_encoder*, i32) #1

declare dso_local i32 @radeon_dp_set_rx_power_state(%struct.drm_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
