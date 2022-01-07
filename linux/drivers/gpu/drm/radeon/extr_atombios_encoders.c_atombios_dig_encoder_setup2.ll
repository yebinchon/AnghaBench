; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_dig_encoder_setup2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_dig_encoder_setup2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.radeon_encoder = type { i32, i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32, i32 }
%struct.drm_connector = type { i32 }
%union.dig_encoder_control = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i8*, %struct.TYPE_8__, i8*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.radeon_connector = type { %struct.TYPE_9__, %struct.radeon_connector_atom_dig* }
%struct.TYPE_9__ = type { i32 }
%struct.radeon_connector_atom_dig = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i8*, i8* }
%struct.TYPE_13__ = type { i32, i32, i32, i8*, %struct.TYPE_12__, i8*, i8* }
%struct.TYPE_12__ = type { i32 }

@RADEON_HPD_NONE = common dso_local global i32 0, align 4
@COMMAND = common dso_local global i32 0, align 4
@DIGxEncoderControl = common dso_local global i32 0, align 4
@DIG2EncoderControl = common dso_local global i32 0, align 4
@DIG1EncoderControl = common dso_local global i32 0, align 4
@ATOM_ENCODER_CMD_SETUP_PANEL_MODE = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V2_TRANSMITTER1 = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V2_TRANSMITTER2 = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V2_TRANSMITTER3 = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_LINKB = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_LINKA = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_DPLINKRATE_2_70GHZ = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V3_DPLINKRATE_2_70GHZ = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V4_DPLINKRATE_5_40GHZ = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V4_DPLINKRATE_3_24GHZ = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V4_DPLINKRATE_2_70GHZ = common dso_local global i32 0, align 4
@ATOM_ENCODER_CONFIG_V4_DPLINKRATE_1_62GHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown table version %d, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atombios_dig_encoder_setup2(%struct.drm_encoder* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.radeon_device*, align 8
  %11 = alloca %struct.radeon_encoder*, align 8
  %12 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %13 = alloca %struct.drm_connector*, align 8
  %14 = alloca %union.dig_encoder_control, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.radeon_connector*, align 8
  %22 = alloca %struct.radeon_connector_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %24 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %23, i32 0, i32 0
  %25 = load %struct.drm_device*, %struct.drm_device** %24, align 8
  store %struct.drm_device* %25, %struct.drm_device** %9, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load %struct.radeon_device*, %struct.radeon_device** %27, align 8
  store %struct.radeon_device* %28, %struct.radeon_device** %10, align 8
  %29 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %30 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %29)
  store %struct.radeon_encoder* %30, %struct.radeon_encoder** %11, align 8
  %31 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %32 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %31, i32 0, i32 2
  %33 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %32, align 8
  store %struct.radeon_encoder_atom_dig* %33, %struct.radeon_encoder_atom_dig** %12, align 8
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %35 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %34)
  store %struct.drm_connector* %35, %struct.drm_connector** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %36 = load i32, i32* @RADEON_HPD_NONE, align 4
  store i32 %36, i32* %20, align 4
  %37 = load %struct.drm_connector*, %struct.drm_connector** %13, align 8
  %38 = icmp ne %struct.drm_connector* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %4
  %40 = load %struct.drm_connector*, %struct.drm_connector** %13, align 8
  %41 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %40)
  store %struct.radeon_connector* %41, %struct.radeon_connector** %21, align 8
  %42 = load %struct.radeon_connector*, %struct.radeon_connector** %21, align 8
  %43 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %42, i32 0, i32 1
  %44 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %43, align 8
  store %struct.radeon_connector_atom_dig* %44, %struct.radeon_connector_atom_dig** %22, align 8
  %45 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %22, align 8
  %46 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %18, align 4
  %48 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %22, align 8
  %49 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %19, align 4
  %51 = load %struct.radeon_connector*, %struct.radeon_connector** %21, align 8
  %52 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %20, align 4
  br label %55

55:                                               ; preds = %39, %4
  %56 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %57 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %413

