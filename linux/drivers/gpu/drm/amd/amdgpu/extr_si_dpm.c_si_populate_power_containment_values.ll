; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_populate_power_containment_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_populate_power_containment_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ps = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64 }
%struct.evergreen_power_info = type { i32 }
%struct.ni_power_info = type { i32 }
%struct.si_ps = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SISLANDS_DPM2_MAXPS_PERCENT_M = common dso_local global i64 0, align 8
@SISLANDS_DPM2_MAXPS_PERCENT_H = common dso_local global i64 0, align 8
@SISLANDS_DPM2_MAX_PULSE_SKIP = common dso_local global i32 0, align 4
@SISLANDS_DPM2_NEAR_TDP_DEC = common dso_local global i32 0, align 4
@SISLANDS_DPM2_ABOVE_SAFE_INC = common dso_local global i32 0, align 4
@SISLANDS_DPM2_BELOW_SAFE_INC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.TYPE_9__*)* @si_populate_power_containment_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_populate_power_containment_values(%struct.amdgpu_device* %0, %struct.amdgpu_ps* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_ps*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.evergreen_power_info*, align 8
  %9 = alloca %struct.ni_power_info*, align 8
  %10 = alloca %struct.si_ps*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_ps* %1, %struct.amdgpu_ps** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %23 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.amdgpu_device* %22)
  store %struct.evergreen_power_info* %23, %struct.evergreen_power_info** %8, align 8
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %25 = call %struct.ni_power_info* @ni_get_pi(%struct.amdgpu_device* %24)
  store %struct.ni_power_info* %25, %struct.ni_power_info** %9, align 8
  %26 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %27 = call %struct.si_ps* @si_get_ps(%struct.amdgpu_ps* %26)
  store %struct.si_ps* %27, %struct.si_ps** %10, align 8
  %28 = load %struct.ni_power_info*, %struct.ni_power_info** %9, align 8
  %29 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %280

33:                                               ; preds = %3
  %34 = load %struct.si_ps*, %struct.si_ps** %10, align 8
  %35 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %280

41:                                               ; preds = %33
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.si_ps*, %struct.si_ps** %10, align 8
  %46 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %280

52:                                               ; preds = %41
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %54 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %55 = call i32 @si_should_disable_uvd_powertune(%struct.amdgpu_device* %53, %struct.amdgpu_ps* %54)
  store i32 %55, i32* %20, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  store i32 0, i32* %67, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store i32 0, i32* %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  store i32 1, i32* %17, align 4
  br label %86

86:                                               ; preds = %276, %52
  %87 = load i32, i32* %17, align 4
  %88 = load %struct.si_ps*, %struct.si_ps** %10, align 8
  %89 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %279

92:                                               ; preds = %86
  %93 = load %struct.si_ps*, %struct.si_ps** %10, align 8
  %94 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %12, align 4
  %102 = load %struct.si_ps*, %struct.si_ps** %10, align 8
  %103 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %114

112:                                              ; preds = %92
  %113 = load i64, i64* @SISLANDS_DPM2_MAXPS_PERCENT_M, align 8
  store i64 %113, i64* %19, align 8
  br label %116

114:                                              ; preds = %92
  %115 = load i64, i64* @SISLANDS_DPM2_MAXPS_PERCENT_H, align 8
  store i64 %115, i64* %19, align 8
  br label %116

116:                                              ; preds = %114, %112
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %280

123:                                              ; preds = %116
  %124 = load i64, i64* %19, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %20, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130, %126, %123
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* %14, align 4
  br label %147

135:                                              ; preds = %130
  %136 = load i32, i32* %17, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %14, align 4
  br label %146

140:                                              ; preds = %135
  %141 = load i32, i32* %12, align 4
  %142 = load i64, i64* %19, align 8
  %143 = trunc i64 %142 to i32
  %144 = mul nsw i32 %141, %143
  %145 = sdiv i32 %144, 100
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %140, %138
  br label %147

147:                                              ; preds = %146, %133
  %148 = load i32, i32* %14, align 4
  %149 = load %struct.si_ps*, %struct.si_ps** %10, align 8
  %150 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %149, i32 0, i32 1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %148, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %147
  %157 = load %struct.si_ps*, %struct.si_ps** %10, align 8
  %158 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %157, i32 0, i32 1
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %14, align 4
  br label %163

163:                                              ; preds = %156, %147
  %164 = load i32, i32* %14, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %280

