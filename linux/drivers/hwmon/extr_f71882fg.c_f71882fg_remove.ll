; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_f71882fg_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_f71882fg_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.f71882fg_data = type { i64, i32, i64 }

@f71882fg_nr_fans = common dso_local global i32* null, align 8
@f71882fg_nr_temps = common dso_local global i32* null, align 8
@F71882FG_REG_START = common dso_local global i32 0, align 4
@dev_attr_name = common dso_local global i32 0, align 4
@f8000_temp_attr = common dso_local global i32* null, align 8
@f71858fg_temp_attr = common dso_local global i32* null, align 8
@fxxxx_temp_attr = common dso_local global i32** null, align 8
@f71882fg_temp_has_beep = common dso_local global i64* null, align 8
@f81866_temp_beep_attr = common dso_local global i32** null, align 8
@fxxxx_temp_beep_attr = common dso_local global i32** null, align 8
@F71882FG_MAX_INS = common dso_local global i32 0, align 4
@f71882fg_has_in = common dso_local global i64** null, align 8
@fxxxx_in_attr = common dso_local global %struct.TYPE_2__* null, align 8
@f71882fg_has_in1_alarm = common dso_local global i64* null, align 8
@fxxxx_in1_alarm_attr = common dso_local global i32* null, align 8
@fxxxx_fan_attr = common dso_local global i32** null, align 8
@f71882fg_fan_has_beep = common dso_local global i64* null, align 8
@fxxxx_fan_beep_attr = common dso_local global i32* null, align 8
@fxxxx_auto_pwm_attr = common dso_local global i32** null, align 8
@f71808a_fan3_attr = common dso_local global i32* null, align 8
@f71862fg_auto_pwm_attr = common dso_local global i32** null, align 8
@f71869_auto_pwm_attr = common dso_local global i32** null, align 8
@f8000_fan_attr = common dso_local global i32* null, align 8
@f8000_auto_pwm_attr = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @f71882fg_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f71882fg_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.f71882fg_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.f71882fg_data* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.f71882fg_data* %9, %struct.f71882fg_data** %3, align 8
  %10 = load i32*, i32** @f71882fg_nr_fans, align 8
  %11 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %12 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32*, i32** @f71882fg_nr_temps, align 8
  %17 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %18 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %23 = load i32, i32* @F71882FG_REG_START, align 4
  %24 = call i32 @f71882fg_read8(%struct.f71882fg_data* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %26 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %31 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @hwmon_device_unregister(i64 %32)
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @device_remove_file(i32* %36, i32* @dev_attr_name)
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %174

41:                                               ; preds = %34
  %42 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %43 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  switch i64 %44, label %76 [
    i64 132, label %45
    i64 129, label %64
    i64 128, label %70
  ]

45:                                               ; preds = %41
  %46 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %47 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 16
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %53 = load i32*, i32** @f8000_temp_attr, align 8
  %54 = load i32*, i32** @f8000_temp_attr, align 8
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  %56 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %52, i32* %53, i32 %55)
  br label %63

57:                                               ; preds = %45
  %58 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %59 = load i32*, i32** @f71858fg_temp_attr, align 8
  %60 = load i32*, i32** @f71858fg_temp_attr, align 8
  %61 = call i32 @ARRAY_SIZE(i32* %60)
  %62 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %58, i32* %59, i32 %61)
  br label %63

63:                                               ; preds = %57, %51
  br label %89

64:                                               ; preds = %41
  %65 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %66 = load i32*, i32** @f8000_temp_attr, align 8
  %67 = load i32*, i32** @f8000_temp_attr, align 8
  %68 = call i32 @ARRAY_SIZE(i32* %67)
  %69 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %65, i32* %66, i32 %68)
  br label %89

70:                                               ; preds = %41
  %71 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %72 = load i32*, i32** @f71858fg_temp_attr, align 8
  %73 = load i32*, i32** @f71858fg_temp_attr, align 8
  %74 = call i32 @ARRAY_SIZE(i32* %73)
  %75 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %71, i32* %72, i32 %74)
  br label %89

