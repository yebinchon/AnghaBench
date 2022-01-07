; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_setup_dig_transmitter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_setup_dig_transmitter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i64, %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_25__, %struct.TYPE_21__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.amdgpu_encoder = type { i32, i32, i32, %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { i32, i32, i32 }
%struct.drm_connector = type { i32 }
%union.dig_transmitter_control = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, %struct.TYPE_22__, i8*, i8*, i8* }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.amdgpu_connector = type { i32, %struct.TYPE_26__, %struct.amdgpu_connector_atom_dig* }
%struct.TYPE_26__ = type { i32 }
%struct.amdgpu_connector_atom_dig = type { i32, i32 }
%struct.amdgpu_crtc = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i8*, %struct.TYPE_27__, i8* }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__, i8*, %struct.TYPE_29__, i8* }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32, i32, %struct.TYPE_33__, i8*, %struct.TYPE_32__, i8* }
%struct.TYPE_33__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__, i8*, %struct.TYPE_18__, i8* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }

@AMDGPU_HPD_NONE = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_INIT = common dso_local global i32 0, align 4
@OBJECT_ID_MASK = common dso_local global i32 0, align 4
@OBJECT_ID_SHIFT = common dso_local global i32 0, align 4
@COMMAND = common dso_local global i32 0, align 4
@DVOOutputControl = common dso_local global i32 0, align 4
@UNIPHYTransmitterControl = common dso_local global i32 0, align 4
@LVTMATransmitterControl = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_CLKSRC_PPLL = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_DIG2_ENCODER = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_DIG1_ENCODER = common dso_local global i32 0, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_LANE_0_3 = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_LANE_4_7 = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_LANE_8_11 = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_LANE_12_15 = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_LANE_0_7 = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_LANE_8_15 = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_LINKB = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_LINKA = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_COHERENT = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP_SUPPORT = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_CONFIG_8LANE_LINK = common dso_local global i32 0, align 4
@ENCODER_REFCLK_SRC_EXTCLK = common dso_local global i8* null, align 8
@ENCODER_REFCLK_SRC_DCPLL = common dso_local global i32 0, align 4
@ATOM_PHY_ID_UNIPHYB = common dso_local global i8* null, align 8
@ATOM_PHY_ID_UNIPHYA = common dso_local global i8* null, align 8
@ATOM_PHY_ID_UNIPHYD = common dso_local global i8* null, align 8
@ATOM_PHY_ID_UNIPHYC = common dso_local global i8* null, align 8
@ATOM_PHY_ID_UNIPHYF = common dso_local global i8* null, align 8
@ATOM_PHY_ID_UNIPHYE = common dso_local global i8* null, align 8
@ATOM_PHY_ID_UNIPHYG = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unknown table version %d, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_atombios_encoder_setup_dig_transmitter(%struct.drm_encoder* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca %struct.amdgpu_encoder*, align 8
  %12 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %13 = alloca %struct.drm_connector*, align 8
  %14 = alloca %union.dig_transmitter_control, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.amdgpu_connector*, align 8
  %27 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  %28 = alloca %struct.amdgpu_crtc*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %29 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %30 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %29, i32 0, i32 1
  %31 = load %struct.drm_device*, %struct.drm_device** %30, align 8
  store %struct.drm_device* %31, %struct.drm_device** %9, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %33, align 8
  store %struct.amdgpu_device* %34, %struct.amdgpu_device** %10, align 8
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %36 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %35)
  store %struct.amdgpu_encoder* %36, %struct.amdgpu_encoder** %11, align 8
  %37 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %38 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %37, i32 0, i32 3
  %39 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %38, align 8
  store %struct.amdgpu_encoder_atom_dig* %39, %struct.amdgpu_encoder_atom_dig** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %40 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %41 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %24, align 4
  %43 = load i32, i32* @AMDGPU_HPD_NONE, align 4
  store i32 %43, i32* %25, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @ATOM_TRANSMITTER_ACTION_INIT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %4
  %48 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %49 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder_init(%struct.drm_encoder* %48)
  store %struct.drm_connector* %49, %struct.drm_connector** %13, align 8
  store i32 0, i32* %24, align 4
  br label %53

50:                                               ; preds = %4
  %51 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %52 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder* %51)
  store %struct.drm_connector* %52, %struct.drm_connector** %13, align 8
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.drm_connector*, %struct.drm_connector** %13, align 8
  %55 = icmp ne %struct.drm_connector* %54, null
  br i1 %55, label %56, label %79

56:                                               ; preds = %53
  %57 = load %struct.drm_connector*, %struct.drm_connector** %13, align 8
  %58 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %57)
  store %struct.amdgpu_connector* %58, %struct.amdgpu_connector** %26, align 8
  %59 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %26, align 8
  %60 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %59, i32 0, i32 2
  %61 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %60, align 8
  store %struct.amdgpu_connector_atom_dig* %61, %struct.amdgpu_connector_atom_dig** %27, align 8
  %62 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %26, align 8
  %63 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %25, align 4
  %66 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %27, align 8
  %67 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %20, align 4
  %69 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %27, align 8
  %70 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %21, align 4
  %72 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %26, align 8
  %73 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @OBJECT_ID_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @OBJECT_ID_SHIFT, align 4
  %78 = ashr i32 %76, %77
  store i32 %78, i32* %22, align 4
  br label %79

79:                                               ; preds = %56, %53
  %80 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %81 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %86 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(i64 %87)
  store %struct.amdgpu_crtc* %88, %struct.amdgpu_crtc** %28, align 8
  %89 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %28, align 8
  %90 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %19, align 4
  br label %92

92:                                               ; preds = %84, %79
  %93 = load i32, i32* %24, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %1144