169:                                              ; preds = %163
  %170 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %171 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %8, align 8
  %172 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %171, i32 0, i32 0
  %173 = load %struct.si_ps*, %struct.si_ps** %10, align 8
  %174 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %173, i32 0, i32 1
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = load i32, i32* %17, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @si_populate_voltage_value(%struct.amdgpu_device* %170, i32* %172, i32 %181, i32* %11)
  store i32 %182, i32* %21, align 4
  %183 = load i32, i32* %21, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %169
  %186 = load i32, i32* %21, align 4
  store i32 %186, i32* %4, align 4
  br label %280

187:                                              ; preds = %169
  %188 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %189 = call i32 @si_get_std_voltage_value(%struct.amdgpu_device* %188, i32* %11, i32* %15)
  store i32 %189, i32* %21, align 4
  %190 = load i32, i32* %21, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* %21, align 4
  store i32 %193, i32* %4, align 4
  br label %280

194:                                              ; preds = %187
  %195 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %196 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %8, align 8
  %197 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %196, i32 0, i32 0
  %198 = load %struct.si_ps*, %struct.si_ps** %10, align 8
  %199 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %198, i32 0, i32 1
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = load i32, i32* %17, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @si_populate_voltage_value(%struct.amdgpu_device* %195, i32* %197, i32 %205, i32* %11)
  store i32 %206, i32* %21, align 4
  %207 = load i32, i32* %21, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %194
  %210 = load i32, i32* %21, align 4
  store i32 %210, i32* %4, align 4
  br label %280

211:                                              ; preds = %194
  %212 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %213 = call i32 @si_get_std_voltage_value(%struct.amdgpu_device* %212, i32* %11, i32* %16)
  store i32 %213, i32* %21, align 4
  %214 = load i32, i32* %21, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %211
  %217 = load i32, i32* %21, align 4
  store i32 %217, i32* %4, align 4
  br label %280

218:                                              ; preds = %211
  %219 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %16, align 4
  %222 = call i32 @si_calculate_power_efficiency_ratio(%struct.amdgpu_device* %219, i32 %220, i32 %221)
  store i32 %222, i32* %18, align 4
  %223 = load i32, i32* @SISLANDS_DPM2_MAX_PULSE_SKIP, align 4
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* %14, align 4
  %226 = sub nsw i32 %224, %225
  %227 = mul nsw i32 %223, %226
  %228 = load i32, i32* %13, align 4
  %229 = sdiv i32 %227, %228
  %230 = sext i32 %229 to i64
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %232, align 8
  %234 = load i32, i32* %17, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 4
  store i64 %230, i64* %238, align 8
  %239 = load i32, i32* @SISLANDS_DPM2_NEAR_TDP_DEC, align 4
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = load i32, i32* %17, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 3
  store i32 %239, i32* %247, align 4
  %248 = load i32, i32* @SISLANDS_DPM2_ABOVE_SAFE_INC, align 4
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %250, align 8
  %252 = load i32, i32* %17, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 2
  store i32 %248, i32* %256, align 8
  %257 = load i32, i32* @SISLANDS_DPM2_BELOW_SAFE_INC, align 4
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %259, align 8
  %261 = load i32, i32* %17, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 1
  store i32 %257, i32* %265, align 4
  %266 = load i32, i32* %18, align 4
  %267 = call i32 @cpu_to_be16(i32 %266)
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %269, align 8
  %271 = load i32, i32* %17, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  store i32 %267, i32* %275, align 8
  br label %276

276:                                              ; preds = %218
  %277 = load i32, i32* %17, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %17, align 4
  br label %86

279:                                              ; preds = %86
  store i32 0, i32* %4, align 4
  br label %280

280:                                              ; preds = %279, %216, %209, %192, %185, %166, %120, %49, %38, %32
  %281 = load i32, i32* %4, align 4
  ret i32 %281
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.amdgpu_device*) #1

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.amdgpu_device*) #1

declare dso_local %struct.si_ps* @si_get_ps(%struct.amdgpu_ps*) #1

declare dso_local i32 @si_should_disable_uvd_powertune(%struct.amdgpu_device*, %struct.amdgpu_ps*) #1

declare dso_local i32 @si_populate_voltage_value(%struct.amdgpu_device*, i32*, i32, i32*) #1

declare dso_local i32 @si_get_std_voltage_value(%struct.amdgpu_device*, i32*, i32*) #1

declare dso_local i32 @si_calculate_power_efficiency_ratio(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