76:                                               ; preds = %41
  %77 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %78 = load i32**, i32*** @fxxxx_temp_attr, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32**, i32*** @fxxxx_temp_attr, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @ARRAY_SIZE(i32* %84)
  %86 = load i32, i32* %5, align 4
  %87 = mul nsw i32 %85, %86
  %88 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %77, i32* %81, i32 %87)
  br label %89

89:                                               ; preds = %76, %70, %64, %63
  %90 = load i64*, i64** @f71882fg_temp_has_beep, align 8
  %91 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %92 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i64, i64* %90, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %129

97:                                               ; preds = %89
  %98 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %99 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 128
  br i1 %101, label %102, label %115

102:                                              ; preds = %97
  %103 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %104 = load i32**, i32*** @f81866_temp_beep_attr, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32**, i32*** @f81866_temp_beep_attr, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @ARRAY_SIZE(i32* %110)
  %112 = load i32, i32* %5, align 4
  %113 = mul nsw i32 %111, %112
  %114 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %103, i32* %107, i32 %113)
  br label %128

115:                                              ; preds = %97
  %116 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %117 = load i32**, i32*** @fxxxx_temp_beep_attr, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32**, i32*** @fxxxx_temp_beep_attr, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i64 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @ARRAY_SIZE(i32* %123)
  %125 = load i32, i32* %5, align 4
  %126 = mul nsw i32 %124, %125
  %127 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %116, i32* %120, i32 %126)
  br label %128

128:                                              ; preds = %115, %102
  br label %129

129:                                              ; preds = %128, %89
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %156, %129
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @F71882FG_MAX_INS, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %159

134:                                              ; preds = %130
  %135 = load i64**, i64*** @f71882fg_has_in, align 8
  %136 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %137 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i64*, i64** %135, i64 %138
  %140 = load i64*, i64** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %134
  %147 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fxxxx_in_attr, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = call i32 @device_remove_file(i32* %148, i32* %153)
  br label %155

155:                                              ; preds = %146, %134
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %130

159:                                              ; preds = %130
  %160 = load i64*, i64** @f71882fg_has_in1_alarm, align 8
  %161 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %162 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i64, i64* %160, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %159
  %168 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %169 = load i32*, i32** @fxxxx_in1_alarm_attr, align 8
  %170 = load i32*, i32** @fxxxx_in1_alarm_attr, align 8
  %171 = call i32 @ARRAY_SIZE(i32* %170)
  %172 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %168, i32* %169, i32 %171)
  br label %173

173:                                              ; preds = %167, %159
  br label %174

174:                                              ; preds = %173, %34
  %175 = load i32, i32* %7, align 4
  %176 = and i32 %175, 2
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %283

178:                                              ; preds = %174
  %179 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %180 = load i32**, i32*** @fxxxx_fan_attr, align 8
  %181 = getelementptr inbounds i32*, i32** %180, i64 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32**, i32*** @fxxxx_fan_attr, align 8
  %185 = getelementptr inbounds i32*, i32** %184, i64 0
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @ARRAY_SIZE(i32* %186)
  %188 = load i32, i32* %4, align 4
  %189 = mul nsw i32 %187, %188
  %190 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %179, i32* %183, i32 %189)
  %191 = load i64*, i64** @f71882fg_fan_has_beep, align 8
  %192 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %193 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds i64, i64* %191, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %178
  %199 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %200 = load i32*, i32** @fxxxx_fan_beep_attr, align 8
  %201 = load i32, i32* %4, align 4
  %202 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %199, i32* %200, i32 %201)
  br label %203

203:                                              ; preds = %198, %178
  %204 = load %struct.f71882fg_data*, %struct.f71882fg_data** %3, align 8
  %205 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  switch i64 %206, label %269 [
    i64 134, label %207
    i64 131, label %225
    i64 133, label %238
    i64 130, label %238
    i64 129, label %251
  ]

