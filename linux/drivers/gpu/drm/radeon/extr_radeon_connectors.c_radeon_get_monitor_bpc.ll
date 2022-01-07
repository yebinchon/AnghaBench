; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_get_monitor_bpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_get_monitor_bpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_2__, i32, %struct.drm_connector_helper_funcs*, %struct.drm_device* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.drm_connector_helper_funcs = type { %struct.drm_encoder* (%struct.drm_connector.0*)* }
%struct.drm_encoder = type { i32 }
%struct.drm_connector.0 = type opaque
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_connector = type { i32, %struct.radeon_connector_atom_dig*, i32 }
%struct.radeon_connector_atom_dig = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32 }

@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i32 0, align 4
@ATOM_PANEL_MISC_V13_6BIT_PER_COLOR = common dso_local global i32 0, align 4
@ATOM_PANEL_MISC_V13_8BIT_PER_COLOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%s: HDMI deep color %d bpc unsupported. Using 8 bpc.\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: HDMI deep color %d bpc unsupported. Using 12 bpc.\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"%s: hdmi mode dotclock %d kHz, max tmds input clock %d kHz.\0A\00", align 1
@DRM_EDID_HDMI_DC_30 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"%s: HDMI deep color 12 bpc exceeds max tmds clock. Using %d bpc.\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"%s: HDMI deep color 10 bpc exceeds max tmds clock. Using %d bpc.\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"%s: Required max tmds clock for HDMI deep color missing. Using 8 bpc.\0A\00", align 1
@radeon_deep_color = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [74 x i8] c"%s: Deep color disabled. Set radeon module param deep_color=1 to enable.\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"%s: Display bpc=%d, returned bpc=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_get_monitor_bpc(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_connector*, align 8
  %6 = alloca %struct.radeon_connector_atom_dig*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_connector_helper_funcs*, align 8
  %11 = alloca %struct.drm_encoder*, align 8
  %12 = alloca %struct.radeon_encoder*, align 8
  %13 = alloca %struct.radeon_encoder_atom_dig*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 4
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %3, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %4, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %21 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %20)
  store %struct.radeon_connector* %21, %struct.radeon_connector** %5, align 8
  store i32 8, i32* %7, align 4
  %22 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %153 [
    i32 133, label %25
    i32 130, label %25
    i32 134, label %49
    i32 131, label %49
    i32 132, label %67
    i32 128, label %100
    i32 129, label %100
  ]