96:                                               ; preds = %92
  %97 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %98 = call i8* @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %97)
  %99 = call i64 @ENCODER_MODE_IS_DP(i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 1, i32* %18, align 4
  br label %102

102:                                              ; preds = %101, %96
  %103 = call i32 @memset(%union.dig_transmitter_control* %14, i32 0, i32 56)
  %104 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %105 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %119 [
    i32 133, label %107
    i32 131, label %111
    i32 130, label %111
    i32 129, label %111
    i32 128, label %111
    i32 132, label %115
  ]

107:                                              ; preds = %102
  %108 = load i32, i32* @COMMAND, align 4
  %109 = load i32, i32* @DVOOutputControl, align 4
  %110 = call i32 @GetIndexIntoMasterTable(i32 %108, i32 %109)
  store i32 %110, i32* %15, align 4
  br label %119

111:                                              ; preds = %102, %102, %102, %102
  %112 = load i32, i32* @COMMAND, align 4
  %113 = load i32, i32* @UNIPHYTransmitterControl, align 4
  %114 = call i32 @GetIndexIntoMasterTable(i32 %112, i32 %113)
  store i32 %114, i32* %15, align 4
  br label %119

115:                                              ; preds = %102
  %116 = load i32, i32* @COMMAND, align 4
  %117 = load i32, i32* @LVTMATransmitterControl, align 4
  %118 = call i32 @GetIndexIntoMasterTable(i32 %116, i32 %117)
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %102, %115, %111, %107
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %121 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @amdgpu_atom_parse_cmd_header(i32 %123, i32 %124, i32* %16, i32* %17)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %119
  br label %1144

128:                                              ; preds = %119
  %129 = load i32, i32* %16, align 4
  switch i32 %129, label %1132 [
    i32 1, label %130
  ]

130:                                              ; preds = %128
  %131 = load i32, i32* %17, align 4
  switch i32 %131, label %1127 [
    i32 1, label %132
    i32 2, label %360
    i32 3, label %490
    i32 4, label %660
    i32 5, label %838
    i32 6, label %1003
  ]

132:                                              ; preds = %130
  %133 = load i32, i32* %6, align 4
  %134 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @ATOM_TRANSMITTER_ACTION_INIT, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = load i32, i32* %22, align 4
  %141 = call i8* @cpu_to_le16(i32 %140)
  %142 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 4
  store i8* %141, i8** %143, align 8
  br label %193

144:                                              ; preds = %132
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = load i32, i32* %7, align 4
  %150 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  %153 = load i32, i32* %8, align 4
  %154 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 4
  br label %192

157:                                              ; preds = %144
  %158 = load i32, i32* %18, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i32, i32* %20, align 4
  %162 = sdiv i32 %161, 10
  %163 = call i8* @cpu_to_le16(i32 %162)
  %164 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  br label %191

166:                                              ; preds = %157
  %167 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %168 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %169 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %167, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %166
  %174 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %175 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sdiv i32 %176, 2
  %178 = sdiv i32 %177, 10
  %179 = call i8* @cpu_to_le16(i32 %178)
  %180 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 2
  store i8* %179, i8** %181, align 8
  br label %190

182:                                              ; preds = %166
  %183 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %184 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = sdiv i32 %185, 10
  %187 = call i8* @cpu_to_le16(i32 %186)
  %188 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 2
  store i8* %187, i8** %189, align 8
  br label %190

190:                                              ; preds = %182, %173
  br label %191

191:                                              ; preds = %190, %160
  br label %192

192:                                              ; preds = %191, %148
  br label %193

193:                                              ; preds = %192, %139
  %194 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_CLKSRC_PPLL, align 4
  %195 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %24, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_DIG2_ENCODER, align 4
  %201 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 4
  br label %211

205:                                              ; preds = %193
  %206 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_DIG1_ENCODER, align 4
  %207 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %205, %199
  %212 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %213 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @AMD_IS_APU, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %300

218:                                              ; preds = %211
  %219 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %220 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp eq i32 %221, 131
  br i1 %222, label %223, label %300

223:                                              ; preds = %218
  %224 = load i32, i32* %18, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %233, label %226

226:                                              ; preds = %223
  %227 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %228 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %229 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %227, i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %277, label %233

233:                                              ; preds = %226, %223
  %234 = load i32, i32* %23, align 4
  %235 = and i32 %234, 1
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %233
  %238 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_0_3, align 4
  %239 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 4
  br label %276

243:                                              ; preds = %233
  %244 = load i32, i32* %23, align 4
  %245 = and i32 %244, 2
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %243
  %248 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_4_7, align 4
  %249 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %250 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 4
  br label %275

253:                                              ; preds = %243
  %254 = load i32, i32* %23, align 4
  %255 = and i32 %254, 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %253
  %258 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_8_11, align 4
  %259 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 4
  br label %274

263:                                              ; preds = %253
  %264 = load i32, i32* %23, align 4
  %265 = and i32 %264, 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %263
  %268 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_12_15, align 4
  %269 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %270 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %267, %263
  br label %274

274:                                              ; preds = %273, %257
  br label %275

275:                                              ; preds = %274, %247
  br label %276

276:                                              ; preds = %275, %237
  br label %299

277:                                              ; preds = %226
  %278 = load i32, i32* %23, align 4
  %279 = and i32 %278, 3
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %277
  %282 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_0_7, align 4
  %283 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %284 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 4
  br label %298

287:                                              ; preds = %277
  %288 = load i32, i32* %23, align 4
  %289 = and i32 %288, 12
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %287
  %292 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_8_15, align 4
  %293 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %294 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 4
  br label %297

297:                                              ; preds = %291, %287
  br label %298

298:                                              ; preds = %297, %281
  br label %299

299:                                              ; preds = %298, %276
  br label %300

300:                                              ; preds = %299, %218, %211
  %301 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %302 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %300
  %306 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LINKB, align 4
  %307 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %308 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 4
  br label %317

311:                                              ; preds = %300
  %312 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LINKA, align 4
  %313 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %314 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = or i32 %315, %312
  store i32 %316, i32* %314, align 4
  br label %317

317:                                              ; preds = %311, %305
  %318 = load i32, i32* %18, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %326

320:                                              ; preds = %317
  %321 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_COHERENT, align 4
  %322 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %323 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = or i32 %324, %321
  store i32 %325, i32* %323, align 4
  br label %359

326:                                              ; preds = %317
  %327 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %328 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %358

333:                                              ; preds = %326
  %334 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %335 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %333
  %339 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_COHERENT, align 4
  %340 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %341 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = or i32 %342, %339
  store i32 %343, i32* %341, align 4
  br label %344

344:                                              ; preds = %338, %333
  %345 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %346 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %347 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %345, i32 %348)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %344
  %352 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_8LANE_LINK, align 4
  %353 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_28__*
  %354 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = or i32 %355, %352
  store i32 %356, i32* %354, align 4
  br label %357

