; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_apply_state_adjust_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_apply_state_adjust_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_voltage_dependency_table }
%struct.amdgpu_clock_and_voltage_limits = type { i64, i32 }
%struct.amdgpu_clock_voltage_dependency_table = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.amdgpu_ps = type { i32, i64, i64, i64, i64, i64 }
%struct.kv_ps = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.kv_power_info = type { i64, i32, i32, i64, %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { i64*, i64, %struct.sumo_sclk_voltage_mapping_table }
%struct.sumo_sclk_voltage_mapping_table = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@ATOM_PPLIB_CLASSIFICATION_UI_MASK = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_BATTERY = common dso_local global i32 0, align 4
@CHIP_KABINI = common dso_local global i64 0, align 8
@CHIP_MULLINS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.amdgpu_ps*)* @kv_apply_state_adjust_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_apply_state_adjust_rules(%struct.amdgpu_device* %0, %struct.amdgpu_ps* %1, %struct.amdgpu_ps* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_ps*, align 8
  %6 = alloca %struct.amdgpu_ps*, align 8
  %7 = alloca %struct.kv_ps*, align 8
  %8 = alloca %struct.kv_power_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.amdgpu_clock_voltage_dependency_table*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.amdgpu_clock_and_voltage_limits*, align 8
  %18 = alloca %struct.sumo_sclk_voltage_mapping_table*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_ps* %1, %struct.amdgpu_ps** %5, align 8
  store %struct.amdgpu_ps* %2, %struct.amdgpu_ps** %6, align 8
  %19 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %20 = call %struct.kv_ps* @kv_get_ps(%struct.amdgpu_ps* %19)
  store %struct.kv_ps* %20, %struct.kv_ps** %7, align 8
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %22 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %21)
  store %struct.kv_power_info* %22, %struct.kv_power_info** %8, align 8
  store i64 10000, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  store %struct.amdgpu_clock_voltage_dependency_table* %27, %struct.amdgpu_clock_voltage_dependency_table** %15, align 8
  store i64 0, i64* %16, align 8
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store %struct.amdgpu_clock_and_voltage_limits* %32, %struct.amdgpu_clock_and_voltage_limits** %17, align 8
  %33 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %3
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %67 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %73

68:                                               ; preds = %3
  %69 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %70 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %72 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %68, %37
  %74 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %17, align 8
  %75 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %9, align 8
  store i64 %77, i64* %10, align 8
  %78 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %79 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %132

82:                                               ; preds = %73
  %83 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %17, align 8
  %84 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %85, 75
  %87 = sdiv i32 %86, 100
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %16, align 8
  %89 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %15, align 8
  %90 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %117, %82
  %94 = load i32, i32* %12, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %120

96:                                               ; preds = %93
  %97 = load i64, i64* %16, align 8
  %98 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %15, align 8
  %99 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sge i64 %97, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %96
  %108 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %15, align 8
  %109 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %108, i32 0, i32 1
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %16, align 8
  br label %120

116:                                              ; preds = %96
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %12, align 4
  br label %93

120:                                              ; preds = %107, %93
  %121 = load i32, i32* %12, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %15, align 8
  %125 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %124, i32 0, i32 1
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %16, align 8
  br label %130

130:                                              ; preds = %123, %120
  %131 = load i64, i64* %16, align 8
  store i64 %131, i64* %10, align 8
  br label %132

132:                                              ; preds = %130, %73
  %133 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %134 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %168

137:                                              ; preds = %132
  %138 = load i64, i64* %10, align 8
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %145 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp slt i64 %138, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %137
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %155 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %160 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %10, align 8
  br label %167

167:                                              ; preds = %153, %137
  br label %168

168:                                              ; preds = %167, %132
  %169 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %170 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  store i32 0, i32* %12, align 4
  br label %171

171:                                              ; preds = %198, %168
  %172 = load i32, i32* %12, align 4
  %173 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %174 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %201

177:                                              ; preds = %171
  %178 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %179 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %178, i32 0, i32 6
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %10, align 8
  %187 = icmp slt i64 %185, %186
  br i1 %187, label %188, label %197

188:                                              ; preds = %177
  %189 = load i64, i64* %10, align 8
  %190 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %191 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %190, i32 0, i32 6
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  store i64 %189, i64* %196, align 8
  br label %197

