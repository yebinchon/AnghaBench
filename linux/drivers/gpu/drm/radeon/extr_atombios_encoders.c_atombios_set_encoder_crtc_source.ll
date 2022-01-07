; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_set_encoder_crtc_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_set_encoder_crtc_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.radeon_encoder = type { i32, i32, i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32 }
%struct.radeon_crtc = type { i32 }
%union.crtc_source_param = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8*, i8* }
%struct.drm_connector = type { i32 }
%struct.TYPE_4__ = type { i32, i8* }

@COMMAND = common dso_local global i32 0, align 4
@SelectCRTC_Source = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP1_INDEX = common dso_local global i8* null, align 8
@ATOM_DEVICE_LCD1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD1_INDEX = common dso_local global i8* null, align 8
@ATOM_DEVICE_DFP3_INDEX = common dso_local global i8* null, align 8
@ATOM_DEVICE_DFP2_INDEX = common dso_local global i8* null, align 8
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV1_INDEX = common dso_local global i8* null, align 8
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_INDEX = common dso_local global i8* null, align 8
@ATOM_DEVICE_CRT1_INDEX = common dso_local global i8* null, align 8
@ATOM_DEVICE_CRT2_INDEX = common dso_local global i8* null, align 8
@ENCODER_OBJECT_ID_NONE = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_LVDS = common dso_local global i8* null, align 8
@DRM_MODE_CONNECTOR_VGA = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_CRT = common dso_local global i8* null, align 8
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ASIC_INT_DIG1_ENCODER_ID = common dso_local global i8* null, align 8
@ASIC_INT_DIG2_ENCODER_ID = common dso_local global i8* null, align 8
@ASIC_INT_DIG3_ENCODER_ID = common dso_local global i8* null, align 8
@ASIC_INT_DIG4_ENCODER_ID = common dso_local global i8* null, align 8
@ASIC_INT_DIG5_ENCODER_ID = common dso_local global i8* null, align 8
@ASIC_INT_DIG6_ENCODER_ID = common dso_local global i8* null, align 8
@ASIC_INT_DIG7_ENCODER_ID = common dso_local global i8* null, align 8
@ASIC_INT_DVO_ENCODER_ID = common dso_local global i8* null, align 8
@ASIC_INT_TV_ENCODER_ID = common dso_local global i8* null, align 8
@ASIC_INT_DAC1_ENCODER_ID = common dso_local global i8* null, align 8
@ASIC_INT_DAC2_ENCODER_ID = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Unknown table version: %d, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @atombios_set_encoder_crtc_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_set_encoder_crtc_source(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_encoder*, align 8
  %6 = alloca %struct.radeon_crtc*, align 8
  %7 = alloca %union.crtc_source_param, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %12 = alloca %struct.drm_connector*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 1
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %3, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %4, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %20 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %19)
  store %struct.radeon_encoder* %20, %struct.radeon_encoder** %5, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.radeon_crtc* @to_radeon_crtc(i32 %23)
  store %struct.radeon_crtc* %24, %struct.radeon_crtc** %6, align 8
  %25 = load i32, i32* @COMMAND, align 4
  %26 = load i32, i32* @SelectCRTC_Source, align 4
  %27 = call i32 @GetIndexIntoMasterTable(i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = call i32 @memset(%union.crtc_source_param* %7, i32 0, i32 24)
  %29 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @atom_parse_cmd_header(i32 %32, i32 %33, i32* %9, i32* %10)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %1
  br label %331

37:                                               ; preds = %1
  %38 = load i32, i32* %9, align 4
  switch i32 %38, label %314 [
    i32 1, label %39
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* %10, align 4
  switch i32 %40, label %42 [
    i32 1, label %41
    i32 2, label %156
  ]

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %39, %41
  %43 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %44 = call i32 @ASIC_IS_AVIVO(%struct.radeon_device* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %48 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %71

52:                                               ; preds = %42
  %53 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %54 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 143
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %59 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %70

63:                                               ; preds = %52
  %64 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %65 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 2
  %68 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %63, %57
  br label %71

71:                                               ; preds = %70, %46
  %72 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %73 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %155 [
    i32 132, label %75
    i32 135, label %75
    i32 134, label %79
    i32 133, label %79
    i32 140, label %95
    i32 141, label %95
    i32 137, label %95
    i32 143, label %99
    i32 139, label %99
    i32 142, label %127
    i32 138, label %127
  ]

75:                                               ; preds = %71, %71
  %76 = load i8*, i8** @ATOM_DEVICE_DFP1_INDEX, align 8
  %77 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_4__*
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %155

79:                                               ; preds = %71, %71
  %80 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %81 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i8*, i8** @ATOM_DEVICE_LCD1_INDEX, align 8
  %88 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_4__*
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  br label %94

90:                                               ; preds = %79
  %91 = load i8*, i8** @ATOM_DEVICE_DFP3_INDEX, align 8
  %92 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_4__*
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %90, %86
  br label %155

95:                                               ; preds = %71, %71, %71
  %96 = load i8*, i8** @ATOM_DEVICE_DFP2_INDEX, align 8
  %97 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_4__*
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  br label %155

99:                                               ; preds = %71, %71
  %100 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %101 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i8*, i8** @ATOM_DEVICE_TV1_INDEX, align 8
  %108 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_4__*
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  br label %126

110:                                              ; preds = %99
  %111 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %112 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i8*, i8** @ATOM_DEVICE_CV_INDEX, align 8
  %119 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_4__*
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  br label %125

121:                                              ; preds = %110
  %122 = load i8*, i8** @ATOM_DEVICE_CRT1_INDEX, align 8
  %123 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_4__*
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %121, %117
  br label %126

126:                                              ; preds = %125, %106
  br label %155

127:                                              ; preds = %71, %71
  %128 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %129 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i8*, i8** @ATOM_DEVICE_TV1_INDEX, align 8
  %136 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_4__*
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  br label %154

138:                                              ; preds = %127
  %139 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %140 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load i8*, i8** @ATOM_DEVICE_CV_INDEX, align 8
  %147 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_4__*
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  br label %153

149:                                              ; preds = %138
  %150 = load i8*, i8** @ATOM_DEVICE_CRT2_INDEX, align 8
  %151 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_4__*
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %149, %145
  br label %154

154:                                              ; preds = %153, %134
  br label %155

155:                                              ; preds = %71, %154, %126, %95, %94, %75
  br label %313

156:                                              ; preds = %39
  %157 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %158 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %163 = call i32 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %162)
  %164 = load i32, i32* @ENCODER_OBJECT_ID_NONE, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %195

166:                                              ; preds = %156
  %167 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %168 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %167)
  store %struct.drm_connector* %168, %struct.drm_connector** %12, align 8
  %169 = load %struct.drm_connector*, %struct.drm_connector** %12, align 8
  %170 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %166
  %175 = load i8*, i8** @ATOM_ENCODER_MODE_LVDS, align 8
  %176 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  store i8* %175, i8** %177, align 8
  br label %194

178:                                              ; preds = %166
  %179 = load %struct.drm_connector*, %struct.drm_connector** %12, align 8
  %180 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load i8*, i8** @ATOM_ENCODER_MODE_CRT, align 8
  %186 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  store i8* %185, i8** %187, align 8
  br label %193

188:                                              ; preds = %178
  %189 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %190 = call i8* @atombios_get_encoder_mode(%struct.drm_encoder* %189)
  %191 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 2
  store i8* %190, i8** %192, align 8
  br label %193

193:                                              ; preds = %188, %184
  br label %194

194:                                              ; preds = %193, %174
  br label %212

195:                                              ; preds = %156
  %196 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %197 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %195
  %203 = load i8*, i8** @ATOM_ENCODER_MODE_LVDS, align 8
  %204 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 2
  store i8* %203, i8** %205, align 8
  br label %211

206:                                              ; preds = %195
  %207 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %208 = call i8* @atombios_get_encoder_mode(%struct.drm_encoder* %207)
  %209 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 2
  store i8* %208, i8** %210, align 8
  br label %211

211:                                              ; preds = %206, %202
  br label %212

212:                                              ; preds = %211, %194
  %213 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %214 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  switch i32 %215, label %312 [
    i32 131, label %216
    i32 130, label %216
    i32 129, label %216
    i32 128, label %216
    i32 136, label %216
    i32 137, label %252
    i32 139, label %256
    i32 138, label %284
  ]

216:                                              ; preds = %212, %212, %212, %212, %212
  %217 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %218 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %217, i32 0, i32 3
  %219 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %218, align 8
  store %struct.radeon_encoder_atom_dig* %219, %struct.radeon_encoder_atom_dig** %11, align 8
  %220 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %11, align 8
  %221 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  switch i32 %222, label %251 [
    i32 0, label %223
    i32 1, label %227
    i32 2, label %231
    i32 3, label %235
    i32 4, label %239
    i32 5, label %243
    i32 6, label %247
  ]

223:                                              ; preds = %216
  %224 = load i8*, i8** @ASIC_INT_DIG1_ENCODER_ID, align 8
  %225 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  store i8* %224, i8** %226, align 8
  br label %251

227:                                              ; preds = %216
  %228 = load i8*, i8** @ASIC_INT_DIG2_ENCODER_ID, align 8
  %229 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 1
  store i8* %228, i8** %230, align 8
  br label %251

231:                                              ; preds = %216
  %232 = load i8*, i8** @ASIC_INT_DIG3_ENCODER_ID, align 8
  %233 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  store i8* %232, i8** %234, align 8
  br label %251

235:                                              ; preds = %216
  %236 = load i8*, i8** @ASIC_INT_DIG4_ENCODER_ID, align 8
  %237 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 1
  store i8* %236, i8** %238, align 8
  br label %251

239:                                              ; preds = %216
  %240 = load i8*, i8** @ASIC_INT_DIG5_ENCODER_ID, align 8
  %241 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 1
  store i8* %240, i8** %242, align 8
  br label %251

243:                                              ; preds = %216
  %244 = load i8*, i8** @ASIC_INT_DIG6_ENCODER_ID, align 8
  %245 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 1
  store i8* %244, i8** %246, align 8
  br label %251

247:                                              ; preds = %216
  %248 = load i8*, i8** @ASIC_INT_DIG7_ENCODER_ID, align 8
  %249 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 1
  store i8* %248, i8** %250, align 8
  br label %251

251:                                              ; preds = %216, %247, %243, %239, %235, %231, %227, %223
  br label %312

252:                                              ; preds = %212
  %253 = load i8*, i8** @ASIC_INT_DVO_ENCODER_ID, align 8
  %254 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 1
  store i8* %253, i8** %255, align 8
  br label %312

256:                                              ; preds = %212
  %257 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %258 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %256
  %264 = load i8*, i8** @ASIC_INT_TV_ENCODER_ID, align 8
  %265 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 1
  store i8* %264, i8** %266, align 8
  br label %283

267:                                              ; preds = %256
  %268 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %269 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %267
  %275 = load i8*, i8** @ASIC_INT_TV_ENCODER_ID, align 8
  %276 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 1
  store i8* %275, i8** %277, align 8
  br label %282

278:                                              ; preds = %267
  %279 = load i8*, i8** @ASIC_INT_DAC1_ENCODER_ID, align 8
  %280 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 1
  store i8* %279, i8** %281, align 8
  br label %282

282:                                              ; preds = %278, %274
  br label %283

283:                                              ; preds = %282, %263
  br label %312

284:                                              ; preds = %212
  %285 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %286 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %284
  %292 = load i8*, i8** @ASIC_INT_TV_ENCODER_ID, align 8
  %293 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 1
  store i8* %292, i8** %294, align 8
  br label %311

295:                                              ; preds = %284
  %296 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %297 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %295
  %303 = load i8*, i8** @ASIC_INT_TV_ENCODER_ID, align 8
  %304 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 1
  store i8* %303, i8** %305, align 8
  br label %310

306:                                              ; preds = %295
  %307 = load i8*, i8** @ASIC_INT_DAC2_ENCODER_ID, align 8
  %308 = bitcast %union.crtc_source_param* %7 to %struct.TYPE_5__*
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 1
  store i8* %307, i8** %309, align 8
  br label %310

310:                                              ; preds = %306, %302
  br label %311

311:                                              ; preds = %310, %291
  br label %312

312:                                              ; preds = %212, %311, %283, %252, %251
  br label %313

313:                                              ; preds = %312, %155
  br label %318

314:                                              ; preds = %37
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* %10, align 4
  %317 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %315, i32 %316)
  br label %331

318:                                              ; preds = %313
  %319 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %320 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %8, align 4
  %324 = bitcast %union.crtc_source_param* %7 to i32*
  %325 = call i32 @atom_execute_table(i32 %322, i32 %323, i32* %324)
  %326 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %327 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %328 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @radeon_atombios_encoder_crtc_scratch_regs(%struct.drm_encoder* %326, i32 %329)
  br label %331

331:                                              ; preds = %318, %314, %36
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i32) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%union.crtc_source_param*, i32, i32) #1

declare dso_local i32 @atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i32 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i8* @atombios_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

declare dso_local i32 @radeon_atombios_encoder_crtc_scratch_regs(%struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