25:                                               ; preds = %1, %1
  %26 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %32 = call i32 @radeon_connector_edid(%struct.drm_connector* %31)
  %33 = call i64 @drm_detect_hdmi_monitor(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %37 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %43 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %41, %35
  br label %47

47:                                               ; preds = %46, %30
  br label %48

48:                                               ; preds = %47, %25
  br label %153

49:                                               ; preds = %1, %1
  %50 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %51 = call i32 @radeon_connector_edid(%struct.drm_connector* %50)
  %52 = call i64 @drm_detect_hdmi_monitor(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %56 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %62 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %60, %54
  br label %66

66:                                               ; preds = %65, %49
  br label %153

67:                                               ; preds = %1
  %68 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %69 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %68, i32 0, i32 1
  %70 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %69, align 8
  store %struct.radeon_connector_atom_dig* %70, %struct.radeon_connector_atom_dig** %6, align 8
  %71 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  %72 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %87, label %76

76:                                               ; preds = %67
  %77 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  %78 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CONNECTOR_OBJECT_ID_eDP, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %76
  %83 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %84 = call i32 @radeon_connector_edid(%struct.drm_connector* %83)
  %85 = call i64 @drm_detect_hdmi_monitor(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82, %76, %67
  %88 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %89 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %95 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %93, %87
  br label %99

99:                                               ; preds = %98, %82
  br label %153

100:                                              ; preds = %1, %1
  %101 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %102 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %108 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %7, align 4
  br label %152

111:                                              ; preds = %100
  %112 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %113 = call i32 @ASIC_IS_DCE41(%struct.radeon_device* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %117 = call i32 @ASIC_IS_DCE5(%struct.radeon_device* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %151

119:                                              ; preds = %115, %111
  %120 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %121 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %120, i32 0, i32 3
  %122 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %121, align 8
  store %struct.drm_connector_helper_funcs* %122, %struct.drm_connector_helper_funcs** %10, align 8
  %123 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %10, align 8
  %124 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %123, i32 0, i32 0
  %125 = load %struct.drm_encoder* (%struct.drm_connector.0*)*, %struct.drm_encoder* (%struct.drm_connector.0*)** %124, align 8
  %126 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %127 = bitcast %struct.drm_connector* %126 to %struct.drm_connector.0*
  %128 = call %struct.drm_encoder* %125(%struct.drm_connector.0* %127)
  store %struct.drm_encoder* %128, %struct.drm_encoder** %11, align 8
  %129 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %130 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %129)
  store %struct.radeon_encoder* %130, %struct.radeon_encoder** %12, align 8
  %131 = load %struct.radeon_encoder*, %struct.radeon_encoder** %12, align 8
  %132 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %131, i32 0, i32 0
  %133 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %132, align 8
  store %struct.radeon_encoder_atom_dig* %133, %struct.radeon_encoder_atom_dig** %13, align 8
  %134 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %135 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @ATOM_PANEL_MISC_V13_6BIT_PER_COLOR, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %119
  store i32 6, i32* %7, align 4
  br label %150

141:                                              ; preds = %119
  %142 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  %143 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @ATOM_PANEL_MISC_V13_8BIT_PER_COLOR, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  store i32 8, i32* %7, align 4
  br label %149

149:                                              ; preds = %148, %141
  br label %150

150:                                              ; preds = %149, %140
  br label %151

151:                                              ; preds = %150, %115
  br label %152

152:                                              ; preds = %151, %106
  br label %153

153:                                              ; preds = %1, %152, %99, %66, %48
  %154 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %155 = call i32 @radeon_connector_edid(%struct.drm_connector* %154)
  %156 = call i64 @drm_detect_hdmi_monitor(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %256

158:                                              ; preds = %153
  %159 = load i32, i32* %7, align 4
  %160 = icmp sgt i32 %159, 8
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %163 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %161
  %166 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %167 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %168, i32 %169)
  store i32 8, i32* %7, align 4
  br label %171

171:                                              ; preds = %165, %161, %158
  %172 = load i32, i32* %7, align 4
  %173 = icmp sgt i32 %172, 12
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %176 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %177, i32 %178)
  store i32 12, i32* %7, align 4
  br label %180

180:                                              ; preds = %174, %171
  %181 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %182 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %246

186:                                              ; preds = %180
  %187 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %188 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  store i32 %189, i32* %8, align 4
  %190 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %191 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %9, align 4
  %194 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %195 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %9, align 4
  %199 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %196, i32 %197, i32 %198)
  %200 = load i32, i32* %7, align 4
  %201 = icmp eq i32 %200, 12
  br i1 %201, label %202, label %230

202:                                              ; preds = %186
  %203 = load i32, i32* %8, align 4
  %204 = mul nsw i32 %203, 3
  %205 = sdiv i32 %204, 2
  %206 = load i32, i32* %9, align 4
  %207 = icmp sgt i32 %205, %206
  br i1 %207, label %208, label %230

208:                                              ; preds = %202
  %209 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %210 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @DRM_EDID_HDMI_DC_30, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %208
  %217 = load i32, i32* %8, align 4
  %218 = mul nsw i32 %217, 5
  %219 = sdiv i32 %218, 4
  %220 = load i32, i32* %9, align 4
  %221 = icmp sle i32 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  store i32 10, i32* %7, align 4
  br label %224

223:                                              ; preds = %216, %208
  store i32 8, i32* %7, align 4
  br label %224

224:                                              ; preds = %223, %222
  %225 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %226 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %224, %202, %186
  %231 = load i32, i32* %7, align 4
  %232 = icmp eq i32 %231, 10
  br i1 %232, label %233, label %245

233:                                              ; preds = %230
  %234 = load i32, i32* %8, align 4
  %235 = mul nsw i32 %234, 5
  %236 = sdiv i32 %235, 4
  %237 = load i32, i32* %9, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %245

239:                                              ; preds = %233
  store i32 8, i32* %7, align 4
  %240 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %241 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %7, align 4
  %244 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %239, %233, %230
  br label %255

246:                                              ; preds = %180
  %247 = load i32, i32* %7, align 4
  %248 = icmp sgt i32 %247, 8
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  %250 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %251 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32 %252)
  store i32 8, i32* %7, align 4
  br label %254

254:                                              ; preds = %249, %246
  br label %255

255:                                              ; preds = %254, %245
  br label %256

256:                                              ; preds = %255, %153
  %257 = load i64, i64* @radeon_deep_color, align 8
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %267

259:                                              ; preds = %256
  %260 = load i32, i32* %7, align 4
  %261 = icmp sgt i32 %260, 8
  br i1 %261, label %262, label %267

262:                                              ; preds = %259
  %263 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %264 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i32 %265)
  store i32 8, i32* %7, align 4
  br label %267

267:                                              ; preds = %262, %259, %256
  %268 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %269 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %272 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %7, align 4
  %276 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %270, i32 %274, i32 %275)
  %277 = load i32, i32* %7, align 4
  ret i32 %277
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i64 @drm_detect_hdmi_monitor(i32) #1

declare dso_local i32 @radeon_connector_edid(%struct.drm_connector*) #1

declare dso_local i32 @ASIC_IS_DCE41(%struct.radeon_device*) #1

declare dso_local i32 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