197:                                              ; preds = %188, %177
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %12, align 4
  br label %171

201:                                              ; preds = %171
  %202 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %15, align 8
  %203 = icmp ne %struct.amdgpu_clock_voltage_dependency_table* %202, null
  br i1 %203, label %204, label %259

204:                                              ; preds = %201
  %205 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %15, align 8
  %206 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %259

209:                                              ; preds = %204
  store i32 0, i32* %12, align 4
  br label %210

210:                                              ; preds = %255, %209
  %211 = load i32, i32* %12, align 4
  %212 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %213 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %258

216:                                              ; preds = %210
  %217 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %218 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %254

221:                                              ; preds = %216
  %222 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %223 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %226 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %227 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %226, i32 0, i32 6
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = call i64 @kv_convert_8bit_index_to_voltage(%struct.amdgpu_device* %225, i32 %233)
  %235 = icmp slt i64 %224, %234
  br i1 %235, label %236, label %254

236:                                              ; preds = %221
  %237 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %238 = call i32 @kv_get_high_voltage_limit(%struct.amdgpu_device* %237, i32* %13)
  %239 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %15, align 8
  %240 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %239, i32 0, i32 1
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = load i32, i32* %13, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %248 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %247, i32 0, i32 6
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %248, align 8
  %250 = load i32, i32* %12, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 0
  store i64 %246, i64* %253, align 8
  br label %254

254:                                              ; preds = %236, %221, %216
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %12, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %12, align 4
  br label %210

258:                                              ; preds = %210
  br label %312

259:                                              ; preds = %204, %201
  %260 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %261 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 2
  store %struct.sumo_sclk_voltage_mapping_table* %262, %struct.sumo_sclk_voltage_mapping_table** %18, align 8
  store i32 0, i32* %12, align 4
  br label %263

263:                                              ; preds = %308, %259
  %264 = load i32, i32* %12, align 4
  %265 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %266 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = icmp slt i32 %264, %267
  br i1 %268, label %269, label %311

269:                                              ; preds = %263
  %270 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %271 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %307

274:                                              ; preds = %269
  %275 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %276 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %279 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %280 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %279, i32 0, i32 6
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %280, align 8
  %282 = load i32, i32* %12, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = call i64 @kv_convert_8bit_index_to_voltage(%struct.amdgpu_device* %278, i32 %286)
  %288 = icmp slt i64 %277, %287
  br i1 %288, label %289, label %307

289:                                              ; preds = %274
  %290 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %291 = call i32 @kv_get_high_voltage_limit(%struct.amdgpu_device* %290, i32* %13)
  %292 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %18, align 8
  %293 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %292, i32 0, i32 0
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %293, align 8
  %295 = load i32, i32* %13, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %301 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %300, i32 0, i32 6
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %301, align 8
  %303 = load i32, i32* %12, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 0
  store i64 %299, i64* %306, align 8
  br label %307

307:                                              ; preds = %289, %274, %269
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %12, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %12, align 4
  br label %263

311:                                              ; preds = %263
  br label %312

312:                                              ; preds = %311, %258
  %313 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %314 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %313, i32 0, i32 5
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %337

317:                                              ; preds = %312
  store i32 0, i32* %12, align 4
  br label %318

318:                                              ; preds = %333, %317
  %319 = load i32, i32* %12, align 4
  %320 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %321 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = icmp slt i32 %319, %322
  br i1 %323, label %324, label %336

324:                                              ; preds = %318
  %325 = load i64, i64* %16, align 8
  %326 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %327 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %326, i32 0, i32 6
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %327, align 8
  %329 = load i32, i32* %12, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 0
  store i64 %325, i64* %332, align 8
  br label %333

333:                                              ; preds = %324
  %334 = load i32, i32* %12, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %12, align 4
  br label %318

336:                                              ; preds = %318
  br label %337

337:                                              ; preds = %336, %312
  %338 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %339 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %338, i32 0, i32 4
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %357, label %342

342:                                              ; preds = %337
  %343 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %344 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %357, label %347

347:                                              ; preds = %342
  %348 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %349 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %357, label %352

352:                                              ; preds = %347
  %353 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %354 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br label %357

