; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_dig_transmitter_setup2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_dig_transmitter_setup2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i64, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, %struct.TYPE_23__, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.radeon_encoder = type { i32, i32, i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32, i32, i32 }
%struct.drm_connector = type { i32 }
%union.dig_transmitter_control = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__, i8*, %struct.TYPE_17__, i8* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.radeon_connector = type { i32, %struct.TYPE_24__, %struct.radeon_connector_atom_dig* }
%struct.TYPE_24__ = type { i32 }
%struct.radeon_connector_atom_dig = type { i32, i32, i32 }
%struct.radeon_crtc = type { i32 }
%struct.TYPE_26__ = type { i32, i32, i8*, %struct.TYPE_25__, i8* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__, i8*, %struct.TYPE_27__, i8* }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_31__, i8*, %struct.TYPE_30__, i8* }
%struct.TYPE_31__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, %struct.TYPE_21__, i32, i32, i8* }
%struct.TYPE_21__ = type { i32, i32, i32 }

@RADEON_HPD_NONE = common dso_local global i32 0, align 4
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
@RADEON_IS_IGP = common dso_local global i32 0, align 4
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
@ATOM_PHY_ID_UNIPHYB = common dso_local global i32 0, align 4
@ATOM_PHY_ID_UNIPHYA = common dso_local global i32 0, align 4
@ATOM_PHY_ID_UNIPHYD = common dso_local global i32 0, align 4
@ATOM_PHY_ID_UNIPHYC = common dso_local global i32 0, align 4
@ATOM_PHY_ID_UNIPHYF = common dso_local global i32 0, align 4
@ATOM_PHY_ID_UNIPHYE = common dso_local global i32 0, align 4
@ATOM_PHY_ID_UNIPHYG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown table version %d, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atombios_dig_transmitter_setup2(%struct.drm_encoder* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca %struct.radeon_device*, align 8
  %13 = alloca %struct.radeon_encoder*, align 8
  %14 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %15 = alloca %struct.drm_connector*, align 8
  %16 = alloca %union.dig_transmitter_control, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.radeon_connector*, align 8
  %29 = alloca %struct.radeon_connector_atom_dig*, align 8
  %30 = alloca %struct.radeon_crtc*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %31 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %32 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %31, i32 0, i32 1
  %33 = load %struct.drm_device*, %struct.drm_device** %32, align 8
  store %struct.drm_device* %33, %struct.drm_device** %11, align 8
  %34 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = load %struct.radeon_device*, %struct.radeon_device** %35, align 8
  store %struct.radeon_device* %36, %struct.radeon_device** %12, align 8
  %37 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %38 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %37)
  store %struct.radeon_encoder* %38, %struct.radeon_encoder** %13, align 8
  %39 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %40 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %39, i32 0, i32 3
  %41 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %40, align 8
  store %struct.radeon_encoder_atom_dig* %41, %struct.radeon_encoder_atom_dig** %14, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %42 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %14, align 8
  %43 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %26, align 4
  %45 = load i32, i32* @RADEON_HPD_NONE, align 4
  store i32 %45, i32* %27, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ATOM_TRANSMITTER_ACTION_INIT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %5
  %50 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %51 = call %struct.drm_connector* @radeon_get_connector_for_encoder_init(%struct.drm_encoder* %50)
  store %struct.drm_connector* %51, %struct.drm_connector** %15, align 8
  store i32 0, i32* %26, align 4
  br label %55

52:                                               ; preds = %5
  %53 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %54 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %53)
  store %struct.drm_connector* %54, %struct.drm_connector** %15, align 8
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %57 = icmp ne %struct.drm_connector* %56, null
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %60 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %59)
  store %struct.radeon_connector* %60, %struct.radeon_connector** %28, align 8
  %61 = load %struct.radeon_connector*, %struct.radeon_connector** %28, align 8
  %62 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %61, i32 0, i32 2
  %63 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %62, align 8
  store %struct.radeon_connector_atom_dig* %63, %struct.radeon_connector_atom_dig** %29, align 8
  %64 = load %struct.radeon_connector*, %struct.radeon_connector** %28, align 8
  %65 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %27, align 4
  %68 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %29, align 8
  %69 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %22, align 4
  %71 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %29, align 8
  %72 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %23, align 4
  %74 = load %struct.radeon_connector*, %struct.radeon_connector** %28, align 8
  %75 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @OBJECT_ID_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @OBJECT_ID_SHIFT, align 4
  %80 = ashr i32 %78, %79
  store i32 %80, i32* %24, align 4
  %81 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %29, align 8
  %82 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %25, align 4
  br label %84

84:                                               ; preds = %58, %55
  %85 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %86 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %91 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call %struct.radeon_crtc* @to_radeon_crtc(i64 %92)
  store %struct.radeon_crtc* %93, %struct.radeon_crtc** %30, align 8
  %94 = load %struct.radeon_crtc*, %struct.radeon_crtc** %30, align 8
  %95 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %21, align 4
  br label %97

97:                                               ; preds = %89, %84
  %98 = load i32, i32* %26, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %1033

