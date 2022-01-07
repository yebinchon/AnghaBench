; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_setup_external_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_setup_external_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.amdgpu_encoder = type { i32, i32 }
%union.external_encoder_control = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i8*, i8*, i8* }
%struct.drm_connector = type { i32 }
%struct.amdgpu_connector = type { i32, %struct.amdgpu_connector_atom_dig* }
%struct.amdgpu_connector_atom_dig = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i8*, i8* }

@COMMAND = common dso_local global i32 0, align 4
@ExternalEncoderControl = common dso_local global i32 0, align 4
@ENUM_ID_MASK = common dso_local global i32 0, align 4
@ENUM_ID_SHIFT = common dso_local global i32 0, align 4
@EXTERNAL_ENCODER_ACTION_V3_ENCODER_INIT = common dso_local global i32 0, align 4
@OBJECT_ID_MASK = common dso_local global i32 0, align 4
@OBJECT_ID_SHIFT = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_DPLINKRATE_2_70GHZ = common dso_local global i32 0, align 4
@EXTERNAL_ENCODER_CONFIG_V3_DPLINKRATE_2_70GHZ = common dso_local global i32 0, align 4
@EXTERNAL_ENCODER_CONFIG_V3_DPLINKRATE_5_40GHZ = common dso_local global i32 0, align 4
@EXTERNAL_ENCODER_CONFIG_V3_ENCODER1 = common dso_local global i32 0, align 4
@EXTERNAL_ENCODER_CONFIG_V3_ENCODER2 = common dso_local global i32 0, align 4
@EXTERNAL_ENCODER_CONFIG_V3_ENCODER3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unknown table version: %d, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_encoder*, i32)* @amdgpu_atombios_encoder_setup_external_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_atombios_encoder_setup_external_encoder(%struct.drm_encoder* %0, %struct.drm_encoder* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_encoder*, align 8
  %10 = alloca %struct.amdgpu_encoder*, align 8
  %11 = alloca %union.external_encoder_control, align 8
  %12 = alloca %struct.drm_connector*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.amdgpu_connector*, align 8
  %21 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %23 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %22, i32 0, i32 0
  %24 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  store %struct.drm_device* %24, %struct.drm_device** %7, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %26, align 8
  store %struct.amdgpu_device* %27, %struct.amdgpu_device** %8, align 8
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %29 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %28)
  store %struct.amdgpu_encoder* %29, %struct.amdgpu_encoder** %9, align 8
  %30 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %31 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %30)
  store %struct.amdgpu_encoder* %31, %struct.amdgpu_encoder** %10, align 8
  %32 = load i32, i32* @COMMAND, align 4
  %33 = load i32, i32* @ExternalEncoderControl, align 4
  %34 = call i32 @GetIndexIntoMasterTable(i32 %32, i32 %33)
  store i32 %34, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %35 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %36 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ENUM_ID_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @ENUM_ID_SHIFT, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @EXTERNAL_ENCODER_ACTION_V3_ENCODER_INIT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %3
  %46 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %47 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder_init(%struct.drm_encoder* %46)
  store %struct.drm_connector* %47, %struct.drm_connector** %12, align 8
  br label %51

48:                                               ; preds = %3
  %49 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %50 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder* %49)
  store %struct.drm_connector* %50, %struct.drm_connector** %12, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.drm_connector*, %struct.drm_connector** %12, align 8
  %53 = icmp ne %struct.drm_connector* %52, null
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load %struct.drm_connector*, %struct.drm_connector** %12, align 8
  %56 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %55)
  store %struct.amdgpu_connector* %56, %struct.amdgpu_connector** %20, align 8
  %57 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %20, align 8
  %58 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %57, i32 0, i32 1
  %59 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %58, align 8
  store %struct.amdgpu_connector_atom_dig* %59, %struct.amdgpu_connector_atom_dig** %21, align 8
  %60 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %21, align 8
  %61 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %16, align 4
  %63 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %21, align 8
  %64 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %17, align 4
  %66 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %20, align 8
  %67 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @OBJECT_ID_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @OBJECT_ID_SHIFT, align 4
  %72 = ashr i32 %70, %71
  store i32 %72, i32* %18, align 4
  br label %73

73:                                               ; preds = %54, %51
  %74 = call i32 @memset(%union.external_encoder_control* %11, i32 0, i32 40)
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @amdgpu_atom_parse_cmd_header(i32 %78, i32 %79, i32* %14, i32* %15)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  br label %267

83:                                               ; preds = %73
  %84 = load i32, i32* %14, align 4
  switch i32 %84, label %255 [
    i32 1, label %85
    i32 2, label %86
  ]

85:                                               ; preds = %83
  br label %259

86:                                               ; preds = %83
  %87 = load i32, i32* %15, align 4
  switch i32 %87, label %250 [
    i32 1, label %88
    i32 2, label %88
    i32 3, label %144
  ]

