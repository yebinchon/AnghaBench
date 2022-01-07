; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_device_remove_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_device_remove_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sensor_device_attribute = type { i64, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.device = type { i32 }
%struct.w83627ehf_data = type { i32*, i32, i32, i32, i64, i64 }

@sda_sf3_arrays = common dso_local global %struct.sensor_device_attribute* null, align 8
@sda_sf3_max_step_arrays = common dso_local global %struct.sensor_device_attribute* null, align 8
@sda_sf3_arrays_fan3 = common dso_local global %struct.sensor_device_attribute* null, align 8
@sda_sf3_arrays_fan4 = common dso_local global %struct.sensor_device_attribute* null, align 8
@sda_in_input = common dso_local global %struct.TYPE_27__* null, align 8
@sda_in_alarm = common dso_local global %struct.TYPE_28__* null, align 8
@sda_in_min = common dso_local global %struct.TYPE_25__* null, align 8
@sda_in_max = common dso_local global %struct.TYPE_26__* null, align 8
@sda_fan_input = common dso_local global %struct.TYPE_30__* null, align 8
@sda_fan_alarm = common dso_local global %struct.TYPE_33__* null, align 8
@sda_fan_div = common dso_local global %struct.TYPE_31__* null, align 8
@sda_fan_min = common dso_local global %struct.TYPE_29__* null, align 8
@sda_pwm = common dso_local global %struct.TYPE_24__* null, align 8
@sda_pwm_mode = common dso_local global %struct.TYPE_22__* null, align 8
@sda_pwm_enable = common dso_local global %struct.TYPE_23__* null, align 8
@sda_target_temp = common dso_local global %struct.TYPE_42__* null, align 8
@sda_tolerance = common dso_local global %struct.TYPE_32__* null, align 8
@NUM_REG_TEMP = common dso_local global i32 0, align 4
@sda_temp_input = common dso_local global %struct.TYPE_40__* null, align 8
@sda_temp_label = common dso_local global %struct.TYPE_39__* null, align 8
@sda_temp_max = common dso_local global %struct.TYPE_38__* null, align 8
@sda_temp_max_hyst = common dso_local global %struct.TYPE_37__* null, align 8
@sda_temp_alarm = common dso_local global %struct.TYPE_41__* null, align 8
@sda_temp_type = common dso_local global %struct.TYPE_35__* null, align 8
@sda_temp_offset = common dso_local global %struct.TYPE_36__* null, align 8
@sda_caseopen = common dso_local global %struct.TYPE_34__* null, align 8
@dev_attr_name = common dso_local global i32 0, align 4
@dev_attr_cpu0_vid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @w83627ehf_device_remove_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83627ehf_device_remove_files(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.w83627ehf_data*, align 8
  %5 = alloca %struct.sensor_device_attribute*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.w83627ehf_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.w83627ehf_data* %7, %struct.w83627ehf_data** %4, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** @sda_sf3_arrays, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.sensor_device_attribute* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** @sda_sf3_arrays, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %15, i64 %17
  %19 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %18, i32 0, i32 1
  %20 = call i32 @device_remove_file(%struct.device* %14, i32* %19)
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %8

24:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %55, %24
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** @sda_sf3_max_step_arrays, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.sensor_device_attribute* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %25
  %31 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** @sda_sf3_max_step_arrays, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %31, i64 %33
  store %struct.sensor_device_attribute* %34, %struct.sensor_device_attribute** %5, align 8
  %35 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %36 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %30
  %40 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %41 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %5, align 8
  %44 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 255
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load %struct.device*, %struct.device** %2, align 8
  %51 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %5, align 8
  %52 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %51, i32 0, i32 1
  %53 = call i32 @device_remove_file(%struct.device* %50, i32* %52)
  br label %54

54:                                               ; preds = %49, %39, %30
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %25

58:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %72, %58
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** @sda_sf3_arrays_fan3, align 8
  %62 = call i32 @ARRAY_SIZE(%struct.sensor_device_attribute* %61)
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.device*, %struct.device** %2, align 8
  %66 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** @sda_sf3_arrays_fan3, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %66, i64 %68
  %70 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %69, i32 0, i32 1
  %71 = call i32 @device_remove_file(%struct.device* %65, i32* %70)
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %59

75:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %89, %75
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** @sda_sf3_arrays_fan4, align 8
  %79 = call i32 @ARRAY_SIZE(%struct.sensor_device_attribute* %78)
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load %struct.device*, %struct.device** %2, align 8
  %83 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** @sda_sf3_arrays_fan4, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %83, i64 %85
  %87 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %86, i32 0, i32 1
  %88 = call i32 @device_remove_file(%struct.device* %82, i32* %87)
  br label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %76

92:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %137, %92
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %96 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %140

99:                                               ; preds = %93
  %100 = load i32, i32* %3, align 4
  %101 = icmp eq i32 %100, 6
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %104 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %137

108:                                              ; preds = %102, %99
  %109 = load %struct.device*, %struct.device** %2, align 8
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** @sda_in_input, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 0
  %115 = call i32 @device_remove_file(%struct.device* %109, i32* %114)
  %116 = load %struct.device*, %struct.device** %2, align 8
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sda_in_alarm, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  %122 = call i32 @device_remove_file(%struct.device* %116, i32* %121)
  %123 = load %struct.device*, %struct.device** %2, align 8
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** @sda_in_min, align 8
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 0
  %129 = call i32 @device_remove_file(%struct.device* %123, i32* %128)
  %130 = load %struct.device*, %struct.device** %2, align 8
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sda_in_max, align 8
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 0
  %136 = call i32 @device_remove_file(%struct.device* %130, i32* %135)
  br label %137

137:                                              ; preds = %108, %107
  %138 = load i32, i32* %3, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %3, align 4
  br label %93

140:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %173, %140
  %142 = load i32, i32* %3, align 4
  %143 = icmp slt i32 %142, 5
  br i1 %143, label %144, label %176

144:                                              ; preds = %141
  %145 = load %struct.device*, %struct.device** %2, align 8
  %146 = load %struct.TYPE_30__*, %struct.TYPE_30__** @sda_fan_input, align 8
  %147 = load i32, i32* %3, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %149, i32 0, i32 0
  %151 = call i32 @device_remove_file(%struct.device* %145, i32* %150)
  %152 = load %struct.device*, %struct.device** %2, align 8
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** @sda_fan_alarm, align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %156, i32 0, i32 0
  %158 = call i32 @device_remove_file(%struct.device* %152, i32* %157)
  %159 = load %struct.device*, %struct.device** %2, align 8
  %160 = load %struct.TYPE_31__*, %struct.TYPE_31__** @sda_fan_div, align 8
  %161 = load i32, i32* %3, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %163, i32 0, i32 0
  %165 = call i32 @device_remove_file(%struct.device* %159, i32* %164)
  %166 = load %struct.device*, %struct.device** %2, align 8
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sda_fan_min, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 0
  %172 = call i32 @device_remove_file(%struct.device* %166, i32* %171)
  br label %173

173:                                              ; preds = %144
  %174 = load i32, i32* %3, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %3, align 4
  br label %141

176:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %219, %176
  %178 = load i32, i32* %3, align 4
  %179 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %180 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %222

183:                                              ; preds = %177
  %184 = load %struct.device*, %struct.device** %2, align 8
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** @sda_pwm, align 8
  %186 = load i32, i32* %3, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  %190 = call i32 @device_remove_file(%struct.device* %184, i32* %189)
  %191 = load %struct.device*, %struct.device** %2, align 8
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** @sda_pwm_mode, align 8
  %193 = load i32, i32* %3, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  %197 = call i32 @device_remove_file(%struct.device* %191, i32* %196)
  %198 = load %struct.device*, %struct.device** %2, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sda_pwm_enable, align 8
  %200 = load i32, i32* %3, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 0
  %204 = call i32 @device_remove_file(%struct.device* %198, i32* %203)
  %205 = load %struct.device*, %struct.device** %2, align 8
  %206 = load %struct.TYPE_42__*, %struct.TYPE_42__** @sda_target_temp, align 8
  %207 = load i32, i32* %3, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %209, i32 0, i32 0
  %211 = call i32 @device_remove_file(%struct.device* %205, i32* %210)
  %212 = load %struct.device*, %struct.device** %2, align 8
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sda_tolerance, align 8
  %214 = load i32, i32* %3, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %216, i32 0, i32 0
  %218 = call i32 @device_remove_file(%struct.device* %212, i32* %217)
  br label %219

219:                                              ; preds = %183
  %220 = load i32, i32* %3, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %3, align 4
  br label %177

222:                                              ; preds = %177
  store i32 0, i32* %3, align 4
  br label %223

223:                                              ; preds = %299, %222
  %224 = load i32, i32* %3, align 4
  %225 = load i32, i32* @NUM_REG_TEMP, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %302

227:                                              ; preds = %223
  %228 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %229 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %3, align 4
  %232 = shl i32 1, %231
  %233 = and i32 %230, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %227
  br label %299

236:                                              ; preds = %227
  %237 = load %struct.device*, %struct.device** %2, align 8
  %238 = load %struct.TYPE_40__*, %struct.TYPE_40__** @sda_temp_input, align 8
  %239 = load i32, i32* %3, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %241, i32 0, i32 0
  %243 = call i32 @device_remove_file(%struct.device* %237, i32* %242)
  %244 = load %struct.device*, %struct.device** %2, align 8
  %245 = load %struct.TYPE_39__*, %struct.TYPE_39__** @sda_temp_label, align 8
  %246 = load i32, i32* %3, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %248, i32 0, i32 0
  %250 = call i32 @device_remove_file(%struct.device* %244, i32* %249)
  %251 = load i32, i32* %3, align 4
  %252 = icmp eq i32 %251, 2
  br i1 %252, label %253, label %259

253:                                              ; preds = %236
  %254 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %255 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %254, i32 0, i32 4
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  br label %299

259:                                              ; preds = %253, %236
  %260 = load %struct.device*, %struct.device** %2, align 8
  %261 = load %struct.TYPE_38__*, %struct.TYPE_38__** @sda_temp_max, align 8
  %262 = load i32, i32* %3, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %264, i32 0, i32 0
  %266 = call i32 @device_remove_file(%struct.device* %260, i32* %265)
  %267 = load %struct.device*, %struct.device** %2, align 8
  %268 = load %struct.TYPE_37__*, %struct.TYPE_37__** @sda_temp_max_hyst, align 8
  %269 = load i32, i32* %3, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %271, i32 0, i32 0
  %273 = call i32 @device_remove_file(%struct.device* %267, i32* %272)
  %274 = load i32, i32* %3, align 4
  %275 = icmp sgt i32 %274, 2
  br i1 %275, label %276, label %277

276:                                              ; preds = %259
  br label %299

277:                                              ; preds = %259
  %278 = load %struct.device*, %struct.device** %2, align 8
  %279 = load %struct.TYPE_41__*, %struct.TYPE_41__** @sda_temp_alarm, align 8
  %280 = load i32, i32* %3, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %282, i32 0, i32 0
  %284 = call i32 @device_remove_file(%struct.device* %278, i32* %283)
  %285 = load %struct.device*, %struct.device** %2, align 8
  %286 = load %struct.TYPE_35__*, %struct.TYPE_35__** @sda_temp_type, align 8
  %287 = load i32, i32* %3, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %289, i32 0, i32 0
  %291 = call i32 @device_remove_file(%struct.device* %285, i32* %290)
  %292 = load %struct.device*, %struct.device** %2, align 8
  %293 = load %struct.TYPE_36__*, %struct.TYPE_36__** @sda_temp_offset, align 8
  %294 = load i32, i32* %3, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %296, i32 0, i32 0
  %298 = call i32 @device_remove_file(%struct.device* %292, i32* %297)
  br label %299

299:                                              ; preds = %277, %276, %258, %235
  %300 = load i32, i32* %3, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %3, align 4
  br label %223

302:                                              ; preds = %223
  %303 = load %struct.device*, %struct.device** %2, align 8
  %304 = load %struct.TYPE_34__*, %struct.TYPE_34__** @sda_caseopen, align 8
  %305 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %304, i64 0
  %306 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %305, i32 0, i32 0
  %307 = call i32 @device_remove_file(%struct.device* %303, i32* %306)
  %308 = load %struct.device*, %struct.device** %2, align 8
  %309 = load %struct.TYPE_34__*, %struct.TYPE_34__** @sda_caseopen, align 8
  %310 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %309, i64 1
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %310, i32 0, i32 0
  %312 = call i32 @device_remove_file(%struct.device* %308, i32* %311)
  %313 = load %struct.device*, %struct.device** %2, align 8
  %314 = call i32 @device_remove_file(%struct.device* %313, i32* @dev_attr_name)
  %315 = load %struct.device*, %struct.device** %2, align 8
  %316 = call i32 @device_remove_file(%struct.device* %315, i32* @dev_attr_cpu0_vid)
  ret void
}

declare dso_local %struct.w83627ehf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sensor_device_attribute*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