101:                                              ; preds = %97
  %102 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %103 = call i32 @atombios_get_encoder_mode(%struct.drm_encoder* %102)
  %104 = call i64 @ENCODER_MODE_IS_DP(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 1, i32* %20, align 4
  br label %107

107:                                              ; preds = %106, %101
  %108 = call i32 @memset(%union.dig_transmitter_control* %16, i32 0, i32 56)
  %109 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %110 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %124 [
    i32 133, label %112
    i32 131, label %116
    i32 130, label %116
    i32 129, label %116
    i32 128, label %116
    i32 132, label %120
  ]

112:                                              ; preds = %107
  %113 = load i32, i32* @COMMAND, align 4
  %114 = load i32, i32* @DVOOutputControl, align 4
  %115 = call i32 @GetIndexIntoMasterTable(i32 %113, i32 %114)
  store i32 %115, i32* %17, align 4
  br label %124

116:                                              ; preds = %107, %107, %107, %107
  %117 = load i32, i32* @COMMAND, align 4
  %118 = load i32, i32* @UNIPHYTransmitterControl, align 4
  %119 = call i32 @GetIndexIntoMasterTable(i32 %117, i32 %118)
  store i32 %119, i32* %17, align 4
  br label %124

120:                                              ; preds = %107
  %121 = load i32, i32* @COMMAND, align 4
  %122 = load i32, i32* @LVTMATransmitterControl, align 4
  %123 = call i32 @GetIndexIntoMasterTable(i32 %121, i32 %122)
  store i32 %123, i32* %17, align 4
  br label %124

124:                                              ; preds = %107, %120, %116, %112
  %125 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %17, align 4
  %130 = call i32 @atom_parse_cmd_header(i32 %128, i32 %129, i32* %18, i32* %19)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %124
  br label %1033

133:                                              ; preds = %124
  %134 = load i32, i32* %18, align 4
  switch i32 %134, label %1021 [
    i32 1, label %135
  ]

135:                                              ; preds = %133
  %136 = load i32, i32* %19, align 4
  switch i32 %136, label %1016 [
    i32 1, label %137
    i32 2, label %365
    i32 3, label %495
    i32 4, label %665
    i32 5, label %843
  ]

137:                                              ; preds = %135
  %138 = load i32, i32* %7, align 4
  %139 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @ATOM_TRANSMITTER_ACTION_INIT, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load i32, i32* %24, align 4
  %146 = call i8* @cpu_to_le16(i32 %145)
  %147 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  br label %198

149:                                              ; preds = %137
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %149
  %154 = load i32, i32* %8, align 4
  %155 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  %158 = load i32, i32* %9, align 4
  %159 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 1
  store i32 %158, i32* %161, align 4
  br label %197

162:                                              ; preds = %149
  %163 = load i32, i32* %20, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i32, i32* %22, align 4
  %167 = sdiv i32 %166, 10
  %168 = call i8* @cpu_to_le16(i32 %167)
  %169 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 2
  store i8* %168, i8** %170, align 8
  br label %196

171:                                              ; preds = %162
  %172 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %173 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %174 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %172, i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %171
  %179 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %180 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sdiv i32 %181, 2
  %183 = sdiv i32 %182, 10
  %184 = call i8* @cpu_to_le16(i32 %183)
  %185 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 2
  store i8* %184, i8** %186, align 8
  br label %195

187:                                              ; preds = %171
  %188 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %189 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sdiv i32 %190, 10
  %192 = call i8* @cpu_to_le16(i32 %191)
  %193 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 2
  store i8* %192, i8** %194, align 8
  br label %195

195:                                              ; preds = %187, %178
  br label %196

196:                                              ; preds = %195, %165
  br label %197

197:                                              ; preds = %196, %153
  br label %198

198:                                              ; preds = %197, %144
  %199 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_CLKSRC_PPLL, align 4
  %200 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* %26, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %198
  %205 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_DIG2_ENCODER, align 4
  %206 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 4
  br label %216

210:                                              ; preds = %198
  %211 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_DIG1_ENCODER, align 4
  %212 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %210, %204
  %217 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %218 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @RADEON_IS_IGP, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %305

223:                                              ; preds = %216
  %224 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %225 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 131
  br i1 %227, label %228, label %305

228:                                              ; preds = %223
  %229 = load i32, i32* %20, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %238, label %231

231:                                              ; preds = %228
  %232 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %233 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %234 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %232, i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %282, label %238

238:                                              ; preds = %231, %228
  %239 = load i32, i32* %25, align 4
  %240 = and i32 %239, 1
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %238
  %243 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_0_3, align 4
  %244 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 4
  br label %281

248:                                              ; preds = %238
  %249 = load i32, i32* %25, align 4
  %250 = and i32 %249, 2
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %248
  %253 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_4_7, align 4
  %254 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 4
  br label %280

258:                                              ; preds = %248
  %259 = load i32, i32* %25, align 4
  %260 = and i32 %259, 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %258
  %263 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_8_11, align 4
  %264 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %265 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 4
  br label %279

268:                                              ; preds = %258
  %269 = load i32, i32* %25, align 4
  %270 = and i32 %269, 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %268
  %273 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_12_15, align 4
  %274 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 4
  br label %278

278:                                              ; preds = %272, %268
  br label %279

279:                                              ; preds = %278, %262
  br label %280

280:                                              ; preds = %279, %252
  br label %281

281:                                              ; preds = %280, %242
  br label %304

282:                                              ; preds = %231
  %283 = load i32, i32* %25, align 4
  %284 = and i32 %283, 3
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %282
  %287 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_0_7, align 4
  %288 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 4
  br label %303

292:                                              ; preds = %282
  %293 = load i32, i32* %25, align 4
  %294 = and i32 %293, 12
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %292
  %297 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LANE_8_15, align 4
  %298 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, %297
  store i32 %301, i32* %299, align 4
  br label %302

302:                                              ; preds = %296, %292
  br label %303

303:                                              ; preds = %302, %286
  br label %304

304:                                              ; preds = %303, %281
  br label %305

305:                                              ; preds = %304, %223, %216
  %306 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %14, align 8
  %307 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %316

310:                                              ; preds = %305
  %311 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LINKB, align 4
  %312 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = or i32 %314, %311
  store i32 %315, i32* %313, align 4
  br label %322

316:                                              ; preds = %305
  %317 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_LINKA, align 4
  %318 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %319 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 4
  br label %322

322:                                              ; preds = %316, %310
  %323 = load i32, i32* %20, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  %326 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_COHERENT, align 4
  %327 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = or i32 %329, %326
  store i32 %330, i32* %328, align 4
  br label %364

331:                                              ; preds = %322
  %332 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %333 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %363

338:                                              ; preds = %331
  %339 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %14, align 8
  %340 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %349

343:                                              ; preds = %338
  %344 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_COHERENT, align 4
  %345 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %346 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = or i32 %347, %344
  store i32 %348, i32* %346, align 4
  br label %349

349:                                              ; preds = %343, %338
  %350 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %351 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %352 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %350, i32 %353)
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %349
  %357 = load i32, i32* @ATOM_TRANSMITTER_CONFIG_8LANE_LINK, align 4
  %358 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_26__*
  %359 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = or i32 %360, %357
  store i32 %361, i32* %359, align 4
  br label %362