357:                                              ; preds = %351, %344
  br label %358

358:                                              ; preds = %357, %326
  br label %359

359:                                              ; preds = %358, %320
  br label %1131

360:                                              ; preds = %130
  %361 = load i32, i32* %6, align 4
  %362 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_31__*
  %363 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %362, i32 0, i32 0
  store i32 %361, i32* %363, align 8
  %364 = load i32, i32* %6, align 4
  %365 = load i32, i32* @ATOM_TRANSMITTER_ACTION_INIT, align 4
  %366 = icmp eq i32 %364, %365
  br i1 %366, label %367, label %372

367:                                              ; preds = %360
  %368 = load i32, i32* %22, align 4
  %369 = call i8* @cpu_to_le16(i32 %368)
  %370 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_31__*
  %371 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %370, i32 0, i32 4
  store i8* %369, i8** %371, align 8
  br label %421

372:                                              ; preds = %360
  %373 = load i32, i32* %6, align 4
  %374 = load i32, i32* @ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %376, label %385

376:                                              ; preds = %372
  %377 = load i32, i32* %7, align 4
  %378 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_31__*
  %379 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %378, i32 0, i32 3
  %380 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %379, i32 0, i32 0
  store i32 %377, i32* %380, align 8
  %381 = load i32, i32* %8, align 4
  %382 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_31__*
  %383 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %383, i32 0, i32 1
  store i32 %381, i32* %384, align 4
  br label %420

385:                                              ; preds = %372
  %386 = load i32, i32* %18, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %385
  %389 = load i32, i32* %20, align 4
  %390 = sdiv i32 %389, 10
  %391 = call i8* @cpu_to_le16(i32 %390)
  %392 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_31__*
  %393 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %392, i32 0, i32 2
  store i8* %391, i8** %393, align 8
  br label %419

394:                                              ; preds = %385
  %395 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %396 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %397 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %395, i32 %398)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %410

401:                                              ; preds = %394
  %402 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %403 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = sdiv i32 %404, 2
  %406 = sdiv i32 %405, 10
  %407 = call i8* @cpu_to_le16(i32 %406)
  %408 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_31__*
  %409 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %408, i32 0, i32 2
  store i8* %407, i8** %409, align 8
  br label %418

410:                                              ; preds = %394
  %411 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %412 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = sdiv i32 %413, 10
  %415 = call i8* @cpu_to_le16(i32 %414)
  %416 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_31__*
  %417 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %416, i32 0, i32 2
  store i8* %415, i8** %417, align 8
  br label %418

418:                                              ; preds = %410, %401
  br label %419

419:                                              ; preds = %418, %388
  br label %420

420:                                              ; preds = %419, %376
  br label %421

421:                                              ; preds = %420, %367
  %422 = load i32, i32* %24, align 4
  %423 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_31__*
  %424 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %424, i32 0, i32 0
  store i32 %422, i32* %425, align 4
  %426 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %427 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %421
  %431 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_31__*
  %432 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %432, i32 0, i32 1
  store i32 1, i32* %433, align 4
  br label %434

434:                                              ; preds = %430, %421
  %435 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %436 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  switch i32 %437, label %450 [
    i32 131, label %438
    i32 130, label %442
    i32 129, label %446
  ]

438:                                              ; preds = %434
  %439 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_31__*
  %440 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %440, i32 0, i32 2
  store i32 0, i32* %441, align 4
  br label %450

442:                                              ; preds = %434
  %443 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_31__*
  %444 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %444, i32 0, i32 2
  store i32 1, i32* %445, align 4
  br label %450

446:                                              ; preds = %434
  %447 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_31__*
  %448 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %447, i32 0, i32 1
  %449 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %448, i32 0, i32 2
  store i32 2, i32* %449, align 4
  br label %450

450:                                              ; preds = %434, %446, %442, %438
  %451 = load i32, i32* %18, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %460

453:                                              ; preds = %450
  %454 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_31__*
  %455 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %455, i32 0, i32 3
  store i32 1, i32* %456, align 4
  %457 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_31__*
  %458 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %458, i32 0, i32 4
  store i32 1, i32* %459, align 4
  br label %489

460:                                              ; preds = %450
  %461 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %462 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %488

467:                                              ; preds = %460
  %468 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %469 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %468, i32 0, i32 2
  %470 = load i32, i32* %469, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %476

472:                                              ; preds = %467
  %473 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_31__*
  %474 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %474, i32 0, i32 3
  store i32 1, i32* %475, align 4
  br label %476

476:                                              ; preds = %472, %467
  %477 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %478 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %479 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %477, i32 %480)
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %487

483:                                              ; preds = %476
  %484 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_31__*
  %485 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %485, i32 0, i32 5
  store i32 1, i32* %486, align 4
  br label %487

487:                                              ; preds = %483, %476
  br label %488

488:                                              ; preds = %487, %460
  br label %489

489:                                              ; preds = %488, %453
  br label %1131

490:                                              ; preds = %130
  %491 = load i32, i32* %6, align 4
  %492 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %493 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %492, i32 0, i32 0
  store i32 %491, i32* %493, align 8
  %494 = load i32, i32* %6, align 4
  %495 = load i32, i32* @ATOM_TRANSMITTER_ACTION_INIT, align 4
  %496 = icmp eq i32 %494, %495
  br i1 %496, label %497, label %502

497:                                              ; preds = %490
  %498 = load i32, i32* %22, align 4
  %499 = call i8* @cpu_to_le16(i32 %498)
  %500 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %501 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %500, i32 0, i32 5
  store i8* %499, i8** %501, align 8
  br label %551

502:                                              ; preds = %490
  %503 = load i32, i32* %6, align 4
  %504 = load i32, i32* @ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH, align 4
  %505 = icmp eq i32 %503, %504
  br i1 %505, label %506, label %515

506:                                              ; preds = %502
  %507 = load i32, i32* %7, align 4
  %508 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %509 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %508, i32 0, i32 4
  %510 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %509, i32 0, i32 0
  store i32 %507, i32* %510, align 8
  %511 = load i32, i32* %8, align 4
  %512 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %513 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %512, i32 0, i32 4
  %514 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %513, i32 0, i32 1
  store i32 %511, i32* %514, align 4
  br label %550

