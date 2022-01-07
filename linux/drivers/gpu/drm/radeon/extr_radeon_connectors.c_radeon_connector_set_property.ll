; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_connector_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_connector_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_encoder*, %struct.drm_connector_helper_funcs*, %struct.drm_device* }
%struct.drm_encoder = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.drm_crtc*, i32*, i32*, i32*, i32, i32*)* }
%struct.drm_connector_helper_funcs = type { %struct.drm_encoder* (%struct.drm_connector.0*)* }
%struct.drm_connector.0 = type opaque
%struct.drm_device = type { %struct.TYPE_5__, %struct.radeon_device* }
%struct.TYPE_5__ = type { %struct.drm_property* }
%struct.radeon_device = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_property = type { i32 }
%struct.radeon_encoder = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.radeon_encoder_tv_dac* }
%struct.TYPE_6__ = type { i64 }
%struct.radeon_encoder_tv_dac = type { i32, i32 }
%struct.radeon_encoder_atom_dig = type { i32, i32 }
%struct.radeon_connector = type { i32, i32, i32 }
%struct.radeon_encoder_atom_dac = type { i32, i32 }
%struct.radeon_encoder_int_tmds = type { i32, i32 }
%struct.radeon_crtc = type { i32 }

@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TVDAC = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DAC = common dso_local global i32 0, align 4
@radeon_r4xx_atom = common dso_local global i64 0, align 8
@RMX_OFF = common dso_local global i32 0, align 4
@RMX_CENTER = common dso_local global i32 0, align 4
@RMX_ASPECT = common dso_local global i32 0, align 4
@RMX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_property*, i32)* @radeon_connector_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_connector_set_property(%struct.drm_connector* %0, %struct.drm_property* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.radeon_device*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  %11 = alloca %struct.radeon_encoder*, align 8
  %12 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.radeon_connector*, align 8
  %15 = alloca %struct.radeon_connector*, align 8
  %16 = alloca %struct.radeon_encoder_atom_dac*, align 8
  %17 = alloca %struct.radeon_encoder_tv_dac*, align 8
  %18 = alloca %struct.radeon_connector*, align 8
  %19 = alloca %struct.radeon_encoder_int_tmds*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.drm_connector_helper_funcs*, align 8
  %23 = alloca %struct.drm_connector_helper_funcs*, align 8
  %24 = alloca %struct.drm_crtc*, align 8
  %25 = alloca %struct.radeon_crtc*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_property* %1, %struct.drm_property** %6, align 8
  store i32 %2, i32* %7, align 4
  %26 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %27 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %26, i32 0, i32 2
  %28 = load %struct.drm_device*, %struct.drm_device** %27, align 8
  store %struct.drm_device* %28, %struct.drm_device** %8, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 1
  %31 = load %struct.radeon_device*, %struct.radeon_device** %30, align 8
  store %struct.radeon_device* %31, %struct.radeon_device** %9, align 8
  %32 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %33 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 9
  %36 = load %struct.drm_property*, %struct.drm_property** %35, align 8
  %37 = icmp eq %struct.drm_property* %32, %36
  br i1 %37, label %38, label %75

38:                                               ; preds = %3
  %39 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %40 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %41 = call %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %39, i32 %40)
  store %struct.drm_encoder* %41, %struct.drm_encoder** %10, align 8
  %42 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %43 = icmp ne %struct.drm_encoder* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %496

45:                                               ; preds = %38
  %46 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %47 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %46)
  store %struct.radeon_encoder* %47, %struct.radeon_encoder** %11, align 8
  %48 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %49 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %48, i32 0, i32 7
  %50 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %49, align 8
  %51 = icmp ne %struct.radeon_encoder_tv_dac* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %496

53:                                               ; preds = %45
  %54 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %55 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %54, i32 0, i32 7
  %56 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %55, align 8
  %57 = bitcast %struct.radeon_encoder_tv_dac* %56 to %struct.radeon_encoder_atom_dig*
  store %struct.radeon_encoder_atom_dig* %57, %struct.radeon_encoder_atom_dig** %12, align 8
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  store i32 %61, i32* %13, align 4
  %62 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %63 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %53
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %12, align 8
  %70 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %72 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %71, i32 0, i32 5
  %73 = call i32 @radeon_property_change_mode(i32* %72)
  br label %74