362:                                              ; preds = %356, %349
  br label %363

363:                                              ; preds = %362, %331
  br label %364

364:                                              ; preds = %363, %325
  br label %1020

365:                                              ; preds = %135
  %366 = load i32, i32* %7, align 4
  %367 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_29__*
  %368 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %367, i32 0, i32 0
  store i32 %366, i32* %368, align 8
  %369 = load i32, i32* %7, align 4
  %370 = load i32, i32* @ATOM_TRANSMITTER_ACTION_INIT, align 4
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %377

372:                                              ; preds = %365
  %373 = load i32, i32* %24, align 4
  %374 = call i8* @cpu_to_le16(i32 %373)
  %375 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_29__*
  %376 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %375, i32 0, i32 4
  store i8* %374, i8** %376, align 8
  br label %426

377:                                              ; preds = %365
  %378 = load i32, i32* %7, align 4
  %379 = load i32, i32* @ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH, align 4
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %390

381:                                              ; preds = %377
  %382 = load i32, i32* %8, align 4
  %383 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_29__*
  %384 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %383, i32 0, i32 3
  %385 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %384, i32 0, i32 0
  store i32 %382, i32* %385, align 8
  %386 = load i32, i32* %9, align 4
  %387 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_29__*
  %388 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %387, i32 0, i32 3
  %389 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %388, i32 0, i32 1
  store i32 %386, i32* %389, align 4
  br label %425

390:                                              ; preds = %377
  %391 = load i32, i32* %20, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %399

393:                                              ; preds = %390
  %394 = load i32, i32* %22, align 4
  %395 = sdiv i32 %394, 10
  %396 = call i8* @cpu_to_le16(i32 %395)
  %397 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_29__*
  %398 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %397, i32 0, i32 2
  store i8* %396, i8** %398, align 8
  br label %424

399:                                              ; preds = %390
  %400 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %401 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %402 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %400, i32 %403)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %415

406:                                              ; preds = %399
  %407 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %408 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = sdiv i32 %409, 2
  %411 = sdiv i32 %410, 10
  %412 = call i8* @cpu_to_le16(i32 %411)
  %413 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_29__*
  %414 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %413, i32 0, i32 2
  store i8* %412, i8** %414, align 8
  br label %423

415:                                              ; preds = %399
  %416 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %417 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = sdiv i32 %418, 10
  %420 = call i8* @cpu_to_le16(i32 %419)
  %421 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_29__*
  %422 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %421, i32 0, i32 2
  store i8* %420, i8** %422, align 8
  br label %423

423:                                              ; preds = %415, %406
  br label %424

424:                                              ; preds = %423, %393
  br label %425

425:                                              ; preds = %424, %381
  br label %426

426:                                              ; preds = %425, %372
  %427 = load i32, i32* %26, align 4
  %428 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_29__*
  %429 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %429, i32 0, i32 0
  store i32 %427, i32* %430, align 4
  %431 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %14, align 8
  %432 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %426
  %436 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_29__*
  %437 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %437, i32 0, i32 1
  store i32 1, i32* %438, align 4
  br label %439

439:                                              ; preds = %435, %426
  %440 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %441 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  switch i32 %442, label %455 [
    i32 131, label %443
    i32 130, label %447
    i32 129, label %451
  ]

443:                                              ; preds = %439
  %444 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_29__*
  %445 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %445, i32 0, i32 2
  store i32 0, i32* %446, align 4
  br label %455

447:                                              ; preds = %439
  %448 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_29__*
  %449 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %449, i32 0, i32 2
  store i32 1, i32* %450, align 4
  br label %455

451:                                              ; preds = %439
  %452 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_29__*
  %453 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %453, i32 0, i32 2
  store i32 2, i32* %454, align 4
  br label %455

455:                                              ; preds = %439, %451, %447, %443
  %456 = load i32, i32* %20, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %465