61:                                               ; preds = %55
  %62 = call i32 @memset(%union.dig_encoder_control* %14, i32 0, i32 48)
  %63 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %64 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @COMMAND, align 4
  %68 = load i32, i32* @DIGxEncoderControl, align 4
  %69 = call i32 @GetIndexIntoMasterTable(i32 %67, i32 %68)
  store i32 %69, i32* %15, align 4
  br label %84

70:                                               ; preds = %61
  %71 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %72 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @COMMAND, align 4
  %77 = load i32, i32* @DIG2EncoderControl, align 4
  %78 = call i32 @GetIndexIntoMasterTable(i32 %76, i32 %77)
  store i32 %78, i32* %15, align 4
  br label %83

79:                                               ; preds = %70
  %80 = load i32, i32* @COMMAND, align 4
  %81 = load i32, i32* @DIG1EncoderControl, align 4
  %82 = call i32 @GetIndexIntoMasterTable(i32 %80, i32 %81)
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %66
  %85 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @atom_parse_cmd_header(i32 %88, i32 %89, i32* %16, i32* %17)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %84
  br label %413

93:                                               ; preds = %84
  %94 = load i32, i32* %16, align 4
  switch i32 %94, label %401 [
    i32 1, label %95
  ]

95:                                               ; preds = %93
  %96 = load i32, i32* %17, align 4
  switch i32 %96, label %396 [
    i32 1, label %97
    i32 2, label %193
    i32 3, label %193
    i32 4, label %275
  ]

97:                                               ; preds = %95
  %98 = load i32, i32* %6, align 4
  %99 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %102 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sdiv i32 %103, 10
  %105 = call i8* @cpu_to_le16(i32 %104)
  %106 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @ATOM_ENCODER_CMD_SETUP_PANEL_MODE, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %97
  %112 = load i32, i32* %7, align 4
  %113 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_13__*
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  br label %120