515:                                              ; preds = %502
  %516 = load i32, i32* %18, align 4
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %524

518:                                              ; preds = %515
  %519 = load i32, i32* %20, align 4
  %520 = sdiv i32 %519, 10
  %521 = call i8* @cpu_to_le16(i32 %520)
  %522 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %523 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %522, i32 0, i32 3
  store i8* %521, i8** %523, align 8
  br label %549

524:                                              ; preds = %515
  %525 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %526 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %527 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 4
  %529 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %525, i32 %528)
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %540

531:                                              ; preds = %524
  %532 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %533 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 4
  %535 = sdiv i32 %534, 2
  %536 = sdiv i32 %535, 10
  %537 = call i8* @cpu_to_le16(i32 %536)
  %538 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %539 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %538, i32 0, i32 3
  store i8* %537, i8** %539, align 8
  br label %548

540:                                              ; preds = %524
  %541 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %542 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = sdiv i32 %543, 10
  %545 = call i8* @cpu_to_le16(i32 %544)
  %546 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %547 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %546, i32 0, i32 3
  store i8* %545, i8** %547, align 8
  br label %548

548:                                              ; preds = %540, %531
  br label %549

549:                                              ; preds = %548, %518
  br label %550

550:                                              ; preds = %549, %506
  br label %551

551:                                              ; preds = %550, %497
  %552 = load i32, i32* %18, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %558

554:                                              ; preds = %551
  %555 = load i32, i32* %21, align 4
  %556 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %557 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %556, i32 0, i32 1
  store i32 %555, i32* %557, align 4
  br label %572

558:                                              ; preds = %551
  %559 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %560 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %561 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 4
  %563 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %559, i32 %562)
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %568

565:                                              ; preds = %558
  %566 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %567 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %566, i32 0, i32 1
  store i32 8, i32* %567, align 4
  br label %571

568:                                              ; preds = %558
  %569 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %570 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %569, i32 0, i32 1
  store i32 4, i32* %570, align 4
  br label %571

571:                                              ; preds = %568, %565
  br label %572

572:                                              ; preds = %571, %554
  %573 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %574 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %573, i32 0, i32 1
  %575 = load i32, i32* %574, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %581

577:                                              ; preds = %572
  %578 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %579 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %578, i32 0, i32 2
  %580 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %579, i32 0, i32 0
  store i32 1, i32* %580, align 8
  br label %581

581:                                              ; preds = %577, %572
  %582 = load i32, i32* %24, align 4
  %583 = and i32 %582, 1
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %589

585:                                              ; preds = %581
  %586 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %587 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %586, i32 0, i32 2
  %588 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %587, i32 0, i32 1
  store i32 1, i32* %588, align 4
  br label %589

589:                                              ; preds = %585, %581
  %590 = load i32, i32* %18, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %602

592:                                              ; preds = %589
  %593 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %594 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %593, i32 0, i32 2
  %595 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 4
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %602

598:                                              ; preds = %592
  %599 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %600 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %599, i32 0, i32 2
  %601 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %600, i32 0, i32 2
  store i32 2, i32* %601, align 8
  br label %607

602:                                              ; preds = %592, %589
  %603 = load i32, i32* %19, align 4
  %604 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %605 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %604, i32 0, i32 2
  %606 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %605, i32 0, i32 2
  store i32 %603, i32* %606, align 8
  br label %607

607:                                              ; preds = %602, %598
  %608 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %609 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 8
  switch i32 %610, label %623 [
    i32 131, label %611
    i32 130, label %615
    i32 129, label %619
  ]

611:                                              ; preds = %607
  %612 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %613 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %612, i32 0, i32 2
  %614 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %613, i32 0, i32 3
  store i32 0, i32* %614, align 4
  br label %623

615:                                              ; preds = %607
  %616 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %617 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %616, i32 0, i32 2
  %618 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %617, i32 0, i32 3
  store i32 1, i32* %618, align 4
  br label %623

619:                                              ; preds = %607
  %620 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %621 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %620, i32 0, i32 2
  %622 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %621, i32 0, i32 3
  store i32 2, i32* %622, align 4
  br label %623

623:                                              ; preds = %607, %619, %615, %611
  %624 = load i32, i32* %18, align 4
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %630

626:                                              ; preds = %623
  %627 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %628 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %627, i32 0, i32 2
  %629 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %628, i32 0, i32 4
  store i32 1, i32* %629, align 8
  br label %659

630:                                              ; preds = %623
  %631 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %632 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %631, i32 0, i32 2
  %633 = load i32, i32* %632, align 8
  %634 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %635 = and i32 %633, %634
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %658

637:                                              ; preds = %630
  %638 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %639 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %638, i32 0, i32 2
  %640 = load i32, i32* %639, align 4
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %646

642:                                              ; preds = %637
  %643 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %644 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %643, i32 0, i32 2
  %645 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %644, i32 0, i32 4
  store i32 1, i32* %645, align 8
  br label %646

646:                                              ; preds = %642, %637
  %647 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %648 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %649 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %648, i32 0, i32 1
  %650 = load i32, i32* %649, align 4
  %651 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %647, i32 %650)
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %653, label %657

653:                                              ; preds = %646
  %654 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_34__*
  %655 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %654, i32 0, i32 2
  %656 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %655, i32 0, i32 5
  store i32 1, i32* %656, align 4
  br label %657

657:                                              ; preds = %653, %646
  br label %658

658:                                              ; preds = %657, %630
  br label %659

659:                                              ; preds = %658, %626
  br label %1131

660:                                              ; preds = %130
  %661 = load i32, i32* %6, align 4
  %662 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %663 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %662, i32 0, i32 0
  store i32 %661, i32* %663, align 8
  %664 = load i32, i32* %6, align 4
  %665 = load i32, i32* @ATOM_TRANSMITTER_ACTION_INIT, align 4
  %666 = icmp eq i32 %664, %665
  br i1 %666, label %667, label %672

667:                                              ; preds = %660
  %668 = load i32, i32* %22, align 4
  %669 = call i8* @cpu_to_le16(i32 %668)
  %670 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %671 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %670, i32 0, i32 5
  store i8* %669, i8** %671, align 8
  br label %721