458:                                              ; preds = %455
  %459 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_29__*
  %460 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %460, i32 0, i32 3
  store i32 1, i32* %461, align 4
  %462 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_29__*
  %463 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %462, i32 0, i32 1
  %464 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %463, i32 0, i32 4
  store i32 1, i32* %464, align 4
  br label %494

465:                                              ; preds = %455
  %466 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %467 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %466, i32 0, i32 2
  %468 = load i32, i32* %467, align 8
  %469 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %470 = and i32 %468, %469
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %493

472:                                              ; preds = %465
  %473 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %14, align 8
  %474 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %481

477:                                              ; preds = %472
  %478 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_29__*
  %479 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %478, i32 0, i32 1
  %480 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %479, i32 0, i32 3
  store i32 1, i32* %480, align 4
  br label %481

481:                                              ; preds = %477, %472
  %482 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %483 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %484 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %482, i32 %485)
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %492

488:                                              ; preds = %481
  %489 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_29__*
  %490 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %490, i32 0, i32 5
  store i32 1, i32* %491, align 4
  br label %492

492:                                              ; preds = %488, %481
  br label %493

493:                                              ; preds = %492, %465
  br label %494

494:                                              ; preds = %493, %458
  br label %1020

495:                                              ; preds = %135
  %496 = load i32, i32* %7, align 4
  %497 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %498 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %497, i32 0, i32 0
  store i32 %496, i32* %498, align 8
  %499 = load i32, i32* %7, align 4
  %500 = load i32, i32* @ATOM_TRANSMITTER_ACTION_INIT, align 4
  %501 = icmp eq i32 %499, %500
  br i1 %501, label %502, label %507

502:                                              ; preds = %495
  %503 = load i32, i32* %24, align 4
  %504 = call i8* @cpu_to_le16(i32 %503)
  %505 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %506 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %505, i32 0, i32 5
  store i8* %504, i8** %506, align 8
  br label %556

507:                                              ; preds = %495
  %508 = load i32, i32* %7, align 4
  %509 = load i32, i32* @ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH, align 4
  %510 = icmp eq i32 %508, %509
  br i1 %510, label %511, label %520

511:                                              ; preds = %507
  %512 = load i32, i32* %8, align 4
  %513 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %514 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %513, i32 0, i32 4
  %515 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %514, i32 0, i32 0
  store i32 %512, i32* %515, align 8
  %516 = load i32, i32* %9, align 4
  %517 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %518 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %517, i32 0, i32 4
  %519 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %518, i32 0, i32 1
  store i32 %516, i32* %519, align 4
  br label %555

520:                                              ; preds = %507
  %521 = load i32, i32* %20, align 4
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %529

523:                                              ; preds = %520
  %524 = load i32, i32* %22, align 4
  %525 = sdiv i32 %524, 10
  %526 = call i8* @cpu_to_le16(i32 %525)
  %527 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %528 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %527, i32 0, i32 3
  store i8* %526, i8** %528, align 8
  br label %554

529:                                              ; preds = %520
  %530 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %531 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %532 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %531, i32 0, i32 1
  %533 = load i32, i32* %532, align 4
  %534 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %530, i32 %533)
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %545

536:                                              ; preds = %529
  %537 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %538 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 4
  %540 = sdiv i32 %539, 2
  %541 = sdiv i32 %540, 10
  %542 = call i8* @cpu_to_le16(i32 %541)
  %543 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %544 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %543, i32 0, i32 3
  store i8* %542, i8** %544, align 8
  br label %553

545:                                              ; preds = %529
  %546 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %547 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 4
  %549 = sdiv i32 %548, 10
  %550 = call i8* @cpu_to_le16(i32 %549)
  %551 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %552 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %551, i32 0, i32 3
  store i8* %550, i8** %552, align 8
  br label %553

553:                                              ; preds = %545, %536
  br label %554

554:                                              ; preds = %553, %523
  br label %555

555:                                              ; preds = %554, %511
  br label %556

556:                                              ; preds = %555, %502
  %557 = load i32, i32* %20, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %563

559:                                              ; preds = %556
  %560 = load i32, i32* %23, align 4
  %561 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %562 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %561, i32 0, i32 1
  store i32 %560, i32* %562, align 4
  br label %577

563:                                              ; preds = %556
  %564 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %565 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %566 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %565, i32 0, i32 1
  %567 = load i32, i32* %566, align 4
  %568 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %564, i32 %567)
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %573

570:                                              ; preds = %563
  %571 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %572 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %571, i32 0, i32 1
  store i32 8, i32* %572, align 4
  br label %576

573:                                              ; preds = %563
  %574 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %575 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %574, i32 0, i32 1
  store i32 4, i32* %575, align 4
  br label %576

576:                                              ; preds = %573, %570
  br label %577

577:                                              ; preds = %576, %559
  %578 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %14, align 8
  %579 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %578, i32 0, i32 2
  %580 = load i32, i32* %579, align 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %586

582:                                              ; preds = %577
  %583 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %584 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %583, i32 0, i32 2
  %585 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %584, i32 0, i32 0
  store i32 1, i32* %585, align 8
  br label %586

586:                                              ; preds = %582, %577
  %587 = load i32, i32* %26, align 4
  %588 = and i32 %587, 1
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %594

590:                                              ; preds = %586
  %591 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %592 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %591, i32 0, i32 2
  %593 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %592, i32 0, i32 1
  store i32 1, i32* %593, align 4
  br label %594

594:                                              ; preds = %590, %586
  %595 = load i32, i32* %20, align 4
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %607