115:                                              ; preds = %97
  %116 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %117 = call i8* @atombios_get_encoder_mode(%struct.drm_encoder* %116)
  %118 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %115, %111
  %121 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @ENCODER_MODE_IS_DP(i8* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i32, i32* %19, align 4
  %128 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  br label %144

130:                                              ; preds = %120
  %131 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %132 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %133 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %131, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  store i32 8, i32* %139, align 4
  br label %143

140:                                              ; preds = %130
  %141 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  store i32 4, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %137
  br label %144

144:                                              ; preds = %143, %126
  %145 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %146 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %160 [
    i32 130, label %148
    i32 129, label %152
    i32 131, label %152
    i32 128, label %156
  ]

148:                                              ; preds = %144
  %149 = load i32, i32* @ATOM_ENCODER_CONFIG_V2_TRANSMITTER1, align 4
  %150 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  br label %160

152:                                              ; preds = %144, %144
  %153 = load i32, i32* @ATOM_ENCODER_CONFIG_V2_TRANSMITTER2, align 4
  %154 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  br label %160

156:                                              ; preds = %144
  %157 = load i32, i32* @ATOM_ENCODER_CONFIG_V2_TRANSMITTER3, align 4
  %158 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %144, %156, %152, %148
  %161 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %162 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i32, i32* @ATOM_ENCODER_CONFIG_LINKB, align 4
  %167 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %177

171:                                              ; preds = %160
  %172 = load i32, i32* @ATOM_ENCODER_CONFIG_LINKA, align 4
  %173 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %171, %165
  %178 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 3
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @ENCODER_MODE_IS_DP(i8* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %177
  %184 = load i32, i32* %18, align 4
  %185 = icmp eq i32 %184, 270000
  br i1 %185, label %186, label %192

186:                                              ; preds = %183
  %187 = load i32, i32* @ATOM_ENCODER_CONFIG_DPLINKRATE_2_70GHZ, align 4
  %188 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %186, %183, %177
  br label %400

193:                                              ; preds = %95, %95
  %194 = load i32, i32* %6, align 4
  %195 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_13__*
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %198 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sdiv i32 %199, 10
  %201 = call i8* @cpu_to_le16(i32 %200)
  %202 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_13__*
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 6
  store i8* %201, i8** %203, align 8
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* @ATOM_ENCODER_CMD_SETUP_PANEL_MODE, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %193
  %208 = load i32, i32* %7, align 4
  %209 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_13__*
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  br label %216

211:                                              ; preds = %193
  %212 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %213 = call i8* @atombios_get_encoder_mode(%struct.drm_encoder* %212)
  %214 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_13__*
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 5
  store i8* %213, i8** %215, align 8
  br label %216

216:                                              ; preds = %211, %207
  %217 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_13__*
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 5
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @ENCODER_MODE_IS_DP(i8* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load i32, i32* %19, align 4
  %224 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_13__*
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 8
  br label %240

226:                                              ; preds = %216
  %227 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %228 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %229 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %227, i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %226
  %234 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_13__*
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 2
  store i32 8, i32* %235, align 8
  br label %239

236:                                              ; preds = %226
  %237 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_13__*
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 2
  store i32 4, i32* %238, align 8
  br label %239

239:                                              ; preds = %236, %233
  br label %240

240:                                              ; preds = %239, %222
  %241 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_13__*
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 5
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 @ENCODER_MODE_IS_DP(i8* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %240
  %247 = load i32, i32* %18, align 4
  %248 = icmp eq i32 %247, 270000
  br i1 %248, label %249, label %255

249:                                              ; preds = %246
  %250 = load i32, i32* @ATOM_ENCODER_CONFIG_V3_DPLINKRATE_2_70GHZ, align 4
  %251 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 8
  br label %255

255:                                              ; preds = %249, %246, %240
  %256 = load i32, i32* %8, align 4
  %257 = icmp ne i32 %256, -1
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = load i32, i32* %8, align 4
  %260 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_13__*
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  store i32 %259, i32* %262, align 8
  br label %270

263:                                              ; preds = %255
  %264 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %265 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_13__*
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 0
  store i32 %266, i32* %269, align 8
  br label %270

270:                                              ; preds = %263, %258
  %271 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %272 = call i8* @radeon_atom_get_bpc(%struct.drm_encoder* %271)
  %273 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_13__*
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 3
  store i8* %272, i8** %274, align 8
  br label %400

275:                                              ; preds = %95
  %276 = load i32, i32* %6, align 4
  %277 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_14__*
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  store i32 %276, i32* %278, align 8
  %279 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %280 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = sdiv i32 %281, 10
  %283 = call i8* @cpu_to_le16(i32 %282)
  %284 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_14__*
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 7
  store i8* %283, i8** %285, align 8
  %286 = load i32, i32* %6, align 4
  %287 = load i32, i32* @ATOM_ENCODER_CMD_SETUP_PANEL_MODE, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %293

289:                                              ; preds = %275
  %290 = load i32, i32* %7, align 4
  %291 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_14__*
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 1
  store i32 %290, i32* %292, align 4
  br label %298

293:                                              ; preds = %275
  %294 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %295 = call i8* @atombios_get_encoder_mode(%struct.drm_encoder* %294)
  %296 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_14__*
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 6
  store i8* %295, i8** %297, align 8
  br label %298

298:                                              ; preds = %293, %289
  %299 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_14__*
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 6
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @ENCODER_MODE_IS_DP(i8* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %298
  %305 = load i32, i32* %19, align 4
  %306 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_14__*
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 2
  store i32 %305, i32* %307, align 8
  br label %322

308:                                              ; preds = %298
  %309 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %310 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %311 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %309, i32 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %308
  %316 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_14__*
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 2
  store i32 8, i32* %317, align 8
  br label %321

318:                                              ; preds = %308
  %319 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_14__*
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 2
  store i32 4, i32* %320, align 8
  br label %321

321:                                              ; preds = %318, %315
  br label %322

322:                                              ; preds = %321, %304
  %323 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_14__*
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 6
  %325 = load i8*, i8** %324, align 8
  %326 = call i32 @ENCODER_MODE_IS_DP(i8* %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %364

328:                                              ; preds = %322
  %329 = load i32, i32* %18, align 4
  %330 = icmp eq i32 %329, 540000
  br i1 %330, label %331, label %337

331:                                              ; preds = %328
  %332 = load i32, i32* @ATOM_ENCODER_CONFIG_V4_DPLINKRATE_5_40GHZ, align 4
  %333 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = or i32 %335, %332
  store i32 %336, i32* %334, align 8
  br label %363

337:                                              ; preds = %328
  %338 = load i32, i32* %18, align 4
  %339 = icmp eq i32 %338, 324000
  br i1 %339, label %340, label %346

340:                                              ; preds = %337
  %341 = load i32, i32* @ATOM_ENCODER_CONFIG_V4_DPLINKRATE_3_24GHZ, align 4
  %342 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = or i32 %344, %341
  store i32 %345, i32* %343, align 8
  br label %362

346:                                              ; preds = %337
  %347 = load i32, i32* %18, align 4
  %348 = icmp eq i32 %347, 270000
  br i1 %348, label %349, label %355

349:                                              ; preds = %346
  %350 = load i32, i32* @ATOM_ENCODER_CONFIG_V4_DPLINKRATE_2_70GHZ, align 4
  %351 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = or i32 %353, %350
  store i32 %354, i32* %352, align 8
  br label %361

355:                                              ; preds = %346
  %356 = load i32, i32* @ATOM_ENCODER_CONFIG_V4_DPLINKRATE_1_62GHZ, align 4
  %357 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_11__*
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = or i32 %359, %356
  store i32 %360, i32* %358, align 8
  br label %361

361:                                              ; preds = %355, %349
  br label %362

362:                                              ; preds = %361, %340
  br label %363

363:                                              ; preds = %362, %331
  br label %364

364:                                              ; preds = %363, %322
  %365 = load i32, i32* %8, align 4
  %366 = icmp ne i32 %365, -1
  br i1 %366, label %367, label %372

367:                                              ; preds = %364
  %368 = load i32, i32* %8, align 4
  %369 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_14__*
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 5
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 0
  store i32 %368, i32* %371, align 8
  br label %379

372:                                              ; preds = %364
  %373 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %374 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_14__*
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 5
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 0
  store i32 %375, i32* %378, align 8
  br label %379

379:                                              ; preds = %372, %367
  %380 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %381 = call i8* @radeon_atom_get_bpc(%struct.drm_encoder* %380)
  %382 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_14__*
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %382, i32 0, i32 4
  store i8* %381, i8** %383, align 8
  %384 = load i32, i32* %20, align 4
  %385 = load i32, i32* @RADEON_HPD_NONE, align 4
  %386 = icmp eq i32 %384, %385
  br i1 %386, label %387, label %390

387:                                              ; preds = %379
  %388 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_14__*
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 3
  store i32 0, i32* %389, align 4
  br label %395

390:                                              ; preds = %379
  %391 = load i32, i32* %20, align 4
  %392 = add nsw i32 %391, 1
  %393 = bitcast %union.dig_encoder_control* %14 to %struct.TYPE_14__*
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 3
  store i32 %392, i32* %394, align 4
  br label %395

395:                                              ; preds = %390, %387
  br label %400

396:                                              ; preds = %95
  %397 = load i32, i32* %16, align 4
  %398 = load i32, i32* %17, align 4
  %399 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %397, i32 %398)
  br label %400

400:                                              ; preds = %396, %395, %270, %192
  br label %405

401:                                              ; preds = %93
  %402 = load i32, i32* %16, align 4
  %403 = load i32, i32* %17, align 4
  %404 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %402, i32 %403)
  br label %405

405:                                              ; preds = %401, %400
  %406 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %407 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* %15, align 4
  %411 = bitcast %union.dig_encoder_control* %14 to i32*
  %412 = call i32 @atom_execute_table(i32 %409, i32 %410, i32* %411)
  br label %413

413:                                              ; preds = %405, %92, %60
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @memset(%union.dig_encoder_control*, i32, i32) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @atombios_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @ENCODER_MODE_IS_DP(i8*) #1

declare dso_local i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder*, i32) #1

declare dso_local i8* @radeon_atom_get_bpc(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
