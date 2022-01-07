; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_calculate_dfs_bypass_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_calculate_dfs_bypass_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.radeon_clock_voltage_dependency_table }
%struct.radeon_clock_voltage_dependency_table = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.kv_power_info = type { i64, %struct.TYPE_14__*, i64, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.sumo_sclk_voltage_mapping_table }
%struct.sumo_sclk_voltage_mapping_table = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @kv_calculate_dfs_bypass_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_calculate_dfs_bypass_settings(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.kv_power_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.radeon_clock_voltage_dependency_table*, align 8
  %6 = alloca %struct.sumo_sclk_voltage_mapping_table*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = call %struct.kv_power_info* @kv_get_pi(%struct.radeon_device* %7)
  store %struct.kv_power_info* %8, %struct.kv_power_info** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store %struct.radeon_clock_voltage_dependency_table* %13, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %14 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %15 = icmp ne %struct.radeon_clock_voltage_dependency_table* %14, null
  br i1 %15, label %16, label %142

16:                                               ; preds = %1
  %17 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %18 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %142

21:                                               ; preds = %16
  store i64 0, i64* %4, align 8
  br label %22

22:                                               ; preds = %138, %21
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %25 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %141

28:                                               ; preds = %22
  %29 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %30 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %130

33:                                               ; preds = %28
  %34 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %35 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @kv_get_clock_difference(i32 %40, i32 40000)
  %42 = icmp slt i32 %41, 200
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %45 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  store i32 3, i32* %49, align 4
  br label %129

50:                                               ; preds = %33
  %51 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %52 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @kv_get_clock_difference(i32 %57, i32 30000)
  %59 = icmp slt i32 %58, 200
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %62 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %61, i32 0, i32 1
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  store i32 2, i32* %66, align 4
  br label %128

67:                                               ; preds = %50
  %68 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %69 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @kv_get_clock_difference(i32 %74, i32 26600)
  %76 = icmp slt i32 %75, 200
  br i1 %76, label %77, label %84

77:                                               ; preds = %67
  %78 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %79 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %78, i32 0, i32 1
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store i32 7, i32* %83, align 4
  br label %127

84:                                               ; preds = %67
  %85 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %86 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %85, i32 0, i32 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = load i64, i64* %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @kv_get_clock_difference(i32 %91, i32 20000)
  %93 = icmp slt i32 %92, 200
  br i1 %93, label %94, label %101

94:                                               ; preds = %84
  %95 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %96 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %95, i32 0, i32 1
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = load i64, i64* %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  store i32 6, i32* %100, align 4
  br label %126

101:                                              ; preds = %84
  %102 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %103 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = load i64, i64* %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @kv_get_clock_difference(i32 %108, i32 10000)
  %110 = icmp slt i32 %109, 200
  br i1 %110, label %111, label %118

111:                                              ; preds = %101
  %112 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %113 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %112, i32 0, i32 1
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = load i64, i64* %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  store i32 8, i32* %117, align 4
  br label %125

118:                                              ; preds = %101
  %119 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %120 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %119, i32 0, i32 1
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = load i64, i64* %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  store i32 0, i32* %124, align 4
  br label %125

125:                                              ; preds = %118, %111
  br label %126

126:                                              ; preds = %125, %94
  br label %127

127:                                              ; preds = %126, %77
  br label %128

128:                                              ; preds = %127, %60
  br label %129

129:                                              ; preds = %128, %43
  br label %137

130:                                              ; preds = %28
  %131 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %132 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %131, i32 0, i32 1
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = load i64, i64* %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  store i32 0, i32* %136, align 4
  br label %137

137:                                              ; preds = %130, %129
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %4, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %4, align 8
  br label %22

141:                                              ; preds = %22
  br label %266

142:                                              ; preds = %16, %1
  %143 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %144 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  store %struct.sumo_sclk_voltage_mapping_table* %145, %struct.sumo_sclk_voltage_mapping_table** %6, align 8
  store i64 0, i64* %4, align 8
  br label %146

146:                                              ; preds = %262, %142
  %147 = load i64, i64* %4, align 8
  %148 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %149 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ult i64 %147, %150
  br i1 %151, label %152, label %265

152:                                              ; preds = %146
  %153 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %154 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %254

157:                                              ; preds = %152
  %158 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %6, align 8
  %159 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %158, i32 0, i32 0
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = load i64, i64* %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @kv_get_clock_difference(i32 %164, i32 40000)
  %166 = icmp slt i32 %165, 200
  br i1 %166, label %167, label %174

167:                                              ; preds = %157
  %168 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %169 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %168, i32 0, i32 1
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  %171 = load i64, i64* %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  store i32 3, i32* %173, align 4
  br label %253

174:                                              ; preds = %157
  %175 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %6, align 8
  %176 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %175, i32 0, i32 0
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %176, align 8
  %178 = load i64, i64* %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @kv_get_clock_difference(i32 %181, i32 30000)
  %183 = icmp slt i32 %182, 200
  br i1 %183, label %184, label %191

184:                                              ; preds = %174
  %185 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %186 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %185, i32 0, i32 1
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = load i64, i64* %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  store i32 2, i32* %190, align 4
  br label %252

191:                                              ; preds = %174
  %192 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %6, align 8
  %193 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %192, i32 0, i32 0
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  %195 = load i64, i64* %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @kv_get_clock_difference(i32 %198, i32 26600)
  %200 = icmp slt i32 %199, 200
  br i1 %200, label %201, label %208

201:                                              ; preds = %191
  %202 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %203 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %202, i32 0, i32 1
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = load i64, i64* %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  store i32 7, i32* %207, align 4
  br label %251

208:                                              ; preds = %191
  %209 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %6, align 8
  %210 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %209, i32 0, i32 0
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = load i64, i64* %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @kv_get_clock_difference(i32 %215, i32 20000)
  %217 = icmp slt i32 %216, 200
  br i1 %217, label %218, label %225

218:                                              ; preds = %208
  %219 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %220 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %219, i32 0, i32 1
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %220, align 8
  %222 = load i64, i64* %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  store i32 6, i32* %224, align 4
  br label %250

225:                                              ; preds = %208
  %226 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %6, align 8
  %227 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %226, i32 0, i32 0
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %227, align 8
  %229 = load i64, i64* %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @kv_get_clock_difference(i32 %232, i32 10000)
  %234 = icmp slt i32 %233, 200
  br i1 %234, label %235, label %242

235:                                              ; preds = %225
  %236 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %237 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %236, i32 0, i32 1
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %237, align 8
  %239 = load i64, i64* %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  store i32 8, i32* %241, align 4
  br label %249

242:                                              ; preds = %225
  %243 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %244 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %243, i32 0, i32 1
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %244, align 8
  %246 = load i64, i64* %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  store i32 0, i32* %248, align 4
  br label %249

249:                                              ; preds = %242, %235
  br label %250

250:                                              ; preds = %249, %218
  br label %251

251:                                              ; preds = %250, %201
  br label %252

252:                                              ; preds = %251, %184
  br label %253

253:                                              ; preds = %252, %167
  br label %261

254:                                              ; preds = %152
  %255 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %256 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %255, i32 0, i32 1
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %256, align 8
  %258 = load i64, i64* %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 0
  store i32 0, i32* %260, align 4
  br label %261

261:                                              ; preds = %254, %253
  br label %262

262:                                              ; preds = %261
  %263 = load i64, i64* %4, align 8
  %264 = add i64 %263, 1
  store i64 %264, i64* %4, align 8
  br label %146

265:                                              ; preds = %146
  br label %266

266:                                              ; preds = %265, %141
  ret void
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @kv_get_clock_difference(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