597:                                              ; preds = %594
  %598 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %599 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %598, i32 0, i32 2
  %600 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 4
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %607

603:                                              ; preds = %597
  %604 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %605 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %604, i32 0, i32 2
  %606 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %605, i32 0, i32 2
  store i32 2, i32* %606, align 8
  br label %612

607:                                              ; preds = %597, %594
  %608 = load i32, i32* %21, align 4
  %609 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %610 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %609, i32 0, i32 2
  %611 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %610, i32 0, i32 2
  store i32 %608, i32* %611, align 8
  br label %612

612:                                              ; preds = %607, %603
  %613 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %614 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %613, i32 0, i32 0
  %615 = load i32, i32* %614, align 8
  switch i32 %615, label %628 [
    i32 131, label %616
    i32 130, label %620
    i32 129, label %624
  ]

616:                                              ; preds = %612
  %617 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %618 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %617, i32 0, i32 2
  %619 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %618, i32 0, i32 3
  store i32 0, i32* %619, align 4
  br label %628

620:                                              ; preds = %612
  %621 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %622 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %621, i32 0, i32 2
  %623 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %622, i32 0, i32 3
  store i32 1, i32* %623, align 4
  br label %628

624:                                              ; preds = %612
  %625 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %626 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %625, i32 0, i32 2
  %627 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %626, i32 0, i32 3
  store i32 2, i32* %627, align 4
  br label %628

628:                                              ; preds = %612, %624, %620, %616
  %629 = load i32, i32* %20, align 4
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %635

631:                                              ; preds = %628
  %632 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %633 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %632, i32 0, i32 2
  %634 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %633, i32 0, i32 4
  store i32 1, i32* %634, align 8
  br label %664

635:                                              ; preds = %628
  %636 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %637 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %636, i32 0, i32 2
  %638 = load i32, i32* %637, align 8
  %639 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %640 = and i32 %638, %639
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %663

642:                                              ; preds = %635
  %643 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %14, align 8
  %644 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %643, i32 0, i32 1
  %645 = load i32, i32* %644, align 4
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %651

647:                                              ; preds = %642
  %648 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %649 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %648, i32 0, i32 2
  %650 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %649, i32 0, i32 4
  store i32 1, i32* %650, align 8
  br label %651

651:                                              ; preds = %647, %642
  %652 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %653 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %654 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %653, i32 0, i32 1
  %655 = load i32, i32* %654, align 4
  %656 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %652, i32 %655)
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %658, label %662

658:                                              ; preds = %651
  %659 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_32__*
  %660 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %659, i32 0, i32 2
  %661 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %660, i32 0, i32 5
  store i32 1, i32* %661, align 4
  br label %662

662:                                              ; preds = %658, %651
  br label %663

663:                                              ; preds = %662, %635
  br label %664

664:                                              ; preds = %663, %631
  br label %1020

665:                                              ; preds = %135
  %666 = load i32, i32* %7, align 4
  %667 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %668 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %667, i32 0, i32 0
  store i32 %666, i32* %668, align 8
  %669 = load i32, i32* %7, align 4
  %670 = load i32, i32* @ATOM_TRANSMITTER_ACTION_INIT, align 4
  %671 = icmp eq i32 %669, %670
  br i1 %671, label %672, label %677

672:                                              ; preds = %665
  %673 = load i32, i32* %24, align 4
  %674 = call i8* @cpu_to_le16(i32 %673)
  %675 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %676 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %675, i32 0, i32 5
  store i8* %674, i8** %676, align 8
  br label %726

677:                                              ; preds = %665
  %678 = load i32, i32* %7, align 4
  %679 = load i32, i32* @ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH, align 4
  %680 = icmp eq i32 %678, %679
  br i1 %680, label %681, label %690

681:                                              ; preds = %677
  %682 = load i32, i32* %8, align 4
  %683 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %684 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %683, i32 0, i32 4
  %685 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %684, i32 0, i32 0
  store i32 %682, i32* %685, align 8
  %686 = load i32, i32* %9, align 4
  %687 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %688 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %687, i32 0, i32 4
  %689 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %688, i32 0, i32 1
  store i32 %686, i32* %689, align 4
  br label %725

690:                                              ; preds = %677
  %691 = load i32, i32* %20, align 4
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %699

693:                                              ; preds = %690
  %694 = load i32, i32* %22, align 4
  %695 = sdiv i32 %694, 10
  %696 = call i8* @cpu_to_le16(i32 %695)
  %697 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %698 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %697, i32 0, i32 3
  store i8* %696, i8** %698, align 8
  br label %724

699:                                              ; preds = %690
  %700 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %701 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %702 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %701, i32 0, i32 1
  %703 = load i32, i32* %702, align 4
  %704 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %700, i32 %703)
  %705 = icmp ne i32 %704, 0
  br i1 %705, label %706, label %715

706:                                              ; preds = %699
  %707 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %708 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %707, i32 0, i32 1
  %709 = load i32, i32* %708, align 4
  %710 = sdiv i32 %709, 2
  %711 = sdiv i32 %710, 10
  %712 = call i8* @cpu_to_le16(i32 %711)
  %713 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %714 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %713, i32 0, i32 3
  store i8* %712, i8** %714, align 8
  br label %723

715:                                              ; preds = %699
  %716 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %717 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %716, i32 0, i32 1
  %718 = load i32, i32* %717, align 4
  %719 = sdiv i32 %718, 10
  %720 = call i8* @cpu_to_le16(i32 %719)
  %721 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %722 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %721, i32 0, i32 3
  store i8* %720, i8** %722, align 8
  br label %723