672:                                              ; preds = %660
  %673 = load i32, i32* %6, align 4
  %674 = load i32, i32* @ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH, align 4
  %675 = icmp eq i32 %673, %674
  br i1 %675, label %676, label %685

676:                                              ; preds = %672
  %677 = load i32, i32* %7, align 4
  %678 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %679 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %678, i32 0, i32 4
  %680 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %679, i32 0, i32 0
  store i32 %677, i32* %680, align 8
  %681 = load i32, i32* %8, align 4
  %682 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %683 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %682, i32 0, i32 4
  %684 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %683, i32 0, i32 1
  store i32 %681, i32* %684, align 4
  br label %720

685:                                              ; preds = %672
  %686 = load i32, i32* %18, align 4
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %694

688:                                              ; preds = %685
  %689 = load i32, i32* %20, align 4
  %690 = sdiv i32 %689, 10
  %691 = call i8* @cpu_to_le16(i32 %690)
  %692 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %693 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %692, i32 0, i32 3
  store i8* %691, i8** %693, align 8
  br label %719

694:                                              ; preds = %685
  %695 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %696 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %697 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %696, i32 0, i32 1
  %698 = load i32, i32* %697, align 4
  %699 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %695, i32 %698)
  %700 = icmp ne i32 %699, 0
  br i1 %700, label %701, label %710

701:                                              ; preds = %694
  %702 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %703 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %702, i32 0, i32 1
  %704 = load i32, i32* %703, align 4
  %705 = sdiv i32 %704, 2
  %706 = sdiv i32 %705, 10
  %707 = call i8* @cpu_to_le16(i32 %706)
  %708 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %709 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %708, i32 0, i32 3
  store i8* %707, i8** %709, align 8
  br label %718

710:                                              ; preds = %694
  %711 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %712 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %711, i32 0, i32 1
  %713 = load i32, i32* %712, align 4
  %714 = sdiv i32 %713, 10
  %715 = call i8* @cpu_to_le16(i32 %714)
  %716 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %717 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %716, i32 0, i32 3
  store i8* %715, i8** %717, align 8
  br label %718

718:                                              ; preds = %710, %701
  br label %719

719:                                              ; preds = %718, %688
  br label %720

720:                                              ; preds = %719, %676
  br label %721

721:                                              ; preds = %720, %667
  %722 = load i32, i32* %18, align 4
  %723 = icmp ne i32 %722, 0
  br i1 %723, label %724, label %728

724:                                              ; preds = %721
  %725 = load i32, i32* %21, align 4
  %726 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %727 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %726, i32 0, i32 1
  store i32 %725, i32* %727, align 4
  br label %742

728:                                              ; preds = %721
  %729 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %730 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %731 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %730, i32 0, i32 1
  %732 = load i32, i32* %731, align 4
  %733 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %729, i32 %732)
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %735, label %738

735:                                              ; preds = %728
  %736 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %737 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %736, i32 0, i32 1
  store i32 8, i32* %737, align 4
  br label %741

738:                                              ; preds = %728
  %739 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %740 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %739, i32 0, i32 1
  store i32 4, i32* %740, align 4
  br label %741

741:                                              ; preds = %738, %735
  br label %742

742:                                              ; preds = %741, %724
  %743 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %744 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %743, i32 0, i32 1
  %745 = load i32, i32* %744, align 4
  %746 = icmp ne i32 %745, 0
  br i1 %746, label %747, label %751

747:                                              ; preds = %742
  %748 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %749 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %748, i32 0, i32 2
  %750 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %749, i32 0, i32 0
  store i32 1, i32* %750, align 8
  br label %751

751:                                              ; preds = %747, %742
  %752 = load i32, i32* %24, align 4
  %753 = and i32 %752, 1
  %754 = icmp ne i32 %753, 0
  br i1 %754, label %755, label %759

755:                                              ; preds = %751
  %756 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %757 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %756, i32 0, i32 2
  %758 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %757, i32 0, i32 1
  store i32 1, i32* %758, align 4
  br label %759

759:                                              ; preds = %755, %751
  %760 = load i32, i32* %18, align 4
  %761 = icmp ne i32 %760, 0
  br i1 %761, label %762, label %780

762:                                              ; preds = %759
  %763 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %764 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %763, i32 0, i32 2
  %765 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %764, i32 0, i32 0
  %766 = load i32, i32* %765, align 4
  %767 = icmp ne i32 %766, 0
  br i1 %767, label %768, label %774

768:                                              ; preds = %762
  %769 = load i8*, i8** @ENCODER_REFCLK_SRC_EXTCLK, align 8
  %770 = ptrtoint i8* %769 to i32
  %771 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %772 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %771, i32 0, i32 2
  %773 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %772, i32 0, i32 2
  store i32 %770, i32* %773, align 8
  br label %779

774:                                              ; preds = %762
  %775 = load i32, i32* @ENCODER_REFCLK_SRC_DCPLL, align 4
  %776 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %777 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %776, i32 0, i32 2
  %778 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %777, i32 0, i32 2
  store i32 %775, i32* %778, align 8
  br label %779

779:                                              ; preds = %774, %768
  br label %785

780:                                              ; preds = %759
  %781 = load i32, i32* %19, align 4
  %782 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %783 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %782, i32 0, i32 2
  %784 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %783, i32 0, i32 2
  store i32 %781, i32* %784, align 8
  br label %785

785:                                              ; preds = %780, %779
  %786 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %787 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %786, i32 0, i32 0
  %788 = load i32, i32* %787, align 8
  switch i32 %788, label %801 [
    i32 131, label %789
    i32 130, label %793
    i32 129, label %797
  ]

789:                                              ; preds = %785
  %790 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %791 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %790, i32 0, i32 2
  %792 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %791, i32 0, i32 3
  store i32 0, i32* %792, align 4
  br label %801

793:                                              ; preds = %785
  %794 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %795 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %794, i32 0, i32 2
  %796 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %795, i32 0, i32 3
  store i32 1, i32* %796, align 4
  br label %801

797:                                              ; preds = %785
  %798 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %799 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %798, i32 0, i32 2
  %800 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %799, i32 0, i32 3
  store i32 2, i32* %800, align 4
  br label %801