74:                                               ; preds = %67, %53
  br label %75

75:                                               ; preds = %74, %3
  %76 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %77 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 8
  %80 = load %struct.drm_property*, %struct.drm_property** %79, align 8
  %81 = icmp eq %struct.drm_property* %76, %80
  br i1 %81, label %82, label %107

82:                                               ; preds = %75
  %83 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %84 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %83)
  store %struct.radeon_connector* %84, %struct.radeon_connector** %14, align 8
  %85 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %86 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %87 = call %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %85, i32 %86)
  store %struct.drm_encoder* %87, %struct.drm_encoder** %10, align 8
  %88 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %89 = icmp ne %struct.drm_encoder* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %496

91:                                               ; preds = %82
  %92 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %93 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %92)
  store %struct.radeon_encoder* %93, %struct.radeon_encoder** %11, align 8
  %94 = load %struct.radeon_connector*, %struct.radeon_connector** %14, align 8
  %95 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.radeon_connector*, %struct.radeon_connector** %14, align 8
  %102 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %104 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %103, i32 0, i32 5
  %105 = call i32 @radeon_property_change_mode(i32* %104)
  br label %106

106:                                              ; preds = %99, %91
  br label %107

107:                                              ; preds = %106, %75
  %108 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %109 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 7
  %112 = load %struct.drm_property*, %struct.drm_property** %111, align 8
  %113 = icmp eq %struct.drm_property* %108, %112
  br i1 %113, label %114, label %139

114:                                              ; preds = %107
  %115 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %116 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %115)
  store %struct.radeon_connector* %116, %struct.radeon_connector** %15, align 8
  %117 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %118 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %119 = call %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %117, i32 %118)
  store %struct.drm_encoder* %119, %struct.drm_encoder** %10, align 8
  %120 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %121 = icmp ne %struct.drm_encoder* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %496

123:                                              ; preds = %114
  %124 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %125 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %124)
  store %struct.radeon_encoder* %125, %struct.radeon_encoder** %11, align 8
  %126 = load %struct.radeon_connector*, %struct.radeon_connector** %15, align 8
  %127 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %123
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.radeon_connector*, %struct.radeon_connector** %15, align 8
  %134 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %136 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %135, i32 0, i32 5
  %137 = call i32 @radeon_property_change_mode(i32* %136)
  br label %138

138:                                              ; preds = %131, %123
  br label %139

139:                                              ; preds = %138, %107
  %140 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %141 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %142 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 6
  %144 = load %struct.drm_property*, %struct.drm_property** %143, align 8
  %145 = icmp eq %struct.drm_property* %140, %144
  br i1 %145, label %146, label %169

146:                                              ; preds = %139
  %147 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %148 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %149 = call %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %147, i32 %148)
  store %struct.drm_encoder* %149, %struct.drm_encoder** %10, align 8
  %150 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %151 = icmp ne %struct.drm_encoder* %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  br label %496

153:                                              ; preds = %146
  %154 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %155 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %154)
  store %struct.radeon_encoder* %155, %struct.radeon_encoder** %11, align 8
  %156 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %157 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %153
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %164 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %166 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %165, i32 0, i32 5
  %167 = call i32 @radeon_property_change_mode(i32* %166)
  br label %168

168:                                              ; preds = %161, %153
  br label %169

169:                                              ; preds = %168, %139
  %170 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %171 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %172 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 5
  %174 = load %struct.drm_property*, %struct.drm_property** %173, align 8
  %175 = icmp eq %struct.drm_property* %170, %174
  br i1 %175, label %176, label %199

176:                                              ; preds = %169
  %177 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %178 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %179 = call %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %177, i32 %178)
  store %struct.drm_encoder* %179, %struct.drm_encoder** %10, align 8
  %180 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %181 = icmp ne %struct.drm_encoder* %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %176
  store i32 0, i32* %4, align 4
  br label %496

183:                                              ; preds = %176
  %184 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %185 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %184)
  store %struct.radeon_encoder* %185, %struct.radeon_encoder** %11, align 8
  %186 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %187 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %183
  %192 = load i32, i32* %7, align 4
  %193 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %194 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %196 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %195, i32 0, i32 5
  %197 = call i32 @radeon_property_change_mode(i32* %196)
  br label %198