723:                                              ; preds = %715, %706
  br label %724

724:                                              ; preds = %723, %693
  br label %725

725:                                              ; preds = %724, %681
  br label %726

726:                                              ; preds = %725, %672
  %727 = load i32, i32* %20, align 4
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %729, label %733

729:                                              ; preds = %726
  %730 = load i32, i32* %23, align 4
  %731 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %732 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %731, i32 0, i32 1
  store i32 %730, i32* %732, align 4
  br label %747

733:                                              ; preds = %726
  %734 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %735 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %736 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %735, i32 0, i32 1
  %737 = load i32, i32* %736, align 4
  %738 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %734, i32 %737)
  %739 = icmp ne i32 %738, 0
  br i1 %739, label %740, label %743

740:                                              ; preds = %733
  %741 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %742 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %741, i32 0, i32 1
  store i32 8, i32* %742, align 4
  br label %746

743:                                              ; preds = %733
  %744 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %745 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %744, i32 0, i32 1
  store i32 4, i32* %745, align 4
  br label %746

746:                                              ; preds = %743, %740
  br label %747

747:                                              ; preds = %746, %729
  %748 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %14, align 8
  %749 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %748, i32 0, i32 2
  %750 = load i32, i32* %749, align 4
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %752, label %756

752:                                              ; preds = %747
  %753 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %754 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %753, i32 0, i32 2
  %755 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %754, i32 0, i32 0
  store i32 1, i32* %755, align 8
  br label %756

756:                                              ; preds = %752, %747
  %757 = load i32, i32* %26, align 4
  %758 = and i32 %757, 1
  %759 = icmp ne i32 %758, 0
  br i1 %759, label %760, label %764

760:                                              ; preds = %756
  %761 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %762 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %761, i32 0, i32 2
  %763 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %762, i32 0, i32 1
  store i32 1, i32* %763, align 4
  br label %764

764:                                              ; preds = %760, %756
  %765 = load i32, i32* %20, align 4
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %767, label %785

767:                                              ; preds = %764
  %768 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %769 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %768, i32 0, i32 2
  %770 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %769, i32 0, i32 0
  %771 = load i32, i32* %770, align 4
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %773, label %779

773:                                              ; preds = %767
  %774 = load i8*, i8** @ENCODER_REFCLK_SRC_EXTCLK, align 8
  %775 = ptrtoint i8* %774 to i32
  %776 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %777 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %776, i32 0, i32 2
  %778 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %777, i32 0, i32 2
  store i32 %775, i32* %778, align 8
  br label %784

779:                                              ; preds = %767
  %780 = load i32, i32* @ENCODER_REFCLK_SRC_DCPLL, align 4
  %781 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %782 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %781, i32 0, i32 2
  %783 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %782, i32 0, i32 2
  store i32 %780, i32* %783, align 8
  br label %784

784:                                              ; preds = %779, %773
  br label %790

785:                                              ; preds = %764
  %786 = load i32, i32* %21, align 4
  %787 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %788 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %787, i32 0, i32 2
  %789 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %788, i32 0, i32 2
  store i32 %786, i32* %789, align 8
  br label %790

790:                                              ; preds = %785, %784
  %791 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %792 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %791, i32 0, i32 0
  %793 = load i32, i32* %792, align 8
  switch i32 %793, label %806 [
    i32 131, label %794
    i32 130, label %798
    i32 129, label %802
  ]

794:                                              ; preds = %790
  %795 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %796 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %795, i32 0, i32 2
  %797 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %796, i32 0, i32 3
  store i32 0, i32* %797, align 4
  br label %806

798:                                              ; preds = %790
  %799 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %800 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %799, i32 0, i32 2
  %801 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %800, i32 0, i32 3
  store i32 1, i32* %801, align 4
  br label %806

802:                                              ; preds = %790
  %803 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %804 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %803, i32 0, i32 2
  %805 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %804, i32 0, i32 3
  store i32 2, i32* %805, align 4
  br label %806

806:                                              ; preds = %790, %802, %798, %794
  %807 = load i32, i32* %20, align 4
  %808 = icmp ne i32 %807, 0
  br i1 %808, label %809, label %813

809:                                              ; preds = %806
  %810 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %811 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %810, i32 0, i32 2
  %812 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %811, i32 0, i32 4
  store i32 1, i32* %812, align 8
  br label %842

813:                                              ; preds = %806
  %814 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %815 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %814, i32 0, i32 2
  %816 = load i32, i32* %815, align 8
  %817 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %818 = and i32 %816, %817
  %819 = icmp ne i32 %818, 0
  br i1 %819, label %820, label %841

820:                                              ; preds = %813
  %821 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %14, align 8
  %822 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %821, i32 0, i32 1
  %823 = load i32, i32* %822, align 4
  %824 = icmp ne i32 %823, 0
  br i1 %824, label %825, label %829

825:                                              ; preds = %820
  %826 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %827 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %826, i32 0, i32 2
  %828 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %827, i32 0, i32 4
  store i32 1, i32* %828, align 8
  br label %829

829:                                              ; preds = %825, %820
  %830 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %831 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %832 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %831, i32 0, i32 1
  %833 = load i32, i32* %832, align 4
  %834 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %830, i32 %833)
  %835 = icmp ne i32 %834, 0
  br i1 %835, label %836, label %840

