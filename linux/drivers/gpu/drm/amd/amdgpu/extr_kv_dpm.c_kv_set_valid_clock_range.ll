; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_set_valid_clock_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_set_valid_clock_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.amdgpu_clock_voltage_dependency_table }
%struct.amdgpu_clock_voltage_dependency_table = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.amdgpu_ps = type { i32 }
%struct.kv_ps = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.kv_power_info = type { i64, i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.sumo_sclk_voltage_mapping_table }
%struct.sumo_sclk_voltage_mapping_table = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_ps*)* @kv_set_valid_clock_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_set_valid_clock_range(%struct.amdgpu_device* %0, %struct.amdgpu_ps* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ps*, align 8
  %5 = alloca %struct.kv_ps*, align 8
  %6 = alloca %struct.kv_power_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.amdgpu_clock_voltage_dependency_table*, align 8
  %9 = alloca %struct.sumo_sclk_voltage_mapping_table*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_ps* %1, %struct.amdgpu_ps** %4, align 8
  %10 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %11 = call %struct.kv_ps* @kv_get_ps(%struct.amdgpu_ps* %10)
  store %struct.kv_ps* %11, %struct.kv_ps** %5, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %12)
  store %struct.kv_power_info* %13, %struct.kv_power_info** %6, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store %struct.amdgpu_clock_voltage_dependency_table* %18, %struct.amdgpu_clock_voltage_dependency_table** %8, align 8
  %19 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %8, align 8
  %20 = icmp ne %struct.amdgpu_clock_voltage_dependency_table* %19, null
  br i1 %20, label %21, label %160

21:                                               ; preds = %2
  %22 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %8, align 8
  %23 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %160

26:                                               ; preds = %21
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %60, %26
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %30 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %27
  %34 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %8, align 8
  %35 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.kv_ps*, %struct.kv_ps** %5, align 8
  %42 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %41, i32 0, i32 1
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %40, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %33
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %51 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %52, 1
  %54 = icmp eq i64 %49, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48, %33
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %58 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %63

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %27

63:                                               ; preds = %55, %27
  %64 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %65 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %93, %63
  %69 = load i64, i64* %7, align 8
  %70 = icmp ugt i64 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %68
  %72 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %8, align 8
  %73 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %72, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.kv_ps*, %struct.kv_ps** %5, align 8
  %80 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %79, i32 0, i32 1
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = load %struct.kv_ps*, %struct.kv_ps** %5, align 8
  %83 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sle i64 %78, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %71
  br label %96

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %7, align 8
  %95 = add i64 %94, -1
  store i64 %95, i64* %7, align 8
  br label %68

96:                                               ; preds = %91, %68
  %97 = load i64, i64* %7, align 8
  %98 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %99 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  %100 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %101 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %104 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ugt i64 %102, %105
  br i1 %106, label %107, label %159

107:                                              ; preds = %96
  %108 = load %struct.kv_ps*, %struct.kv_ps** %5, align 8
  %109 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %108, i32 0, i32 1
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %8, align 8
  %115 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %114, i32 0, i32 0
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %118 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %113, %122
  %124 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %8, align 8
  %125 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %124, i32 0, i32 0
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %128 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.kv_ps*, %struct.kv_ps** %5, align 8
  %134 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %133, i32 0, i32 1
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = load %struct.kv_ps*, %struct.kv_ps** %5, align 8
  %137 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %132, %143
  %145 = icmp sgt i64 %123, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %107
  %147 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %148 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %151 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %150, i32 0, i32 2
  store i64 %149, i64* %151, align 8
  br label %158

152:                                              ; preds = %107
  %153 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %154 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %157 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %152, %146
  br label %159

159:                                              ; preds = %158, %96
  br label %301

160:                                              ; preds = %21, %2
  %161 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %162 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  store %struct.sumo_sclk_voltage_mapping_table* %163, %struct.sumo_sclk_voltage_mapping_table** %9, align 8
  store i64 0, i64* %7, align 8
  br label %164

