; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_setup_dig_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_setup_dig_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.amdgpu_encoder = type { i32, i32, %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { i32, i32 }
%struct.drm_connector = type { i32 }
%union.dig_encoder_control = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i8*, i32, i8* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.amdgpu_connector = type { %struct.TYPE_21__, %struct.amdgpu_connector_atom_dig* }
%struct.TYPE_21__ = type { i32 }
%struct.amdgpu_connector_atom_dig = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i8*, i8* }
%struct.TYPE_13__ = type { i32, i32, i32, i8*, %struct.TYPE_14__, i8*, i8* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i8*, %struct.TYPE_15__, i8*, i8* }
%struct.TYPE_15__ = type { i32 }

@COMMAND = common dso_local global i32 0, align 4
@DIGxEncoderControl = common dso_local global i32 0, align 4
@AMDGPU_HPD_NONE = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_DPLINKRATE_2_70GHZ = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V2_TRANSMITTER1 = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V2_TRANSMITTER2 = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V2_TRANSMITTER3 = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_LINKB = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_LINKA = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V3_DPLINKRATE_2_70GHZ = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V4_DPLINKRATE_5_40GHZ = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V4_DPLINKRATE_3_24GHZ = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V4_DPLINKRATE_2_70GHZ = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V4_DPLINKRATE_1_62GHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unsupported action 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Unknown table version %d, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_atombios_encoder_setup_dig_encoder(%struct.drm_encoder* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_encoder*, align 8
  %10 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %11 = alloca %struct.drm_connector*, align 8
  %12 = alloca %union.dig_encoder_control, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.amdgpu_connector*, align 8
  %20 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %7, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %25, align 8
  store %struct.amdgpu_device* %26, %struct.amdgpu_device** %8, align 8
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %28 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %27)
  store %struct.amdgpu_encoder* %28, %struct.amdgpu_encoder** %9, align 8
  %29 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %30 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %29, i32 0, i32 2
  %31 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %30, align 8
  store %struct.amdgpu_encoder_atom_dig* %31, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %32 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %33 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder* %32)
  store %struct.drm_connector* %33, %struct.drm_connector** %11, align 8
  %34 = load i32, i32* @COMMAND, align 4
  %35 = load i32, i32* @DIGxEncoderControl, align 4
  %36 = call i32 @GetIndexIntoMasterTable(i32 %34, i32 %35)
  store i32 %36, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %37 = load i32, i32* @AMDGPU_HPD_NONE, align 4
  store i32 %37, i32* %18, align 4
  %38 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %39 = icmp ne %struct.drm_connector* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %3
  %41 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %42 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %41)
  store %struct.amdgpu_connector* %42, %struct.amdgpu_connector** %19, align 8
  %43 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %19, align 8
  %44 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %43, i32 0, i32 1
  %45 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %44, align 8
  store %struct.amdgpu_connector_atom_dig* %45, %struct.amdgpu_connector_atom_dig** %20, align 8
  %46 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %20, align 8
  %47 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %16, align 4
  %49 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %20, align 8
  %50 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %17, align 4
  %52 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %19, align 8
  %53 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %18, align 4
  br label %56

56:                                               ; preds = %40, %3
  %57 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %58 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %465

62:                                               ; preds = %56
  %63 = call i32 @memset(%union.dig_encoder_control* %12, i32 0, i32 64)
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @amdgpu_atom_parse_cmd_header(i32 %67, i32 %68, i32* %14, i32* %15)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %465

72:                                               ; preds = %62
  %73 = load i32, i32* %14, align 4
  switch i32 %73, label %453 [
    i32 1, label %74
  ]

74:                                               ; preds = %72
  %75 = load i32, i32* %15, align 4
  switch i32 %75, label %448 [
    i32 1, label %76
    i32 2, label %171
    i32 3, label %171
    i32 4, label %243
    i32 5, label %354
  ]

76:                                               ; preds = %74
  %77 = load i32, i32* %5, align 4
  %78 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %81 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sdiv i32 %82, 10
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %87, 133
  br i1 %88, label %89, label %93

89:                                               ; preds = %76
  %90 = load i32, i32* %6, align 4
  %91 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_13__*
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %98

