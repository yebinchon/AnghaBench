; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_connector_helper_funcs*, %struct.drm_encoder*, %struct.drm_device* }
%struct.drm_connector_helper_funcs = type { %struct.drm_encoder* (%struct.drm_connector.0*)* }
%struct.drm_connector.0 = type opaque
%struct.drm_encoder = type { i32 }
%struct.drm_device = type { %struct.TYPE_5__, %struct.amdgpu_device* }
%struct.TYPE_5__ = type { %struct.drm_property* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_property = type { i32 }
%struct.amdgpu_encoder = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.amdgpu_encoder_atom_dig* }
%struct.TYPE_6__ = type { i64 }
%struct.amdgpu_encoder_atom_dig = type { i32 }
%struct.amdgpu_connector = type { i32, i32, i32 }

@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@RMX_OFF = common dso_local global i32 0, align 4
@RMX_CENTER = common dso_local global i32 0, align 4
@RMX_ASPECT = common dso_local global i32 0, align 4
@RMX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_property*, i32)* @amdgpu_connector_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_connector_set_property(%struct.drm_connector* %0, %struct.drm_property* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  %11 = alloca %struct.amdgpu_encoder*, align 8
  %12 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.amdgpu_connector*, align 8
  %15 = alloca %struct.amdgpu_connector*, align 8
  %16 = alloca %struct.amdgpu_connector*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.drm_connector_helper_funcs*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_property* %1, %struct.drm_property** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 2
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %8, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 1
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %23, align 8
  store %struct.amdgpu_device* %24, %struct.amdgpu_device** %9, align 8
  %25 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 6
  %29 = load %struct.drm_property*, %struct.drm_property** %28, align 8
  %30 = icmp eq %struct.drm_property* %25, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %3
  %32 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %33 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %34 = call %struct.drm_encoder* @amdgpu_connector_find_encoder(%struct.drm_connector* %32, i32 %33)
  store %struct.drm_encoder* %34, %struct.drm_encoder** %10, align 8
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %36 = icmp ne %struct.drm_encoder* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %304

38:                                               ; preds = %31
  %39 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %40 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %39)
  store %struct.amdgpu_encoder* %40, %struct.amdgpu_encoder** %11, align 8
  %41 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %42 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %41, i32 0, i32 6
  %43 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %42, align 8
  %44 = icmp ne %struct.amdgpu_encoder_atom_dig* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %304

46:                                               ; preds = %38
  %47 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %48 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %47, i32 0, i32 6
  %49 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %48, align 8
  store %struct.amdgpu_encoder_atom_dig* %49, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  store i32 %53, i32* %13, align 4
  %54 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %55 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %46
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %12, align 8
  %62 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %64 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %63, i32 0, i32 4
  %65 = call i32 @amdgpu_connector_property_change_mode(i32* %64)
  br label %66

66:                                               ; preds = %59, %46
  br label %67

67:                                               ; preds = %66, %3
  %68 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  %72 = load %struct.drm_property*, %struct.drm_property** %71, align 8
  %73 = icmp eq %struct.drm_property* %68, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %67
  %75 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %76 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %75)
  store %struct.amdgpu_connector* %76, %struct.amdgpu_connector** %14, align 8
  %77 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %78 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %79 = call %struct.drm_encoder* @amdgpu_connector_find_encoder(%struct.drm_connector* %77, i32 %78)
  store %struct.drm_encoder* %79, %struct.drm_encoder** %10, align 8
  %80 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %81 = icmp ne %struct.drm_encoder* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %304

83:                                               ; preds = %74
  %84 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %85 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %84)
  store %struct.amdgpu_encoder* %85, %struct.amdgpu_encoder** %11, align 8
  %86 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %14, align 8
  %87 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %14, align 8
  %94 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %96 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %95, i32 0, i32 4
  %97 = call i32 @amdgpu_connector_property_change_mode(i32* %96)
  br label %98

98:                                               ; preds = %91, %83
  br label %99

99:                                               ; preds = %98, %67
  %100 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %102 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 4
  %104 = load %struct.drm_property*, %struct.drm_property** %103, align 8
  %105 = icmp eq %struct.drm_property* %100, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %99
  %107 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %108 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %107)
  store %struct.amdgpu_connector* %108, %struct.amdgpu_connector** %15, align 8
  %109 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %110 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %111 = call %struct.drm_encoder* @amdgpu_connector_find_encoder(%struct.drm_connector* %109, i32 %110)
  store %struct.drm_encoder* %111, %struct.drm_encoder** %10, align 8
  %112 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %113 = icmp ne %struct.drm_encoder* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %304