198:                                              ; preds = %191, %183
  br label %199

199:                                              ; preds = %198, %169
  %200 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %201 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %202 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 4
  %204 = load %struct.drm_property*, %struct.drm_property** %203, align 8
  %205 = icmp eq %struct.drm_property* %200, %204
  br i1 %205, label %206, label %229

206:                                              ; preds = %199
  %207 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %208 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %209 = call %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %207, i32 %208)
  store %struct.drm_encoder* %209, %struct.drm_encoder** %10, align 8
  %210 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %211 = icmp ne %struct.drm_encoder* %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %206
  store i32 0, i32* %4, align 4
  br label %496

213:                                              ; preds = %206
  %214 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %215 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %214)
  store %struct.radeon_encoder* %215, %struct.radeon_encoder** %11, align 8
  %216 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %217 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* %7, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %213
  %222 = load i32, i32* %7, align 4
  %223 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %224 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %226 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %225, i32 0, i32 5
  %227 = call i32 @radeon_property_change_mode(i32* %226)
  br label %228

228:                                              ; preds = %221, %213
  br label %229

229:                                              ; preds = %228, %199
  %230 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %231 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %232 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 3
  %234 = load %struct.drm_property*, %struct.drm_property** %233, align 8
  %235 = icmp eq %struct.drm_property* %230, %234
  br i1 %235, label %236, label %284

236:                                              ; preds = %229
  %237 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %238 = load i32, i32* @DRM_MODE_ENCODER_TVDAC, align 4
  %239 = call %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %237, i32 %238)
  store %struct.drm_encoder* %239, %struct.drm_encoder** %10, align 8
  %240 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %241 = icmp ne %struct.drm_encoder* %240, null
  br i1 %241, label %246, label %242

242:                                              ; preds = %236
  %243 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %244 = load i32, i32* @DRM_MODE_ENCODER_DAC, align 4
  %245 = call %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %243, i32 %244)
  store %struct.drm_encoder* %245, %struct.drm_encoder** %10, align 8
  br label %246

246:                                              ; preds = %242, %236
  %247 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %248 = icmp ne %struct.drm_encoder* %247, null
  br i1 %248, label %250, label %249

249:                                              ; preds = %246
  store i32 0, i32* %4, align 4
  br label %496

250:                                              ; preds = %246
  %251 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %252 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %251)
  store %struct.radeon_encoder* %252, %struct.radeon_encoder** %11, align 8
  %253 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %254 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %253, i32 0, i32 7
  %255 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %254, align 8
  %256 = icmp ne %struct.radeon_encoder_tv_dac* %255, null
  br i1 %256, label %258, label %257

257:                                              ; preds = %250
  store i32 0, i32* %4, align 4
  br label %496

258:                                              ; preds = %250
  %259 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %260 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %258
  %263 = load i64, i64* @radeon_r4xx_atom, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %262, %258
  %266 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %267 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %266, i32 0, i32 7
  %268 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %267, align 8
  %269 = bitcast %struct.radeon_encoder_tv_dac* %268 to %struct.radeon_encoder_atom_dac*
  store %struct.radeon_encoder_atom_dac* %269, %struct.radeon_encoder_atom_dac** %16, align 8
  %270 = load i32, i32* %7, align 4
  %271 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %16, align 8
  %272 = getelementptr inbounds %struct.radeon_encoder_atom_dac, %struct.radeon_encoder_atom_dac* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 4
  br label %280

273:                                              ; preds = %262
  %274 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %275 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %274, i32 0, i32 7
  %276 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %275, align 8
  store %struct.radeon_encoder_tv_dac* %276, %struct.radeon_encoder_tv_dac** %17, align 8
  %277 = load i32, i32* %7, align 4
  %278 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %17, align 8
  %279 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %278, i32 0, i32 1
  store i32 %277, i32* %279, align 4
  br label %280

280:                                              ; preds = %273, %265
  %281 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %282 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %281, i32 0, i32 5
  %283 = call i32 @radeon_property_change_mode(i32* %282)
  br label %284

284:                                              ; preds = %280, %229
  %285 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %286 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %287 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 2
  %289 = load %struct.drm_property*, %struct.drm_property** %288, align 8
  %290 = icmp eq %struct.drm_property* %285, %289
  br i1 %290, label %291, label %303