93:                                               ; preds = %76
  %94 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %95 = call i8* @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %94)
  %96 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %93, %89
  %99 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @ENCODER_MODE_IS_DP(i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i32, i32* %17, align 4
  %106 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %122

108:                                              ; preds = %98
  %109 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %110 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %111 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %109, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  store i32 8, i32* %117, align 4
  br label %121

118:                                              ; preds = %108
  %119 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  store i32 4, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %104
  %123 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @ENCODER_MODE_IS_DP(i8* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %122
  %129 = load i32, i32* %16, align 4
  %130 = icmp eq i32 %129, 270000
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load i32, i32* @ATOM_ENCODER_CONFIG_DPLINKRATE_2_70GHZ, align 4
  %133 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %131, %128, %122
  %138 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %139 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %153 [
    i32 130, label %141
    i32 129, label %145
    i32 131, label %145
    i32 128, label %149
  ]

141:                                              ; preds = %137
  %142 = load i32, i32* @ATOM_ENCODER_CONFIG_V2_TRANSMITTER1, align 4
  %143 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  br label %153

145:                                              ; preds = %137, %137
  %146 = load i32, i32* @ATOM_ENCODER_CONFIG_V2_TRANSMITTER2, align 4
  %147 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  br label %153

149:                                              ; preds = %137
  %150 = load i32, i32* @ATOM_ENCODER_CONFIG_V2_TRANSMITTER3, align 4
  %151 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %137, %149, %145, %141
  %154 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %155 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load i32, i32* @ATOM_ENCODER_CONFIG_LINKB, align 4
  %160 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %170

164:                                              ; preds = %153
  %165 = load i32, i32* @ATOM_ENCODER_CONFIG_LINKA, align 4
  %166 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %164, %158
  br label %452

171:                                              ; preds = %74, %74
  %172 = load i32, i32* %5, align 4
  %173 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_13__*
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %176 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sdiv i32 %177, 10
  %179 = call i8* @cpu_to_le16(i32 %178)
  %180 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_13__*
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 6
  store i8* %179, i8** %181, align 8
  %182 = load i32, i32* %5, align 4
  %183 = icmp eq i32 %182, 133
  br i1 %183, label %184, label %188

184:                                              ; preds = %171
  %185 = load i32, i32* %6, align 4
  %186 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_13__*
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  br label %193

188:                                              ; preds = %171
  %189 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %190 = call i8* @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %189)
  %191 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_13__*
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 5
  store i8* %190, i8** %192, align 8
  br label %193

193:                                              ; preds = %188, %184
  %194 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_13__*
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 5
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @ENCODER_MODE_IS_DP(i8* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load i32, i32* %17, align 4
  %201 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_13__*
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  br label %217

203:                                              ; preds = %193
  %204 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %205 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %206 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %204, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %203
  %211 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_13__*
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 2
  store i32 8, i32* %212, align 8
  br label %216

213:                                              ; preds = %203
  %214 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_13__*
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 2
  store i32 4, i32* %215, align 8
  br label %216

216:                                              ; preds = %213, %210
  br label %217

217:                                              ; preds = %216, %199
  %218 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_13__*
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 5
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @ENCODER_MODE_IS_DP(i8* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %217
  %224 = load i32, i32* %16, align 4
  %225 = icmp eq i32 %224, 270000
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = load i32, i32* @ATOM_ENCODER_CONFIG_V3_DPLINKRATE_2_70GHZ, align 4
  %228 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %226, %223, %217
  %233 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %234 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_13__*
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  store i32 %235, i32* %238, align 8
  %239 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %240 = call i8* @amdgpu_atombios_encoder_get_bpc(%struct.drm_encoder* %239)
  %241 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_13__*
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 3
  store i8* %240, i8** %242, align 8
  br label %452

243:                                              ; preds = %74
  %244 = load i32, i32* %5, align 4
  %245 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_16__*
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %248 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sdiv i32 %249, 10
  %251 = call i8* @cpu_to_le16(i32 %250)
  %252 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_16__*
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 7
  store i8* %251, i8** %253, align 8
  %254 = load i32, i32* %5, align 4
  %255 = icmp eq i32 %254, 133
  br i1 %255, label %256, label %260

256:                                              ; preds = %243
  %257 = load i32, i32* %6, align 4
  %258 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_16__*
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  br label %265

260:                                              ; preds = %243
  %261 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %262 = call i8* @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %261)
  %263 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_16__*
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 6
  store i8* %262, i8** %264, align 8
  br label %265

265:                                              ; preds = %260, %256
  %266 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_16__*
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 6
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @ENCODER_MODE_IS_DP(i8* %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %265
  %272 = load i32, i32* %17, align 4
  %273 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_16__*
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 8
  br label %289

275:                                              ; preds = %265
  %276 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %277 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %278 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %276, i32 %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %275
  %283 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_16__*
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 2
  store i32 8, i32* %284, align 8
  br label %288

285:                                              ; preds = %275
  %286 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_16__*
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 2
  store i32 4, i32* %287, align 8
  br label %288

288:                                              ; preds = %285, %282
  br label %289

289:                                              ; preds = %288, %271
  %290 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_16__*
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 6
  %292 = load i8*, i8** %291, align 8
  %293 = call i32 @ENCODER_MODE_IS_DP(i8* %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %331

295:                                              ; preds = %289
  %296 = load i32, i32* %16, align 4
  %297 = icmp eq i32 %296, 540000
  br i1 %297, label %298, label %304

298:                                              ; preds = %295
  %299 = load i32, i32* @ATOM_ENCODER_CONFIG_V4_DPLINKRATE_5_40GHZ, align 4
  %300 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 8
  br label %330

304:                                              ; preds = %295
  %305 = load i32, i32* %16, align 4
  %306 = icmp eq i32 %305, 324000
  br i1 %306, label %307, label %313

307:                                              ; preds = %304
  %308 = load i32, i32* @ATOM_ENCODER_CONFIG_V4_DPLINKRATE_3_24GHZ, align 4
  %309 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = or i32 %311, %308
  store i32 %312, i32* %310, align 8
  br label %329

313:                                              ; preds = %304
  %314 = load i32, i32* %16, align 4
  %315 = icmp eq i32 %314, 270000
  br i1 %315, label %316, label %322

316:                                              ; preds = %313
  %317 = load i32, i32* @ATOM_ENCODER_CONFIG_V4_DPLINKRATE_2_70GHZ, align 4
  %318 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 8
  br label %328

322:                                              ; preds = %313
  %323 = load i32, i32* @ATOM_ENCODER_CONFIG_V4_DPLINKRATE_1_62GHZ, align 4
  %324 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_12__*
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = or i32 %326, %323
  store i32 %327, i32* %325, align 8
  br label %328

328:                                              ; preds = %322, %316
  br label %329

329:                                              ; preds = %328, %307
  br label %330

330:                                              ; preds = %329, %298
  br label %331

331:                                              ; preds = %330, %289
  %332 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %333 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_16__*
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 5
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i32 0, i32 0
  store i32 %334, i32* %337, align 8
  %338 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %339 = call i8* @amdgpu_atombios_encoder_get_bpc(%struct.drm_encoder* %338)
  %340 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_16__*
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 4
  store i8* %339, i8** %341, align 8
  %342 = load i32, i32* %18, align 4
  %343 = load i32, i32* @AMDGPU_HPD_NONE, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %348

345:                                              ; preds = %331
  %346 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_16__*
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 3
  store i32 0, i32* %347, align 4
  br label %353

348:                                              ; preds = %331
  %349 = load i32, i32* %18, align 4
  %350 = add nsw i32 %349, 1
  %351 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_16__*
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 3
  store i32 %350, i32* %352, align 4
  br label %353

353:                                              ; preds = %348, %345
  br label %452

354:                                              ; preds = %74
  %355 = load i32, i32* %5, align 4
  switch i32 %355, label %444 [
    i32 133, label %356
    i32 132, label %371
    i32 136, label %433
    i32 140, label %433
    i32 139, label %433
    i32 138, label %433
    i32 137, label %433
    i32 141, label %433
    i32 135, label %433
    i32 134, label %433
  ]

356:                                              ; preds = %354
  %357 = load i32, i32* %5, align 4
  %358 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_20__*
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %358, i32 0, i32 2
  %360 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %359, i32 0, i32 0
  store i32 %357, i32* %360, align 8
  %361 = load i32, i32* %6, align 4
  %362 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_20__*
  %363 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 1
  store i32 %361, i32* %364, align 4
  %365 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %366 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_20__*
  %369 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %369, i32 0, i32 2
  store i32 %367, i32* %370, align 8
  br label %447

371:                                              ; preds = %354
  %372 = load i32, i32* %5, align 4
  %373 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_20__*
  %374 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %374, i32 0, i32 0
  store i32 %372, i32* %375, align 8
  %376 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %377 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_20__*
  %380 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %380, i32 0, i32 1
  store i32 %378, i32* %381, align 4
  %382 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %383 = call i8* @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %382)
  %384 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_20__*
  %385 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %385, i32 0, i32 6
  store i8* %383, i8** %386, align 8
  %387 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_20__*
  %388 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %388, i32 0, i32 6
  %390 = load i8*, i8** %389, align 8
  %391 = call i32 @ENCODER_MODE_IS_DP(i8* %390)
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %398

393:                                              ; preds = %371
  %394 = load i32, i32* %17, align 4
  %395 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_20__*
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %396, i32 0, i32 2
  store i32 %394, i32* %397, align 8
  br label %414

398:                                              ; preds = %371
  %399 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %400 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %401 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %399, i32 %402)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %409

405:                                              ; preds = %398
  %406 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_20__*
  %407 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %407, i32 0, i32 2
  store i32 8, i32* %408, align 8
  br label %413

409:                                              ; preds = %398
  %410 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_20__*
  %411 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %411, i32 0, i32 2
  store i32 4, i32* %412, align 8
  br label %413

413:                                              ; preds = %409, %405
  br label %414

414:                                              ; preds = %413, %393
  %415 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %416 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = sdiv i32 %417, 10
  %419 = call i32 @cpu_to_le32(i32 %418)
  %420 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_20__*
  %421 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %421, i32 0, i32 5
  store i32 %419, i32* %422, align 8
  %423 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %424 = call i8* @amdgpu_atombios_encoder_get_bpc(%struct.drm_encoder* %423)
  %425 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_20__*
  %426 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %426, i32 0, i32 4
  store i8* %424, i8** %427, align 8
  %428 = load i32, i32* %16, align 4
  %429 = sdiv i32 %428, 27000
  %430 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_20__*
  %431 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %431, i32 0, i32 3
  store i32 %429, i32* %432, align 4
  br label %447

433:                                              ; preds = %354, %354, %354, %354, %354, %354, %354, %354
  %434 = load i32, i32* %5, align 4
  %435 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_20__*
  %436 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %436, i32 0, i32 0
  store i32 %434, i32* %437, align 8
  %438 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %439 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = bitcast %union.dig_encoder_control* %12 to %struct.TYPE_20__*
  %442 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %442, i32 0, i32 1
  store i32 %440, i32* %443, align 4
  br label %447

444:                                              ; preds = %354
  %445 = load i32, i32* %5, align 4
  %446 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %445)
  br label %447

447:                                              ; preds = %444, %433, %414, %356
  br label %452

448:                                              ; preds = %74
  %449 = load i32, i32* %14, align 4
  %450 = load i32, i32* %15, align 4
  %451 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %449, i32 %450)
  br label %452

452:                                              ; preds = %448, %447, %353, %232, %170
  br label %457

453:                                              ; preds = %72
  %454 = load i32, i32* %14, align 4
  %455 = load i32, i32* %15, align 4
  %456 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %454, i32 %455)
  br label %457

457:                                              ; preds = %453, %452
  %458 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %459 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* %13, align 4
  %463 = bitcast %union.dig_encoder_control* %12 to i32*
  %464 = call i32 @amdgpu_atom_execute_table(i32 %461, i32 %462, i32* %463)
  br label %465

465:                                              ; preds = %457, %71, %61
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @memset(%union.dig_encoder_control*, i32, i32) #1

declare dso_local i32 @amdgpu_atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @ENCODER_MODE_IS_DP(i8*) #1

declare dso_local i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder*, i32) #1

declare dso_local i8* @amdgpu_atombios_encoder_get_bpc(%struct.drm_encoder*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @amdgpu_atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
