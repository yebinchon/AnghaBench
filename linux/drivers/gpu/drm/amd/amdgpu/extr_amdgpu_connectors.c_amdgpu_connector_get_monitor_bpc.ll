; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_get_monitor_bpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_get_monitor_bpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_2__, i32, %struct.drm_connector_helper_funcs* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.drm_connector_helper_funcs = type { %struct.drm_encoder* (%struct.drm_connector.0*)* }
%struct.drm_encoder = type { i32 }
%struct.drm_connector.0 = type opaque
%struct.amdgpu_connector = type { i32, %struct.amdgpu_connector_atom_dig*, i32 }
%struct.amdgpu_connector_atom_dig = type { i32 }
%struct.amdgpu_encoder = type { %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { i32 }

@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i32 0, align 4
@ATOM_PANEL_MISC_V13_6BIT_PER_COLOR = common dso_local global i32 0, align 4
@ATOM_PANEL_MISC_V13_8BIT_PER_COLOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s: HDMI deep color %d bpc unsupported. Using 12 bpc.\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"%s: hdmi mode dotclock %d kHz, max tmds input clock %d kHz.\0A\00", align 1
@DRM_EDID_HDMI_DC_30 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"%s: HDMI deep color 12 bpc exceeds max tmds clock. Using %d bpc.\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"%s: HDMI deep color 10 bpc exceeds max tmds clock. Using %d bpc.\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"%s: Required max tmds clock for HDMI deep color missing. Using 8 bpc.\0A\00", align 1
@amdgpu_deep_color = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [74 x i8] c"%s: Deep color disabled. Set amdgpu module param deep_color=1 to enable.\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"%s: Display bpc=%d, returned bpc=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_connector_get_monitor_bpc(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.amdgpu_connector*, align 8
  %4 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_connector_helper_funcs*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.amdgpu_encoder*, align 8
  %11 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %13 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %12)
  store %struct.amdgpu_connector* %13, %struct.amdgpu_connector** %3, align 8
  store i32 8, i32* %5, align 4
  %14 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %136 [
    i32 133, label %17
    i32 130, label %17
    i32 134, label %41
    i32 131, label %41
    i32 132, label %59
    i32 128, label %92
    i32 129, label %92
  ]

17:                                               ; preds = %1, %1
  %18 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %24 = call i32 @amdgpu_connector_edid(%struct.drm_connector* %23)
  %25 = call i64 @drm_detect_hdmi_monitor(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %29 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %35 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %27
  br label %39

39:                                               ; preds = %38, %22
  br label %40

40:                                               ; preds = %39, %17
  br label %136

41:                                               ; preds = %1, %1
  %42 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %43 = call i32 @amdgpu_connector_edid(%struct.drm_connector* %42)
  %44 = call i64 @drm_detect_hdmi_monitor(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %48 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %54 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %46
  br label %58

58:                                               ; preds = %57, %41
  br label %136

59:                                               ; preds = %1
  %60 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %3, align 8
  %61 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %60, i32 0, i32 1
  %62 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %61, align 8
  store %struct.amdgpu_connector_atom_dig* %62, %struct.amdgpu_connector_atom_dig** %4, align 8
  %63 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %4, align 8
  %64 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %79, label %68

68:                                               ; preds = %59
  %69 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %4, align 8
  %70 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CONNECTOR_OBJECT_ID_eDP, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %76 = call i32 @amdgpu_connector_edid(%struct.drm_connector* %75)
  %77 = call i64 @drm_detect_hdmi_monitor(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74, %68, %59
  %80 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %81 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %87 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %85, %79
  br label %91

91:                                               ; preds = %90, %74
  br label %136

92:                                               ; preds = %1, %1
  %93 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %94 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %100 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %5, align 4
  br label %135

103:                                              ; preds = %92
  %104 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %105 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %104, i32 0, i32 3
  %106 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %105, align 8
  store %struct.drm_connector_helper_funcs* %106, %struct.drm_connector_helper_funcs** %8, align 8
  %107 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %8, align 8
  %108 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %107, i32 0, i32 0
  %109 = load %struct.drm_encoder* (%struct.drm_connector.0*)*, %struct.drm_encoder* (%struct.drm_connector.0*)** %108, align 8
  %110 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %111 = bitcast %struct.drm_connector* %110 to %struct.drm_connector.0*
  %112 = call %struct.drm_encoder* %109(%struct.drm_connector.0* %111)
  store %struct.drm_encoder* %112, %struct.drm_encoder** %9, align 8
  %113 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %114 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %113)
  store %struct.amdgpu_encoder* %114, %struct.amdgpu_encoder** %10, align 8
  %115 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %116 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %115, i32 0, i32 0
  %117 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %116, align 8
  store %struct.amdgpu_encoder_atom_dig* %117, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %118 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %119 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ATOM_PANEL_MISC_V13_6BIT_PER_COLOR, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %103
  store i32 6, i32* %5, align 4
  br label %134

125:                                              ; preds = %103
  %126 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %11, align 8
  %127 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @ATOM_PANEL_MISC_V13_8BIT_PER_COLOR, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store i32 8, i32* %5, align 4
  br label %133

133:                                              ; preds = %132, %125
  br label %134

134:                                              ; preds = %133, %124
  br label %135

135:                                              ; preds = %134, %98
  br label %136

136:                                              ; preds = %1, %135, %91, %58, %40
  %137 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %138 = call i32 @amdgpu_connector_edid(%struct.drm_connector* %137)
  %139 = call i64 @drm_detect_hdmi_monitor(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %226

141:                                              ; preds = %136
  %142 = load i32, i32* %5, align 4
  %143 = icmp sgt i32 %142, 12
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %146 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %147, i32 %148)
  store i32 12, i32* %5, align 4
  br label %150

150:                                              ; preds = %144, %141
  %151 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %152 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ugt i32 %154, 0
  br i1 %155, label %156, label %216

156:                                              ; preds = %150
  %157 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %3, align 8
  %158 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %6, align 4
  %160 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %161 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %7, align 4
  %164 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %165 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %7, align 4
  %169 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %166, i32 %167, i32 %168)
  %170 = load i32, i32* %5, align 4
  %171 = icmp eq i32 %170, 12
  br i1 %171, label %172, label %200

172:                                              ; preds = %156
  %173 = load i32, i32* %6, align 4
  %174 = mul i32 %173, 3
  %175 = udiv i32 %174, 2
  %176 = load i32, i32* %7, align 4
  %177 = icmp ugt i32 %175, %176
  br i1 %177, label %178, label %200

178:                                              ; preds = %172
  %179 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %180 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @DRM_EDID_HDMI_DC_30, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %178
  %187 = load i32, i32* %6, align 4
  %188 = mul i32 %187, 5
  %189 = udiv i32 %188, 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ule i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  store i32 10, i32* %5, align 4
  br label %194

193:                                              ; preds = %186, %178
  store i32 8, i32* %5, align 4
  br label %194

194:                                              ; preds = %193, %192
  %195 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %196 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %194, %172, %156
  %201 = load i32, i32* %5, align 4
  %202 = icmp eq i32 %201, 10
  br i1 %202, label %203, label %215

203:                                              ; preds = %200
  %204 = load i32, i32* %6, align 4
  %205 = mul i32 %204, 5
  %206 = udiv i32 %205, 4
  %207 = load i32, i32* %7, align 4
  %208 = icmp ugt i32 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %203
  store i32 8, i32* %5, align 4
  %210 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %211 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %5, align 4
  %214 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %209, %203, %200
  br label %225

216:                                              ; preds = %150
  %217 = load i32, i32* %5, align 4
  %218 = icmp sgt i32 %217, 8
  br i1 %218, label %219, label %224

219:                                              ; preds = %216
  %220 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %221 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 %222)
  store i32 8, i32* %5, align 4
  br label %224

224:                                              ; preds = %219, %216
  br label %225

225:                                              ; preds = %224, %215
  br label %226

226:                                              ; preds = %225, %136
  %227 = load i64, i64* @amdgpu_deep_color, align 8
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %226
  %230 = load i32, i32* %5, align 4
  %231 = icmp sgt i32 %230, 8
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %234 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %235)
  store i32 8, i32* %5, align 4
  br label %237

237:                                              ; preds = %232, %229, %226
  %238 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %239 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %242 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %5, align 4
  %246 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %240, i32 %244, i32 %245)
  %247 = load i32, i32* %5, align 4
  ret i32 %247
}

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i64 @drm_detect_hdmi_monitor(i32) #1

declare dso_local i32 @amdgpu_connector_edid(%struct.drm_connector*) #1

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