357:                                              ; preds = %352, %347, %342, %337
  %358 = phi i1 [ true, %347 ], [ true, %342 ], [ true, %337 ], [ %356, %352 ]
  %359 = zext i1 %358 to i32
  %360 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %361 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %360, i32 0, i32 1
  store i32 %359, i32* %361, align 8
  %362 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %363 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_MASK, align 4
  %366 = and i32 %364, %365
  %367 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_BATTERY, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %372

369:                                              ; preds = %357
  %370 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %371 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %370, i32 0, i32 2
  store i32 1, i32* %371, align 4
  br label %375

372:                                              ; preds = %357
  %373 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %374 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %373, i32 0, i32 2
  store i32 0, i32* %374, align 4
  br label %375

375:                                              ; preds = %372, %369
  %376 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %377 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @CHIP_KABINI, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %387, label %381

381:                                              ; preds = %375
  %382 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %383 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @CHIP_MULLINS, align 8
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %387, label %396

387:                                              ; preds = %381, %375
  %388 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %389 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %388, i32 0, i32 2
  store i32 1, i32* %389, align 8
  %390 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %391 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %390, i32 0, i32 3
  store i32 0, i32* %391, align 4
  %392 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %393 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %392, i32 0, i32 4
  store i32 1, i32* %393, align 8
  %394 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %395 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %394, i32 0, i32 5
  store i32 0, i32* %395, align 4
  br label %456

396:                                              ; preds = %381
  %397 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %398 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %397, i32 0, i32 2
  store i32 3, i32* %398, align 8
  %399 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %400 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %399, i32 0, i32 3
  store i32 0, i32* %400, align 4
  %401 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %402 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %401, i32 0, i32 4
  store i32 3, i32* %402, align 8
  %403 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %404 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %403, i32 0, i32 5
  store i32 0, i32* %404, align 4
  %405 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %406 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %405, i32 0, i32 4
  %407 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %455

410:                                              ; preds = %396
  %411 = load i64, i64* %11, align 8
  %412 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %413 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %412, i32 0, i32 4
  %414 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %413, i32 0, i32 0
  %415 = load i64*, i64** %414, align 8
  %416 = getelementptr inbounds i64, i64* %415, i64 3
  %417 = load i64, i64* %416, align 8
  %418 = icmp sge i64 %411, %417
  br i1 %418, label %436, label %419

419:                                              ; preds = %410
  %420 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %421 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 8
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %436, label %424

424:                                              ; preds = %419
  %425 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %426 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  %430 = icmp sge i32 %429, 3
  br i1 %430, label %436, label %431

431:                                              ; preds = %424
  %432 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %433 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %432, i32 0, i32 3
  %434 = load i64, i64* %433, align 8
  %435 = icmp ne i64 %434, 0
  br label %436

436:                                              ; preds = %431, %424, %419, %410
  %437 = phi i1 [ true, %424 ], [ true, %419 ], [ true, %410 ], [ %435, %431 ]
  %438 = zext i1 %437 to i32
  store i32 %438, i32* %14, align 4
  %439 = load i32, i32* %14, align 4
  %440 = icmp ne i32 %439, 0
  %441 = zext i1 %440 to i64
  %442 = select i1 %440, i32 2, i32 3
  %443 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %444 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %443, i32 0, i32 2
  store i32 %442, i32* %444, align 8
  %445 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %446 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %445, i32 0, i32 3
  store i32 2, i32* %446, align 4
  %447 = load i32, i32* %14, align 4
  %448 = icmp ne i32 %447, 0
  %449 = zext i1 %448 to i64
  %450 = select i1 %448, i32 2, i32 3
  %451 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %452 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %451, i32 0, i32 4
  store i32 %450, i32* %452, align 8
  %453 = load %struct.kv_ps*, %struct.kv_ps** %7, align 8
  %454 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %453, i32 0, i32 5
  store i32 2, i32* %454, align 4
  br label %455

455:                                              ; preds = %436, %396
  br label %456

456:                                              ; preds = %455, %387
  ret void
}

declare dso_local %struct.kv_ps* @kv_get_ps(%struct.amdgpu_ps*) #1

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i64 @kv_convert_8bit_index_to_voltage(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @kv_get_high_voltage_limit(%struct.amdgpu_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