291:                                              ; preds = %284
  %292 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %293 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %292)
  store %struct.radeon_connector* %293, %struct.radeon_connector** %18, align 8
  %294 = load i32, i32* %7, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %291
  %297 = load %struct.radeon_connector*, %struct.radeon_connector** %18, align 8
  %298 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %297, i32 0, i32 2
  store i32 0, i32* %298, align 4
  br label %302

299:                                              ; preds = %291
  %300 = load %struct.radeon_connector*, %struct.radeon_connector** %18, align 8
  %301 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %300, i32 0, i32 2
  store i32 1, i32* %301, align 4
  br label %302

302:                                              ; preds = %299, %296
  br label %303

303:                                              ; preds = %302, %284
  %304 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %305 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %306 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 1
  %308 = load %struct.drm_property*, %struct.drm_property** %307, align 8
  %309 = icmp eq %struct.drm_property* %304, %308
  br i1 %309, label %310, label %361

310:                                              ; preds = %303
  store %struct.radeon_encoder_int_tmds* null, %struct.radeon_encoder_int_tmds** %19, align 8
  store i32 0, i32* %20, align 4
  %311 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %312 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %313 = call %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %311, i32 %312)
  store %struct.drm_encoder* %313, %struct.drm_encoder** %10, align 8
  %314 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %315 = icmp ne %struct.drm_encoder* %314, null
  br i1 %315, label %317, label %316

316:                                              ; preds = %310
  store i32 0, i32* %4, align 4
  br label %496

317:                                              ; preds = %310
  %318 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %319 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %318)
  store %struct.radeon_encoder* %319, %struct.radeon_encoder** %11, align 8
  %320 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %321 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %320, i32 0, i32 7
  %322 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %321, align 8
  %323 = bitcast %struct.radeon_encoder_tv_dac* %322 to %struct.radeon_encoder_int_tmds*
  store %struct.radeon_encoder_int_tmds* %323, %struct.radeon_encoder_int_tmds** %19, align 8
  %324 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %19, align 8
  %325 = icmp ne %struct.radeon_encoder_int_tmds* %324, null
  br i1 %325, label %327, label %326

326:                                              ; preds = %317
  store i32 0, i32* %4, align 4
  br label %496

327:                                              ; preds = %317
  %328 = load i32, i32* %7, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %346

330:                                              ; preds = %327
  %331 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %332 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %330
  %336 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %337 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %19, align 8
  %338 = bitcast %struct.radeon_encoder_int_tmds* %337 to %struct.radeon_encoder_tv_dac*
  %339 = call i32 @radeon_atombios_get_tmds_info(%struct.radeon_encoder* %336, %struct.radeon_encoder_tv_dac* %338)
  store i32 %339, i32* %20, align 4
  br label %345

340:                                              ; preds = %330
  %341 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %342 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %19, align 8
  %343 = bitcast %struct.radeon_encoder_int_tmds* %342 to %struct.radeon_encoder_tv_dac*
  %344 = call i32 @radeon_legacy_get_tmds_info_from_combios(%struct.radeon_encoder* %341, %struct.radeon_encoder_tv_dac* %343)
  store i32 %344, i32* %20, align 4
  br label %345

345:                                              ; preds = %340, %335
  br label %346

346:                                              ; preds = %345, %327
  %347 = load i32, i32* %7, align 4
  %348 = icmp eq i32 %347, 1
  br i1 %348, label %352, label %349

349:                                              ; preds = %346
  %350 = load i32, i32* %20, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %349, %346
  %353 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %354 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %19, align 8
  %355 = bitcast %struct.radeon_encoder_int_tmds* %354 to %struct.radeon_encoder_tv_dac*
  %356 = call i32 @radeon_legacy_get_tmds_info_from_table(%struct.radeon_encoder* %353, %struct.radeon_encoder_tv_dac* %355)
  br label %357

357:                                              ; preds = %352, %349
  %358 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %359 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %358, i32 0, i32 5
  %360 = call i32 @radeon_property_change_mode(i32* %359)
  br label %361

361:                                              ; preds = %357, %303
  %362 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %363 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %364 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 0
  %366 = load %struct.drm_property*, %struct.drm_property** %365, align 8
  %367 = icmp eq %struct.drm_property* %362, %366
  br i1 %367, label %368, label %424