164:                                              ; preds = %201, %160
  %165 = load i64, i64* %7, align 8
  %166 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %167 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = sext i32 %169 to i64
  %171 = icmp ult i64 %165, %170
  br i1 %171, label %172, label %204

172:                                              ; preds = %164
  %173 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %9, align 8
  %174 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %173, i32 0, i32 0
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = load i64, i64* %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.kv_ps*, %struct.kv_ps** %5, align 8
  %181 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %180, i32 0, i32 1
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp sge i64 %179, %185
  br i1 %186, label %196, label %187

187:                                              ; preds = %172
  %188 = load i64, i64* %7, align 8
  %189 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %190 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = sub i64 %191, 1
  %193 = trunc i64 %192 to i32
  %194 = sext i32 %193 to i64
  %195 = icmp eq i64 %188, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %187, %172
  %197 = load i64, i64* %7, align 8
  %198 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %199 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  br label %204

200:                                              ; preds = %187
  br label %201

201:                                              ; preds = %200
  %202 = load i64, i64* %7, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %7, align 8
  br label %164

204:                                              ; preds = %196, %164
  %205 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %206 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = sub i64 %207, 1
  store i64 %208, i64* %7, align 8
  br label %209

209:                                              ; preds = %234, %204
  %210 = load i64, i64* %7, align 8
  %211 = icmp ugt i64 %210, 0
  br i1 %211, label %212, label %237

212:                                              ; preds = %209
  %213 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %9, align 8
  %214 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %213, i32 0, i32 0
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %214, align 8
  %216 = load i64, i64* %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.kv_ps*, %struct.kv_ps** %5, align 8
  %221 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %220, i32 0, i32 1
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = load %struct.kv_ps*, %struct.kv_ps** %5, align 8
  %224 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sub nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp sle i64 %219, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %212
  br label %237

233:                                              ; preds = %212
  br label %234

234:                                              ; preds = %233
  %235 = load i64, i64* %7, align 8
  %236 = add i64 %235, -1
  store i64 %236, i64* %7, align 8
  br label %209

237:                                              ; preds = %232, %209
  %238 = load i64, i64* %7, align 8
  %239 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %240 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %239, i32 0, i32 2
  store i64 %238, i64* %240, align 8
  %241 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %242 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %245 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = icmp ugt i64 %243, %246
  br i1 %247, label %248, label %300

248:                                              ; preds = %237
  %249 = load %struct.kv_ps*, %struct.kv_ps** %5, align 8
  %250 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %249, i32 0, i32 1
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i64 0
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %9, align 8
  %256 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %255, i32 0, i32 0
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %256, align 8
  %258 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %259 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = sub nsw i64 %254, %263
  %265 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %9, align 8
  %266 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %265, i32 0, i32 0
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %266, align 8
  %268 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %269 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.kv_ps*, %struct.kv_ps** %5, align 8
  %275 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %274, i32 0, i32 1
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %275, align 8
  %277 = load %struct.kv_ps*, %struct.kv_ps** %5, align 8
  %278 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = sub nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = sub nsw i64 %273, %284
  %286 = icmp sgt i64 %264, %285
  br i1 %286, label %287, label %293

287:                                              ; preds = %248
  %288 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %289 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %292 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %291, i32 0, i32 2
  store i64 %290, i64* %292, align 8
  br label %299

293:                                              ; preds = %248
  %294 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %295 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %294, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %298 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %297, i32 0, i32 1
  store i64 %296, i64* %298, align 8
  br label %299

299:                                              ; preds = %293, %287
  br label %300

300:                                              ; preds = %299, %237
  br label %301

301:                                              ; preds = %300, %159
  ret void
}

declare dso_local %struct.kv_ps* @kv_get_ps(%struct.amdgpu_ps*) #1

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