801:                                              ; preds = %785, %797, %793, %789
  %802 = load i32, i32* %18, align 4
  %803 = icmp ne i32 %802, 0
  br i1 %803, label %804, label %808

804:                                              ; preds = %801
  %805 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %806 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %805, i32 0, i32 2
  %807 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %806, i32 0, i32 4
  store i32 1, i32* %807, align 8
  br label %837

808:                                              ; preds = %801
  %809 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %810 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %809, i32 0, i32 2
  %811 = load i32, i32* %810, align 8
  %812 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %813 = and i32 %811, %812
  %814 = icmp ne i32 %813, 0
  br i1 %814, label %815, label %836

815:                                              ; preds = %808
  %816 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %817 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %816, i32 0, i32 2
  %818 = load i32, i32* %817, align 4
  %819 = icmp ne i32 %818, 0
  br i1 %819, label %820, label %824

820:                                              ; preds = %815
  %821 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %822 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %821, i32 0, i32 2
  %823 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %822, i32 0, i32 4
  store i32 1, i32* %823, align 8
  br label %824

824:                                              ; preds = %820, %815
  %825 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %826 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %827 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %826, i32 0, i32 1
  %828 = load i32, i32* %827, align 4
  %829 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %825, i32 %828)
  %830 = icmp ne i32 %829, 0
  br i1 %830, label %831, label %835

831:                                              ; preds = %824
  %832 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_20__*
  %833 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %832, i32 0, i32 2
  %834 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %833, i32 0, i32 5
  store i32 1, i32* %834, align 4
  br label %835

835:                                              ; preds = %831, %824
  br label %836

836:                                              ; preds = %835, %808
  br label %837

837:                                              ; preds = %836, %804
  br label %1131

838:                                              ; preds = %130
  %839 = load i32, i32* %6, align 4
  %840 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %841 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %840, i32 0, i32 0
  store i32 %839, i32* %841, align 8
  %842 = load i32, i32* %18, align 4
  %843 = icmp ne i32 %842, 0
  br i1 %843, label %844, label %850

844:                                              ; preds = %838
  %845 = load i32, i32* %20, align 4
  %846 = sdiv i32 %845, 10
  %847 = call i8* @cpu_to_le16(i32 %846)
  %848 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %849 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %848, i32 0, i32 8
  store i8* %847, i8** %849, align 8
  br label %858

850:                                              ; preds = %838
  %851 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %852 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %851, i32 0, i32 1
  %853 = load i32, i32* %852, align 4
  %854 = sdiv i32 %853, 10
  %855 = call i8* @cpu_to_le16(i32 %854)
  %856 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %857 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %856, i32 0, i32 8
  store i8* %855, i8** %857, align 8
  br label %858

858:                                              ; preds = %850, %844
  %859 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %860 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %859, i32 0, i32 0
  %861 = load i32, i32* %860, align 8
  switch i32 %861, label %908 [
    i32 131, label %862
    i32 130, label %876
    i32 129, label %890
    i32 128, label %904
  ]

862:                                              ; preds = %858
  %863 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %864 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %863, i32 0, i32 1
  %865 = load i32, i32* %864, align 4
  %866 = icmp ne i32 %865, 0
  br i1 %866, label %867, label %871

867:                                              ; preds = %862
  %868 = load i8*, i8** @ATOM_PHY_ID_UNIPHYB, align 8
  %869 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %870 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %869, i32 0, i32 7
  store i8* %868, i8** %870, align 8
  br label %875

871:                                              ; preds = %862
  %872 = load i8*, i8** @ATOM_PHY_ID_UNIPHYA, align 8
  %873 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %874 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %873, i32 0, i32 7
  store i8* %872, i8** %874, align 8
  br label %875

875:                                              ; preds = %871, %867
  br label %908

876:                                              ; preds = %858
  %877 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %878 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %877, i32 0, i32 1
  %879 = load i32, i32* %878, align 4
  %880 = icmp ne i32 %879, 0
  br i1 %880, label %881, label %885

881:                                              ; preds = %876
  %882 = load i8*, i8** @ATOM_PHY_ID_UNIPHYD, align 8
  %883 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %884 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %883, i32 0, i32 7
  store i8* %882, i8** %884, align 8
  br label %889

885:                                              ; preds = %876
  %886 = load i8*, i8** @ATOM_PHY_ID_UNIPHYC, align 8
  %887 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %888 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %887, i32 0, i32 7
  store i8* %886, i8** %888, align 8
  br label %889

889:                                              ; preds = %885, %881
  br label %908

890:                                              ; preds = %858
  %891 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %892 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %891, i32 0, i32 1
  %893 = load i32, i32* %892, align 4
  %894 = icmp ne i32 %893, 0
  br i1 %894, label %895, label %899

895:                                              ; preds = %890
  %896 = load i8*, i8** @ATOM_PHY_ID_UNIPHYF, align 8
  %897 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %898 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %897, i32 0, i32 7
  store i8* %896, i8** %898, align 8
  br label %903

899:                                              ; preds = %890
  %900 = load i8*, i8** @ATOM_PHY_ID_UNIPHYE, align 8
  %901 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %902 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %901, i32 0, i32 7
  store i8* %900, i8** %902, align 8
  br label %903

903:                                              ; preds = %899, %895
  br label %908

904:                                              ; preds = %858
  %905 = load i8*, i8** @ATOM_PHY_ID_UNIPHYG, align 8
  %906 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %907 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %906, i32 0, i32 7
  store i8* %905, i8** %907, align 8
  br label %908

908:                                              ; preds = %858, %904, %903, %889, %875
  %909 = load i32, i32* %18, align 4
  %910 = icmp ne i32 %909, 0
  br i1 %910, label %911, label %915

911:                                              ; preds = %908
  %912 = load i32, i32* %21, align 4
  %913 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %914 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %913, i32 0, i32 1
  store i32 %912, i32* %914, align 4
  br label %929

915:                                              ; preds = %908
  %916 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %917 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %918 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %917, i32 0, i32 1
  %919 = load i32, i32* %918, align 4
  %920 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %916, i32 %919)
  %921 = icmp ne i32 %920, 0
  br i1 %921, label %922, label %925