115:                                              ; preds = %106
  %116 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %117 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %116)
  store %struct.amdgpu_encoder* %117, %struct.amdgpu_encoder** %11, align 8
  %118 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %15, align 8
  %119 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %115
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %15, align 8
  %126 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %128 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %127, i32 0, i32 4
  %129 = call i32 @amdgpu_connector_property_change_mode(i32* %128)
  br label %130

130:                                              ; preds = %123, %115
  br label %131

131:                                              ; preds = %130, %99
  %132 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %134 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load %struct.drm_property*, %struct.drm_property** %135, align 8
  %137 = icmp eq %struct.drm_property* %132, %136
  br i1 %137, label %138, label %161

138:                                              ; preds = %131
  %139 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %140 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %141 = call %struct.drm_encoder* @amdgpu_connector_find_encoder(%struct.drm_connector* %139, i32 %140)
  store %struct.drm_encoder* %141, %struct.drm_encoder** %10, align 8
  %142 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %143 = icmp ne %struct.drm_encoder* %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %138
  store i32 0, i32* %4, align 4
  br label %304

145:                                              ; preds = %138
  %146 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %147 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %146)
  store %struct.amdgpu_encoder* %147, %struct.amdgpu_encoder** %11, align 8
  %148 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %149 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %145
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %156 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %158 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %157, i32 0, i32 4
  %159 = call i32 @amdgpu_connector_property_change_mode(i32* %158)
  br label %160

160:                                              ; preds = %153, %145
  br label %161

161:                                              ; preds = %160, %131
  %162 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %164 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load %struct.drm_property*, %struct.drm_property** %165, align 8
  %167 = icmp eq %struct.drm_property* %162, %166
  br i1 %167, label %168, label %191

168:                                              ; preds = %161
  %169 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %170 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %171 = call %struct.drm_encoder* @amdgpu_connector_find_encoder(%struct.drm_connector* %169, i32 %170)
  store %struct.drm_encoder* %171, %struct.drm_encoder** %10, align 8
  %172 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %173 = icmp ne %struct.drm_encoder* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %168
  store i32 0, i32* %4, align 4
  br label %304

175:                                              ; preds = %168
  %176 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %177 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %176)
  store %struct.amdgpu_encoder* %177, %struct.amdgpu_encoder** %11, align 8
  %178 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %179 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %175
  %184 = load i32, i32* %7, align 4
  %185 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %186 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %188 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %187, i32 0, i32 4
  %189 = call i32 @amdgpu_connector_property_change_mode(i32* %188)
  br label %190

190:                                              ; preds = %183, %175
  br label %191

191:                                              ; preds = %190, %161
  %192 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %193 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %194 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = load %struct.drm_property*, %struct.drm_property** %195, align 8
  %197 = icmp eq %struct.drm_property* %192, %196
  br i1 %197, label %198, label %221

198:                                              ; preds = %191
  %199 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %200 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %201 = call %struct.drm_encoder* @amdgpu_connector_find_encoder(%struct.drm_connector* %199, i32 %200)
  store %struct.drm_encoder* %201, %struct.drm_encoder** %10, align 8
  %202 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %203 = icmp ne %struct.drm_encoder* %202, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %198
  store i32 0, i32* %4, align 4
  br label %304

205:                                              ; preds = %198
  %206 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %207 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %206)
  store %struct.amdgpu_encoder* %207, %struct.amdgpu_encoder** %11, align 8
  %208 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %209 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %205
  %214 = load i32, i32* %7, align 4
  %215 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %216 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 8
  %217 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %218 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %217, i32 0, i32 4
  %219 = call i32 @amdgpu_connector_property_change_mode(i32* %218)
  br label %220

220:                                              ; preds = %213, %205
  br label %221

221:                                              ; preds = %220, %191
  %222 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %223 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %224 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load %struct.drm_property*, %struct.drm_property** %225, align 8
  %227 = icmp eq %struct.drm_property* %222, %226
  br i1 %227, label %228, label %240