88:                                               ; preds = %86, %86
  %89 = load i32, i32* %6, align 4
  %90 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_7__*
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %94 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sdiv i32 %95, 10
  %97 = call i8* @cpu_to_le16(i32 %96)
  %98 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_7__*
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  store i8* %97, i8** %100, align 8
  %101 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %102 = call i8* @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %101)
  %103 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_7__*
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  store i8* %102, i8** %105, align 8
  %106 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_7__*
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @ENCODER_MODE_IS_DP(i8* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %88
  %113 = load i32, i32* %16, align 4
  %114 = icmp eq i32 %113, 270000
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i32, i32* @ATOM_ENCODER_CONFIG_DPLINKRATE_2_70GHZ, align 4
  %117 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_7__*
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %116
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %115, %112
  %123 = load i32, i32* %17, align 4
  %124 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_7__*
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  br label %143

127:                                              ; preds = %88
  %128 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %129 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %130 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %128, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_7__*
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  store i32 8, i32* %137, align 4
  br label %142

138:                                              ; preds = %127
  %139 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_7__*
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  store i32 4, i32* %141, align 4
  br label %142

142:                                              ; preds = %138, %134
  br label %143

143:                                              ; preds = %142, %122
  br label %254

144:                                              ; preds = %86
  %145 = load i32, i32* %6, align 4
  %146 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_9__*
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 8
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @EXTERNAL_ENCODER_ACTION_V3_ENCODER_INIT, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load i32, i32* %18, align 4
  %154 = call i8* @cpu_to_le16(i32 %153)
  %155 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_9__*
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 6
  store i8* %154, i8** %157, align 8
  br label %167

158:                                              ; preds = %144
  %159 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %160 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sdiv i32 %161, 10
  %163 = call i8* @cpu_to_le16(i32 %162)
  %164 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_9__*
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 5
  store i8* %163, i8** %166, align 8
  br label %167

167:                                              ; preds = %158, %152
  %168 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %169 = call i8* @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %168)
  %170 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_9__*
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 4
  store i8* %169, i8** %172, align 8
  %173 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_9__*
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 4
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @ENCODER_MODE_IS_DP(i8* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %205

179:                                              ; preds = %167
  %180 = load i32, i32* %16, align 4
  %181 = icmp eq i32 %180, 270000
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load i32, i32* @EXTERNAL_ENCODER_CONFIG_V3_DPLINKRATE_2_70GHZ, align 4
  %184 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_9__*
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %183
  store i32 %188, i32* %186, align 4
  br label %200

189:                                              ; preds = %179
  %190 = load i32, i32* %16, align 4
  %191 = icmp eq i32 %190, 540000
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = load i32, i32* @EXTERNAL_ENCODER_CONFIG_V3_DPLINKRATE_5_40GHZ, align 4
  %194 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_9__*
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %193
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %192, %189
  br label %200

200:                                              ; preds = %199, %182
  %201 = load i32, i32* %17, align 4
  %202 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_9__*
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  store i32 %201, i32* %204, align 4
  br label %221

205:                                              ; preds = %167
  %206 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %207 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %208 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %206, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %205
  %213 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_9__*
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  store i32 8, i32* %215, align 4
  br label %220

216:                                              ; preds = %205
  %217 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_9__*
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  store i32 4, i32* %219, align 4
  br label %220

220:                                              ; preds = %216, %212
  br label %221

221:                                              ; preds = %220, %200
  %222 = load i32, i32* %19, align 4
  switch i32 %222, label %244 [
    i32 130, label %223
    i32 129, label %230
    i32 128, label %237
  ]

223:                                              ; preds = %221
  %224 = load i32, i32* @EXTERNAL_ENCODER_CONFIG_V3_ENCODER1, align 4
  %225 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_9__*
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %224
  store i32 %229, i32* %227, align 4
  br label %244

230:                                              ; preds = %221
  %231 = load i32, i32* @EXTERNAL_ENCODER_CONFIG_V3_ENCODER2, align 4
  %232 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_9__*
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, %231
  store i32 %236, i32* %234, align 4
  br label %244

237:                                              ; preds = %221
  %238 = load i32, i32* @EXTERNAL_ENCODER_CONFIG_V3_ENCODER3, align 4
  %239 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_9__*
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %238
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %221, %237, %230, %223
  %245 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %246 = call i32 @amdgpu_atombios_encoder_get_bpc(%struct.drm_encoder* %245)
  %247 = bitcast %union.external_encoder_control* %11 to %struct.TYPE_9__*
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  store i32 %246, i32* %249, align 8
  br label %254

250:                                              ; preds = %86
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* %15, align 4
  %253 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %251, i32 %252)
  br label %267

254:                                              ; preds = %244, %143
  br label %259

255:                                              ; preds = %83
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* %15, align 4
  %258 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %256, i32 %257)
  br label %267

259:                                              ; preds = %254, %85
  %260 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %261 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %13, align 4
  %265 = bitcast %union.external_encoder_control* %11 to i32*
  %266 = call i32 @amdgpu_atom_execute_table(i32 %263, i32 %264, i32* %265)
  br label %267

267:                                              ; preds = %259, %255, %250, %82
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder_init(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @memset(%union.external_encoder_control*, i32, i32) #1

declare dso_local i32 @amdgpu_atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @ENCODER_MODE_IS_DP(i8*) #1

declare dso_local i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder*, i32) #1

declare dso_local i32 @amdgpu_atombios_encoder_get_bpc(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @amdgpu_atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