922:                                              ; preds = %915
  %923 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %924 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %923, i32 0, i32 1
  store i32 8, i32* %924, align 4
  br label %928

925:                                              ; preds = %915
  %926 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %927 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %926, i32 0, i32 1
  store i32 4, i32* %927, align 4
  br label %928

928:                                              ; preds = %925, %922
  br label %929

929:                                              ; preds = %928, %911
  %930 = load i32, i32* %22, align 4
  %931 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %932 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %931, i32 0, i32 2
  store i32 %930, i32* %932, align 8
  %933 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %934 = call i8* @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %933)
  %935 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %936 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %935, i32 0, i32 6
  store i8* %934, i8** %936, align 8
  %937 = load i32, i32* %18, align 4
  %938 = icmp ne i32 %937, 0
  br i1 %938, label %939, label %951

939:                                              ; preds = %929
  %940 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %941 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %940, i32 0, i32 2
  %942 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %941, i32 0, i32 0
  %943 = load i32, i32* %942, align 4
  %944 = icmp ne i32 %943, 0
  br i1 %944, label %945, label %951

945:                                              ; preds = %939
  %946 = load i8*, i8** @ENCODER_REFCLK_SRC_EXTCLK, align 8
  %947 = ptrtoint i8* %946 to i32
  %948 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %949 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %948, i32 0, i32 5
  %950 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %949, i32 0, i32 0
  store i32 %947, i32* %950, align 4
  br label %956

951:                                              ; preds = %939, %929
  %952 = load i32, i32* %19, align 4
  %953 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %954 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %953, i32 0, i32 5
  %955 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %954, i32 0, i32 0
  store i32 %952, i32* %955, align 4
  br label %956

956:                                              ; preds = %951, %945
  %957 = load i32, i32* %18, align 4
  %958 = icmp ne i32 %957, 0
  br i1 %958, label %959, label %963

959:                                              ; preds = %956
  %960 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %961 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %960, i32 0, i32 5
  %962 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %961, i32 0, i32 1
  store i32 1, i32* %962, align 4
  br label %981

963:                                              ; preds = %956
  %964 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %965 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %964, i32 0, i32 2
  %966 = load i32, i32* %965, align 8
  %967 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %968 = and i32 %966, %967
  %969 = icmp ne i32 %968, 0
  br i1 %969, label %970, label %980

970:                                              ; preds = %963
  %971 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %972 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %971, i32 0, i32 2
  %973 = load i32, i32* %972, align 4
  %974 = icmp ne i32 %973, 0
  br i1 %974, label %975, label %979

975:                                              ; preds = %970
  %976 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %977 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %976, i32 0, i32 5
  %978 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %977, i32 0, i32 1
  store i32 1, i32* %978, align 4
  br label %979

979:                                              ; preds = %975, %970
  br label %980

980:                                              ; preds = %979, %963
  br label %981

981:                                              ; preds = %980, %959
  %982 = load i32, i32* %25, align 4
  %983 = load i32, i32* @AMDGPU_HPD_NONE, align 4
  %984 = icmp eq i32 %982, %983
  br i1 %984, label %985, label %989

985:                                              ; preds = %981
  %986 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %987 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %986, i32 0, i32 5
  %988 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %987, i32 0, i32 2
  store i32 0, i32* %988, align 4
  br label %995

989:                                              ; preds = %981
  %990 = load i32, i32* %25, align 4
  %991 = add nsw i32 %990, 1
  %992 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %993 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %992, i32 0, i32 5
  %994 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %993, i32 0, i32 2
  store i32 %991, i32* %994, align 4
  br label %995

995:                                              ; preds = %989, %985
  %996 = load i32, i32* %24, align 4
  %997 = shl i32 1, %996
  %998 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %999 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %998, i32 0, i32 3
  store i32 %997, i32* %999, align 4
  %1000 = load i32, i32* %8, align 4
  %1001 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_23__*
  %1002 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1001, i32 0, i32 4
  store i32 %1000, i32* %1002, align 8
  br label %1131

1003:                                             ; preds = %130
  %1004 = load i32, i32* %6, align 4
  %1005 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1006 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1005, i32 0, i32 0
  store i32 %1004, i32* %1006, align 8
  %1007 = load i32, i32* %18, align 4
  %1008 = icmp ne i32 %1007, 0
  br i1 %1008, label %1009, label %1015

1009:                                             ; preds = %1003
  %1010 = load i32, i32* %20, align 4
  %1011 = sdiv i32 %1010, 10
  %1012 = call i8* @cpu_to_le32(i32 %1011)
  %1013 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1014 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1013, i32 0, i32 8
  store i8* %1012, i8** %1014, align 8
  br label %1023

1015:                                             ; preds = %1003
  %1016 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %1017 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %1016, i32 0, i32 1
  %1018 = load i32, i32* %1017, align 4
  %1019 = sdiv i32 %1018, 10
  %1020 = call i8* @cpu_to_le32(i32 %1019)
  %1021 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1022 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1021, i32 0, i32 8
  store i8* %1020, i8** %1022, align 8
  br label %1023

1023:                                             ; preds = %1015, %1009
  %1024 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %1025 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %1024, i32 0, i32 0
  %1026 = load i32, i32* %1025, align 8
  switch i32 %1026, label %1073 [
    i32 131, label %1027
    i32 130, label %1041
    i32 129, label %1055
    i32 128, label %1069
  ]

1027:                                             ; preds = %1023
  %1028 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %1029 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %1028, i32 0, i32 1
  %1030 = load i32, i32* %1029, align 4
  %1031 = icmp ne i32 %1030, 0
  br i1 %1031, label %1032, label %1036

1032:                                             ; preds = %1027
  %1033 = load i8*, i8** @ATOM_PHY_ID_UNIPHYB, align 8
  %1034 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1035 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1034, i32 0, i32 7
  store i8* %1033, i8** %1035, align 8
  br label %1040

1036:                                             ; preds = %1027
  %1037 = load i8*, i8** @ATOM_PHY_ID_UNIPHYA, align 8
  %1038 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1039 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1038, i32 0, i32 7
  store i8* %1037, i8** %1039, align 8
  br label %1040