228:                                              ; preds = %221
  %229 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %230 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %229)
  store %struct.amdgpu_connector* %230, %struct.amdgpu_connector** %16, align 8
  %231 = load i32, i32* %7, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %228
  %234 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %16, align 8
  %235 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %234, i32 0, i32 2
  store i32 0, i32* %235, align 4
  br label %239

236:                                              ; preds = %228
  %237 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %16, align 8
  %238 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %237, i32 0, i32 2
  store i32 1, i32* %238, align 4
  br label %239

239:                                              ; preds = %236, %233
  br label %240

240:                                              ; preds = %239, %221
  %241 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %242 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %243 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = load %struct.drm_property*, %struct.drm_property** %244, align 8
  %246 = icmp eq %struct.drm_property* %241, %245
  br i1 %246, label %247, label %303

247:                                              ; preds = %240
  %248 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %249 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %248, i32 0, i32 1
  %250 = load %struct.drm_encoder*, %struct.drm_encoder** %249, align 8
  %251 = icmp ne %struct.drm_encoder* %250, null
  br i1 %251, label %252, label %257

252:                                              ; preds = %247
  %253 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %254 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %253, i32 0, i32 1
  %255 = load %struct.drm_encoder*, %struct.drm_encoder** %254, align 8
  %256 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %255)
  store %struct.amdgpu_encoder* %256, %struct.amdgpu_encoder** %11, align 8
  br label %268

257:                                              ; preds = %247
  %258 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %259 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %258, i32 0, i32 0
  %260 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %259, align 8
  store %struct.drm_connector_helper_funcs* %260, %struct.drm_connector_helper_funcs** %18, align 8
  %261 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %18, align 8
  %262 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %261, i32 0, i32 0
  %263 = load %struct.drm_encoder* (%struct.drm_connector.0*)*, %struct.drm_encoder* (%struct.drm_connector.0*)** %262, align 8
  %264 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %265 = bitcast %struct.drm_connector* %264 to %struct.drm_connector.0*
  %266 = call %struct.drm_encoder* %263(%struct.drm_connector.0* %265)
  %267 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %266)
  store %struct.amdgpu_encoder* %267, %struct.amdgpu_encoder** %11, align 8
  br label %268

268:                                              ; preds = %257, %252
  %269 = load i32, i32* %7, align 4
  switch i32 %269, label %270 [
    i32 128, label %271
    i32 130, label %273
    i32 131, label %275
    i32 129, label %277
  ]

270:                                              ; preds = %268
  br label %271

271:                                              ; preds = %268, %270
  %272 = load i32, i32* @RMX_OFF, align 4
  store i32 %272, i32* %17, align 4
  br label %279

273:                                              ; preds = %268
  %274 = load i32, i32* @RMX_CENTER, align 4
  store i32 %274, i32* %17, align 4
  br label %279

275:                                              ; preds = %268
  %276 = load i32, i32* @RMX_ASPECT, align 4
  store i32 %276, i32* %17, align 4
  br label %279

277:                                              ; preds = %268
  %278 = load i32, i32* @RMX_FULL, align 4
  store i32 %278, i32* %17, align 4
  br label %279

279:                                              ; preds = %277, %275, %273, %271
  %280 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %281 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %17, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %279
  store i32 0, i32* %4, align 4
  br label %304

286:                                              ; preds = %279
  %287 = load i32, i32* %17, align 4
  %288 = icmp ne i32 %287, 128
  br i1 %288, label %289, label %296

289:                                              ; preds = %286
  %290 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %291 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %290, i32 0, i32 5
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %289
  store i32 0, i32* %4, align 4
  br label %304

296:                                              ; preds = %289, %286
  %297 = load i32, i32* %17, align 4
  %298 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %299 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %298, i32 0, i32 3
  store i32 %297, i32* %299, align 4
  %300 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %11, align 8
  %301 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %300, i32 0, i32 4
  %302 = call i32 @amdgpu_connector_property_change_mode(i32* %301)
  br label %303

303:                                              ; preds = %296, %240
  store i32 0, i32* %4, align 4
  br label %304

304:                                              ; preds = %303, %295, %285, %204, %174, %144, %114, %82, %45, %37
  %305 = load i32, i32* %4, align 4
  ret i32 %305
}

declare dso_local %struct.drm_encoder* @amdgpu_connector_find_encoder(%struct.drm_connector*, i32) #1

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @amdgpu_connector_property_change_mode(i32*) #1

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