836:                                              ; preds = %829
  %837 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_19__*
  %838 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %837, i32 0, i32 2
  %839 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %838, i32 0, i32 5
  store i32 1, i32* %839, align 4
  br label %840

840:                                              ; preds = %836, %829
  br label %841

841:                                              ; preds = %840, %813
  br label %842

842:                                              ; preds = %841, %809
  br label %1020

843:                                              ; preds = %135
  %844 = load i32, i32* %7, align 4
  %845 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %846 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %845, i32 0, i32 0
  store i32 %844, i32* %846, align 8
  %847 = load i32, i32* %20, align 4
  %848 = icmp ne i32 %847, 0
  br i1 %848, label %849, label %855

849:                                              ; preds = %843
  %850 = load i32, i32* %22, align 4
  %851 = sdiv i32 %850, 10
  %852 = call i8* @cpu_to_le16(i32 %851)
  %853 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %854 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %853, i32 0, i32 8
  store i8* %852, i8** %854, align 8
  br label %863

855:                                              ; preds = %843
  %856 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %857 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %856, i32 0, i32 1
  %858 = load i32, i32* %857, align 4
  %859 = sdiv i32 %858, 10
  %860 = call i8* @cpu_to_le16(i32 %859)
  %861 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %862 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %861, i32 0, i32 8
  store i8* %860, i8** %862, align 8
  br label %863

863:                                              ; preds = %855, %849
  %864 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %865 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %864, i32 0, i32 0
  %866 = load i32, i32* %865, align 8
  switch i32 %866, label %913 [
    i32 131, label %867
    i32 130, label %881
    i32 129, label %895
    i32 128, label %909
  ]

867:                                              ; preds = %863
  %868 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %14, align 8
  %869 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %868, i32 0, i32 2
  %870 = load i32, i32* %869, align 4
  %871 = icmp ne i32 %870, 0
  br i1 %871, label %872, label %876

872:                                              ; preds = %867
  %873 = load i32, i32* @ATOM_PHY_ID_UNIPHYB, align 4
  %874 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %875 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %874, i32 0, i32 7
  store i32 %873, i32* %875, align 4
  br label %880

876:                                              ; preds = %867
  %877 = load i32, i32* @ATOM_PHY_ID_UNIPHYA, align 4
  %878 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %879 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %878, i32 0, i32 7
  store i32 %877, i32* %879, align 4
  br label %880

880:                                              ; preds = %876, %872
  br label %913

881:                                              ; preds = %863
  %882 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %14, align 8
  %883 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %882, i32 0, i32 2
  %884 = load i32, i32* %883, align 4
  %885 = icmp ne i32 %884, 0
  br i1 %885, label %886, label %890

886:                                              ; preds = %881
  %887 = load i32, i32* @ATOM_PHY_ID_UNIPHYD, align 4
  %888 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %889 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %888, i32 0, i32 7
  store i32 %887, i32* %889, align 4
  br label %894

890:                                              ; preds = %881
  %891 = load i32, i32* @ATOM_PHY_ID_UNIPHYC, align 4
  %892 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %893 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %892, i32 0, i32 7
  store i32 %891, i32* %893, align 4
  br label %894

894:                                              ; preds = %890, %886
  br label %913

895:                                              ; preds = %863
  %896 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %14, align 8
  %897 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %896, i32 0, i32 2
  %898 = load i32, i32* %897, align 4
  %899 = icmp ne i32 %898, 0
  br i1 %899, label %900, label %904

900:                                              ; preds = %895
  %901 = load i32, i32* @ATOM_PHY_ID_UNIPHYF, align 4
  %902 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %903 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %902, i32 0, i32 7
  store i32 %901, i32* %903, align 4
  br label %908

904:                                              ; preds = %895
  %905 = load i32, i32* @ATOM_PHY_ID_UNIPHYE, align 4
  %906 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %907 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %906, i32 0, i32 7
  store i32 %905, i32* %907, align 4
  br label %908

908:                                              ; preds = %904, %900
  br label %913

909:                                              ; preds = %863
  %910 = load i32, i32* @ATOM_PHY_ID_UNIPHYG, align 4
  %911 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %912 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %911, i32 0, i32 7
  store i32 %910, i32* %912, align 4
  br label %913

913:                                              ; preds = %863, %909, %908, %894, %880
  %914 = load i32, i32* %20, align 4
  %915 = icmp ne i32 %914, 0
  br i1 %915, label %916, label %920

916:                                              ; preds = %913
  %917 = load i32, i32* %23, align 4
  %918 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %919 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %918, i32 0, i32 1
  store i32 %917, i32* %919, align 4
  br label %934

920:                                              ; preds = %913
  %921 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %922 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %923 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %922, i32 0, i32 1
  %924 = load i32, i32* %923, align 4
  %925 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %921, i32 %924)
  %926 = icmp ne i32 %925, 0
  br i1 %926, label %927, label %930

927:                                              ; preds = %920
  %928 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %929 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %928, i32 0, i32 1
  store i32 8, i32* %929, align 4
  br label %933

930:                                              ; preds = %920
  %931 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %932 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %931, i32 0, i32 1
  store i32 4, i32* %932, align 4
  br label %933

933:                                              ; preds = %930, %927
  br label %934