207:                                              ; preds = %203
  %208 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %209 = load i32**, i32*** @fxxxx_auto_pwm_attr, align 8
  %210 = getelementptr inbounds i32*, i32** %209, i64 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32**, i32*** @fxxxx_auto_pwm_attr, align 8
  %214 = getelementptr inbounds i32*, i32** %213, i64 0
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @ARRAY_SIZE(i32* %215)
  %217 = load i32, i32* %4, align 4
  %218 = mul nsw i32 %216, %217
  %219 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %208, i32* %212, i32 %218)
  %220 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %221 = load i32*, i32** @f71808a_fan3_attr, align 8
  %222 = load i32*, i32** @f71808a_fan3_attr, align 8
  %223 = call i32 @ARRAY_SIZE(i32* %222)
  %224 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %220, i32* %221, i32 %223)
  br label %282

225:                                              ; preds = %203
  %226 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %227 = load i32**, i32*** @f71862fg_auto_pwm_attr, align 8
  %228 = getelementptr inbounds i32*, i32** %227, i64 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32**, i32*** @f71862fg_auto_pwm_attr, align 8
  %232 = getelementptr inbounds i32*, i32** %231, i64 0
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @ARRAY_SIZE(i32* %233)
  %235 = load i32, i32* %4, align 4
  %236 = mul nsw i32 %234, %235
  %237 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %226, i32* %230, i32 %236)
  br label %282

238:                                              ; preds = %203, %203
  %239 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %240 = load i32**, i32*** @f71869_auto_pwm_attr, align 8
  %241 = getelementptr inbounds i32*, i32** %240, i64 0
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32**, i32*** @f71869_auto_pwm_attr, align 8
  %245 = getelementptr inbounds i32*, i32** %244, i64 0
  %246 = load i32*, i32** %245, align 8
  %247 = call i32 @ARRAY_SIZE(i32* %246)
  %248 = load i32, i32* %4, align 4
  %249 = mul nsw i32 %247, %248
  %250 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %239, i32* %243, i32 %249)
  br label %282

251:                                              ; preds = %203
  %252 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %253 = load i32*, i32** @f8000_fan_attr, align 8
  %254 = load i32*, i32** @f8000_fan_attr, align 8
  %255 = call i32 @ARRAY_SIZE(i32* %254)
  %256 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %252, i32* %253, i32 %255)
  %257 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %258 = load i32**, i32*** @f8000_auto_pwm_attr, align 8
  %259 = getelementptr inbounds i32*, i32** %258, i64 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load i32**, i32*** @f8000_auto_pwm_attr, align 8
  %263 = getelementptr inbounds i32*, i32** %262, i64 0
  %264 = load i32*, i32** %263, align 8
  %265 = call i32 @ARRAY_SIZE(i32* %264)
  %266 = load i32, i32* %4, align 4
  %267 = mul nsw i32 %265, %266
  %268 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %257, i32* %261, i32 %267)
  br label %282

269:                                              ; preds = %203
  %270 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %271 = load i32**, i32*** @fxxxx_auto_pwm_attr, align 8
  %272 = getelementptr inbounds i32*, i32** %271, i64 0
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  %275 = load i32**, i32*** @fxxxx_auto_pwm_attr, align 8
  %276 = getelementptr inbounds i32*, i32** %275, i64 0
  %277 = load i32*, i32** %276, align 8
  %278 = call i32 @ARRAY_SIZE(i32* %277)
  %279 = load i32, i32* %4, align 4
  %280 = mul nsw i32 %278, %279
  %281 = call i32 @f71882fg_remove_sysfs_files(%struct.platform_device* %270, i32* %274, i32 %280)
  br label %282

282:                                              ; preds = %269, %251, %238, %225, %207
  br label %283

283:                                              ; preds = %282, %174
  ret i32 0
}

declare dso_local %struct.f71882fg_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @f71882fg_read8(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @hwmon_device_unregister(i64) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @f71882fg_remove_sysfs_files(%struct.platform_device*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