1040:                                             ; preds = %1036, %1032
  br label %1073

1041:                                             ; preds = %1023
  %1042 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %1043 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %1042, i32 0, i32 1
  %1044 = load i32, i32* %1043, align 4
  %1045 = icmp ne i32 %1044, 0
  br i1 %1045, label %1046, label %1050

1046:                                             ; preds = %1041
  %1047 = load i8*, i8** @ATOM_PHY_ID_UNIPHYD, align 8
  %1048 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1049 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1048, i32 0, i32 7
  store i8* %1047, i8** %1049, align 8
  br label %1054

1050:                                             ; preds = %1041
  %1051 = load i8*, i8** @ATOM_PHY_ID_UNIPHYC, align 8
  %1052 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1053 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1052, i32 0, i32 7
  store i8* %1051, i8** %1053, align 8
  br label %1054

1054:                                             ; preds = %1050, %1046
  br label %1073

1055:                                             ; preds = %1023
  %1056 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %1057 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %1056, i32 0, i32 1
  %1058 = load i32, i32* %1057, align 4
  %1059 = icmp ne i32 %1058, 0
  br i1 %1059, label %1060, label %1064

1060:                                             ; preds = %1055
  %1061 = load i8*, i8** @ATOM_PHY_ID_UNIPHYF, align 8
  %1062 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1063 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1062, i32 0, i32 7
  store i8* %1061, i8** %1063, align 8
  br label %1068

1064:                                             ; preds = %1055
  %1065 = load i8*, i8** @ATOM_PHY_ID_UNIPHYE, align 8
  %1066 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1067 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1066, i32 0, i32 7
  store i8* %1065, i8** %1067, align 8
  br label %1068

1068:                                             ; preds = %1064, %1060
  br label %1073

1069:                                             ; preds = %1023
  %1070 = load i8*, i8** @ATOM_PHY_ID_UNIPHYG, align 8
  %1071 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1072 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1071, i32 0, i32 7
  store i8* %1070, i8** %1072, align 8
  br label %1073

1073:                                             ; preds = %1023, %1069, %1068, %1054, %1040
  %1074 = load i32, i32* %18, align 4
  %1075 = icmp ne i32 %1074, 0
  br i1 %1075, label %1076, label %1080

1076:                                             ; preds = %1073
  %1077 = load i32, i32* %21, align 4
  %1078 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1079 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1078, i32 0, i32 1
  store i32 %1077, i32* %1079, align 4
  br label %1094

1080:                                             ; preds = %1073
  %1081 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %1082 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %1083 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %1082, i32 0, i32 1
  %1084 = load i32, i32* %1083, align 4
  %1085 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %1081, i32 %1084)
  %1086 = icmp ne i32 %1085, 0
  br i1 %1086, label %1087, label %1090

1087:                                             ; preds = %1080
  %1088 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1089 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1088, i32 0, i32 1
  store i32 8, i32* %1089, align 4
  br label %1093

1090:                                             ; preds = %1080
  %1091 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1092 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1091, i32 0, i32 1
  store i32 4, i32* %1092, align 4
  br label %1093

1093:                                             ; preds = %1090, %1087
  br label %1094

1094:                                             ; preds = %1093, %1076
  %1095 = load i32, i32* %22, align 4
  %1096 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1097 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1096, i32 0, i32 2
  store i32 %1095, i32* %1097, align 8
  %1098 = load i32, i32* %6, align 4
  %1099 = load i32, i32* @ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH, align 4
  %1100 = icmp eq i32 %1098, %1099
  br i1 %1100, label %1101, label %1105

1101:                                             ; preds = %1094
  %1102 = load i32, i32* %8, align 4
  %1103 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1103, i32 0, i32 3
  store i32 %1102, i32* %1104, align 4
  br label %1110

1105:                                             ; preds = %1094
  %1106 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %1107 = call i8* @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %1106)
  %1108 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1108, i32 0, i32 6
  store i8* %1107, i8** %1109, align 8
  br label %1110

1110:                                             ; preds = %1105, %1101
  %1111 = load i32, i32* %25, align 4
  %1112 = load i32, i32* @AMDGPU_HPD_NONE, align 4
  %1113 = icmp eq i32 %1111, %1112
  br i1 %1113, label %1114, label %1117

1114:                                             ; preds = %1110
  %1115 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1115, i32 0, i32 4
  store i32 0, i32* %1116, align 8
  br label %1122

1117:                                             ; preds = %1110
  %1118 = load i32, i32* %25, align 4
  %1119 = add nsw i32 %1118, 1
  %1120 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1120, i32 0, i32 4
  store i32 %1119, i32* %1121, align 8
  br label %1122

1122:                                             ; preds = %1117, %1114
  %1123 = load i32, i32* %24, align 4
  %1124 = shl i32 1, %1123
  %1125 = bitcast %union.dig_transmitter_control* %14 to %struct.TYPE_24__*
  %1126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1125, i32 0, i32 5
  store i32 %1124, i32* %1126, align 4
  br label %1131

1127:                                             ; preds = %130
  %1128 = load i32, i32* %16, align 4
  %1129 = load i32, i32* %17, align 4
  %1130 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %1128, i32 %1129)
  br label %1131

1131:                                             ; preds = %1127, %1122, %995, %837, %659, %489, %359
  br label %1136

1132:                                             ; preds = %128
  %1133 = load i32, i32* %16, align 4
  %1134 = load i32, i32* %17, align 4
  %1135 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %1133, i32 %1134)
  br label %1136

1136:                                             ; preds = %1132, %1131
  %1137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %1138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1137, i32 0, i32 1
  %1139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1138, i32 0, i32 0
  %1140 = load i32, i32* %1139, align 4
  %1141 = load i32, i32* %15, align 4
  %1142 = bitcast %union.dig_transmitter_control* %14 to i32*
  %1143 = call i32 @amdgpu_atom_execute_table(i32 %1140, i32 %1141, i32* %1142)
  br label %1144

1144:                                             ; preds = %1136, %127, %95
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder_init(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(i64) #1

declare dso_local i64 @ENCODER_MODE_IS_DP(i8*) #1

declare dso_local i8* @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @memset(%union.dig_transmitter_control*, i32, i32) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @amdgpu_atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @amdgpu_atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