934:                                              ; preds = %933, %916
  %935 = load i32, i32* %24, align 4
  %936 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %937 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %936, i32 0, i32 2
  store i32 %935, i32* %937, align 8
  %938 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %939 = call i32 @atombios_get_encoder_mode(%struct.drm_encoder* %938)
  %940 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %941 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %940, i32 0, i32 6
  store i32 %939, i32* %941, align 8
  %942 = load i32, i32* %20, align 4
  %943 = icmp ne i32 %942, 0
  br i1 %943, label %944, label %956

944:                                              ; preds = %934
  %945 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %946 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %945, i32 0, i32 2
  %947 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %946, i32 0, i32 0
  %948 = load i32, i32* %947, align 4
  %949 = icmp ne i32 %948, 0
  br i1 %949, label %950, label %956

950:                                              ; preds = %944
  %951 = load i8*, i8** @ENCODER_REFCLK_SRC_EXTCLK, align 8
  %952 = ptrtoint i8* %951 to i32
  %953 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %954 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %953, i32 0, i32 5
  %955 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %954, i32 0, i32 0
  store i32 %952, i32* %955, align 4
  br label %961

956:                                              ; preds = %944, %934
  %957 = load i32, i32* %21, align 4
  %958 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %959 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %958, i32 0, i32 5
  %960 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %959, i32 0, i32 0
  store i32 %957, i32* %960, align 4
  br label %961

961:                                              ; preds = %956, %950
  %962 = load i32, i32* %20, align 4
  %963 = icmp ne i32 %962, 0
  br i1 %963, label %964, label %968

964:                                              ; preds = %961
  %965 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %966 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %965, i32 0, i32 5
  %967 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %966, i32 0, i32 1
  store i32 1, i32* %967, align 4
  br label %986

968:                                              ; preds = %961
  %969 = load %struct.radeon_encoder*, %struct.radeon_encoder** %13, align 8
  %970 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %969, i32 0, i32 2
  %971 = load i32, i32* %970, align 8
  %972 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %973 = and i32 %971, %972
  %974 = icmp ne i32 %973, 0
  br i1 %974, label %975, label %985

975:                                              ; preds = %968
  %976 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %14, align 8
  %977 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %976, i32 0, i32 1
  %978 = load i32, i32* %977, align 4
  %979 = icmp ne i32 %978, 0
  br i1 %979, label %980, label %984

980:                                              ; preds = %975
  %981 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %982 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %981, i32 0, i32 5
  %983 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %982, i32 0, i32 1
  store i32 1, i32* %983, align 4
  br label %984

984:                                              ; preds = %980, %975
  br label %985

985:                                              ; preds = %984, %968
  br label %986

986:                                              ; preds = %985, %964
  %987 = load i32, i32* %27, align 4
  %988 = load i32, i32* @RADEON_HPD_NONE, align 4
  %989 = icmp eq i32 %987, %988
  br i1 %989, label %990, label %994

990:                                              ; preds = %986
  %991 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %992 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %991, i32 0, i32 5
  %993 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %992, i32 0, i32 2
  store i32 0, i32* %993, align 4
  br label %1000

994:                                              ; preds = %986
  %995 = load i32, i32* %27, align 4
  %996 = add nsw i32 %995, 1
  %997 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %998 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %997, i32 0, i32 5
  %999 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %998, i32 0, i32 2
  store i32 %996, i32* %999, align 4
  br label %1000

1000:                                             ; preds = %994, %990
  %1001 = load i32, i32* %10, align 4
  %1002 = icmp ne i32 %1001, -1
  br i1 %1002, label %1003, label %1006

1003:                                             ; preds = %1000
  %1004 = load i32, i32* %10, align 4
  %1005 = shl i32 1, %1004
  br label %1009

1006:                                             ; preds = %1000
  %1007 = load i32, i32* %26, align 4
  %1008 = shl i32 1, %1007
  br label %1009

1009:                                             ; preds = %1006, %1003
  %1010 = phi i32 [ %1005, %1003 ], [ %1008, %1006 ]
  %1011 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %1012 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1011, i32 0, i32 3
  store i32 %1010, i32* %1012, align 4
  %1013 = load i32, i32* %9, align 4
  %1014 = bitcast %union.dig_transmitter_control* %16 to %struct.TYPE_22__*
  %1015 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1014, i32 0, i32 4
  store i32 %1013, i32* %1015, align 8
  br label %1020

1016:                                             ; preds = %135
  %1017 = load i32, i32* %18, align 4
  %1018 = load i32, i32* %19, align 4
  %1019 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %1017, i32 %1018)
  br label %1020

1020:                                             ; preds = %1016, %1009, %842, %664, %494, %364
  br label %1025

1021:                                             ; preds = %133
  %1022 = load i32, i32* %18, align 4
  %1023 = load i32, i32* %19, align 4
  %1024 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %1022, i32 %1023)
  br label %1025

1025:                                             ; preds = %1021, %1020
  %1026 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %1027 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1026, i32 0, i32 1
  %1028 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1027, i32 0, i32 0
  %1029 = load i32, i32* %1028, align 4
  %1030 = load i32, i32* %17, align 4
  %1031 = bitcast %union.dig_transmitter_control* %16 to i32*
  %1032 = call i32 @atom_execute_table(i32 %1029, i32 %1030, i32* %1031)
  br label %1033

1033:                                             ; preds = %1025, %132, %100
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder_init(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i64) #1

declare dso_local i64 @ENCODER_MODE_IS_DP(i32) #1

declare dso_local i32 @atombios_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @memset(%union.dig_transmitter_control*, i32, i32) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