368:                                              ; preds = %361
  %369 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %370 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %369, i32 0, i32 0
  %371 = load %struct.drm_encoder*, %struct.drm_encoder** %370, align 8
  %372 = icmp ne %struct.drm_encoder* %371, null
  br i1 %372, label %373, label %378

373:                                              ; preds = %368
  %374 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %375 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %374, i32 0, i32 0
  %376 = load %struct.drm_encoder*, %struct.drm_encoder** %375, align 8
  %377 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %376)
  store %struct.radeon_encoder* %377, %struct.radeon_encoder** %11, align 8
  br label %389

378:                                              ; preds = %368
  %379 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %380 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %379, i32 0, i32 1
  %381 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %380, align 8
  store %struct.drm_connector_helper_funcs* %381, %struct.drm_connector_helper_funcs** %22, align 8
  %382 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %22, align 8
  %383 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %382, i32 0, i32 0
  %384 = load %struct.drm_encoder* (%struct.drm_connector.0*)*, %struct.drm_encoder* (%struct.drm_connector.0*)** %383, align 8
  %385 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %386 = bitcast %struct.drm_connector* %385 to %struct.drm_connector.0*
  %387 = call %struct.drm_encoder* %384(%struct.drm_connector.0* %386)
  %388 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %387)
  store %struct.radeon_encoder* %388, %struct.radeon_encoder** %11, align 8
  br label %389

389:                                              ; preds = %378, %373
  %390 = load i32, i32* %7, align 4
  switch i32 %390, label %391 [
    i32 128, label %392
    i32 130, label %394
    i32 131, label %396
    i32 129, label %398
  ]

391:                                              ; preds = %389
  br label %392

392:                                              ; preds = %389, %391
  %393 = load i32, i32* @RMX_OFF, align 4
  store i32 %393, i32* %21, align 4
  br label %400

394:                                              ; preds = %389
  %395 = load i32, i32* @RMX_CENTER, align 4
  store i32 %395, i32* %21, align 4
  br label %400

396:                                              ; preds = %389
  %397 = load i32, i32* @RMX_ASPECT, align 4
  store i32 %397, i32* %21, align 4
  br label %400

398:                                              ; preds = %389
  %399 = load i32, i32* @RMX_FULL, align 4
  store i32 %399, i32* %21, align 4
  br label %400

400:                                              ; preds = %398, %396, %394, %392
  %401 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %402 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* %21, align 4
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %406, label %407

406:                                              ; preds = %400
  store i32 0, i32* %4, align 4
  br label %496

407:                                              ; preds = %400
  %408 = load i32, i32* %21, align 4
  %409 = icmp ne i32 %408, 128
  br i1 %409, label %410, label %417

410:                                              ; preds = %407
  %411 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %412 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %411, i32 0, i32 6
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %410
  store i32 0, i32* %4, align 4
  br label %496

417:                                              ; preds = %410, %407
  %418 = load i32, i32* %21, align 4
  %419 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %420 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %419, i32 0, i32 3
  store i32 %418, i32* %420, align 4
  %421 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %422 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %421, i32 0, i32 5
  %423 = call i32 @radeon_property_change_mode(i32* %422)
  br label %424

424:                                              ; preds = %417, %361
  %425 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %426 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %427 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 0
  %429 = load %struct.drm_property*, %struct.drm_property** %428, align 8
  %430 = icmp eq %struct.drm_property* %425, %429
  br i1 %430, label %431, label %495

431:                                              ; preds = %424
  %432 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %433 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %432, i32 0, i32 0
  %434 = load %struct.drm_encoder*, %struct.drm_encoder** %433, align 8
  %435 = icmp ne %struct.drm_encoder* %434, null
  br i1 %435, label %436, label %441

436:                                              ; preds = %431
  %437 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %438 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %437, i32 0, i32 0
  %439 = load %struct.drm_encoder*, %struct.drm_encoder** %438, align 8
  %440 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %439)
  store %struct.radeon_encoder* %440, %struct.radeon_encoder** %11, align 8
  br label %452

441:                                              ; preds = %431
  %442 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %443 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %442, i32 0, i32 1
  %444 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %443, align 8
  store %struct.drm_connector_helper_funcs* %444, %struct.drm_connector_helper_funcs** %23, align 8
  %445 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %23, align 8
  %446 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %445, i32 0, i32 0
  %447 = load %struct.drm_encoder* (%struct.drm_connector.0*)*, %struct.drm_encoder* (%struct.drm_connector.0*)** %446, align 8
  %448 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %449 = bitcast %struct.drm_connector* %448 to %struct.drm_connector.0*
  %450 = call %struct.drm_encoder* %447(%struct.drm_connector.0* %449)
  %451 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %450)
  store %struct.radeon_encoder* %451, %struct.radeon_encoder** %11, align 8
  br label %452

452:                                              ; preds = %441, %436
  %453 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %454 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %453, i32 0, i32 4
  %455 = load i32, i32* %454, align 8
  %456 = load i32, i32* %7, align 4
  %457 = icmp eq i32 %455, %456
  br i1 %457, label %458, label %459

458:                                              ; preds = %452
  store i32 0, i32* %4, align 4
  br label %496

459:                                              ; preds = %452
  %460 = load i32, i32* %7, align 4
  %461 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %462 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %461, i32 0, i32 4
  store i32 %460, i32* %462, align 8
  %463 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %464 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %463, i32 0, i32 0
  %465 = load %struct.drm_encoder*, %struct.drm_encoder** %464, align 8
  %466 = icmp ne %struct.drm_encoder* %465, null
  br i1 %466, label %467, label %494

467:                                              ; preds = %459
  %468 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %469 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %468, i32 0, i32 0
  %470 = load %struct.drm_encoder*, %struct.drm_encoder** %469, align 8
  %471 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %470, i32 0, i32 0
  %472 = load %struct.drm_crtc*, %struct.drm_crtc** %471, align 8
  %473 = icmp ne %struct.drm_crtc* %472, null
  br i1 %473, label %474, label %494

474:                                              ; preds = %467
  %475 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %476 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %475, i32 0, i32 0
  %477 = load %struct.drm_encoder*, %struct.drm_encoder** %476, align 8
  %478 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %477, i32 0, i32 0
  %479 = load %struct.drm_crtc*, %struct.drm_crtc** %478, align 8
  store %struct.drm_crtc* %479, %struct.drm_crtc** %24, align 8
  %480 = load %struct.drm_crtc*, %struct.drm_crtc** %24, align 8
  %481 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %480)
  store %struct.radeon_crtc* %481, %struct.radeon_crtc** %25, align 8
  %482 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %483 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %482, i32 0, i32 4
  %484 = load i32, i32* %483, align 8
  %485 = load %struct.radeon_crtc*, %struct.radeon_crtc** %25, align 8
  %486 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %485, i32 0, i32 0
  store i32 %484, i32* %486, align 4
  %487 = load %struct.drm_crtc*, %struct.drm_crtc** %24, align 8
  %488 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %487, i32 0, i32 0
  %489 = load %struct.TYPE_7__*, %struct.TYPE_7__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %489, i32 0, i32 0
  %491 = load i32 (%struct.drm_crtc*, i32*, i32*, i32*, i32, i32*)*, i32 (%struct.drm_crtc*, i32*, i32*, i32*, i32, i32*)** %490, align 8
  %492 = load %struct.drm_crtc*, %struct.drm_crtc** %24, align 8
  %493 = call i32 %491(%struct.drm_crtc* %492, i32* null, i32* null, i32* null, i32 0, i32* null)
  br label %494

494:                                              ; preds = %474, %467, %459
  br label %495

495:                                              ; preds = %494, %424
  store i32 0, i32* %4, align 4
  br label %496

496:                                              ; preds = %495, %458, %416, %406, %326, %316, %257, %249, %212, %182, %152, %122, %90, %52, %44
  %497 = load i32, i32* %4, align 4
  ret i32 %497
}

declare dso_local %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector*, i32) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_property_change_mode(i32*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atombios_get_tmds_info(%struct.radeon_encoder*, %struct.radeon_encoder_tv_dac*) #1

declare dso_local i32 @radeon_legacy_get_tmds_info_from_combios(%struct.radeon_encoder*, %struct.radeon_encoder_tv_dac*) #1

declare dso_local i32 @radeon_legacy_get_tmds_info_from_table(%struct.radeon_encoder*, %struct.radeon_encoder_tv_dac*) #1

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
