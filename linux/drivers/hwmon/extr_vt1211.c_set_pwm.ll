; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt1211.c_set_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt1211.c_set_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vt1211_data = type { i32*, i32, i32*, i32, i32, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@VT1211_REG_FAN_DIV = common dso_local global i32 0, align 4
@VT1211_REG_PWM_CTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"pwm mode %ld not supported. Choose one of 0 or 2.\0A\00", align 1
@VT1211_REG_PWM_CLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"temp channel %ld not supported. Choose a value between 1 and 7.\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"temp channel %ld is not available.\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unknown attr fetch (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vt1211_data*, align 8
  %11 = alloca %struct.sensor_device_attribute_2*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.vt1211_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.vt1211_data* %19, %struct.vt1211_data** %10, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %21 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %20)
  store %struct.sensor_device_attribute_2* %21, %struct.sensor_device_attribute_2** %11, align 8
  %22 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %26 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @kstrtoul(i8* %28, i32 10, i64* %16)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %17, align 4
  store i32 %33, i32* %5, align 4
  br label %278

34:                                               ; preds = %4
  %35 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %36 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %35, i32 0, i32 4
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i32, i32* %13, align 4
  switch i32 %38, label %267 [
    i32 129, label %39
    i32 128, label %158
    i32 130, label %190
  ]

39:                                               ; preds = %34
  %40 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %41 = load i32, i32* @VT1211_REG_FAN_DIV, align 4
  %42 = call i32 @vt1211_read8(%struct.vt1211_data* %40, i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = ashr i32 %43, 4
  %45 = and i32 %44, 3
  %46 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %47 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %15, align 4
  %51 = ashr i32 %50, 6
  %52 = and i32 %51, 3
  %53 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %54 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %15, align 4
  %58 = and i32 %57, 15
  %59 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %60 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %62 = load i32, i32* @VT1211_REG_PWM_CTL, align 4
  %63 = call i32 @vt1211_read8(%struct.vt1211_data* %61, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = and i32 %64, 15
  %66 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %67 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %15, align 4
  %71 = ashr i32 %70, 4
  %72 = and i32 %71, 15
  %73 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %74 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %72, i32* %76, align 4
  %77 = load i64, i64* %16, align 8
  switch i64 %77, label %116 [
    i64 0, label %78
    i64 2, label %103
  ]

78:                                               ; preds = %39
  %79 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %80 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 7
  store i32 %86, i32* %84, align 4
  %87 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %88 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = xor i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %78
  %98 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %99 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, 14
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %97, %78
  br label %122

103:                                              ; preds = %39
  %104 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %105 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, 8
  store i32 %111, i32* %109, align 4
  %112 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %113 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, 1
  store i32 %115, i32* %113, align 8
  br label %122

116:                                              ; preds = %39
  %117 = load i64, i64* @EINVAL, align 8
  %118 = sub i64 0, %117
  store i64 %118, i64* %9, align 8
  %119 = load %struct.device*, %struct.device** %6, align 8
  %120 = load i64, i64* %16, align 8
  %121 = call i32 @dev_warn(%struct.device* %119, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %120)
  br label %272

122:                                              ; preds = %103, %102
  %123 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %124 = load i32, i32* @VT1211_REG_PWM_CTL, align 4
  %125 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %126 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 4
  %131 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %132 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %130, %135
  %137 = call i32 @vt1211_write8(%struct.vt1211_data* %123, i32 %124, i32 %136)
  %138 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %139 = load i32, i32* @VT1211_REG_FAN_DIV, align 4
  %140 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %141 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %144, 6
  %146 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %147 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, 4
  %152 = or i32 %145, %151
  %153 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %154 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %152, %155
  %157 = call i32 @vt1211_write8(%struct.vt1211_data* %138, i32 %139, i32 %156)
  br label %271

158:                                              ; preds = %34
  %159 = load i64, i64* %16, align 8
  %160 = call i32 @clamp_val(i64 %159, i32 1054, i32 135000)
  %161 = sdiv i32 135000, %160
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %16, align 8
  store i32 0, i32* %14, align 4
  %163 = load i64, i64* %16, align 8
  %164 = lshr i64 %163, 1
  store i64 %164, i64* %16, align 8
  br label %165

165:                                              ; preds = %171, %158
  %166 = load i64, i64* %16, align 8
  %167 = icmp ugt i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %14, align 4
  br label %171

171:                                              ; preds = %168
  %172 = load i64, i64* %16, align 8
  %173 = lshr i64 %172, 1
  store i64 %173, i64* %16, align 8
  br label %165

174:                                              ; preds = %165
  %175 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %176 = load i32, i32* @VT1211_REG_PWM_CLK, align 4
  %177 = call i32 @vt1211_read8(%struct.vt1211_data* %175, i32 %176)
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* %15, align 4
  %179 = and i32 %178, 248
  %180 = load i32, i32* %14, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %183 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 8
  %184 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %185 = load i32, i32* @VT1211_REG_PWM_CLK, align 4
  %186 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %187 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @vt1211_write8(%struct.vt1211_data* %184, i32 %185, i32 %188)
  br label %271

190:                                              ; preds = %34
  %191 = load i64, i64* %16, align 8
  %192 = icmp ult i64 %191, 1
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load i64, i64* %16, align 8
  %195 = icmp ugt i64 %194, 7
  br i1 %195, label %196, label %202

196:                                              ; preds = %193, %190
  %197 = load i64, i64* @EINVAL, align 8
  %198 = sub i64 0, %197
  store i64 %198, i64* %9, align 8
  %199 = load %struct.device*, %struct.device** %6, align 8
  %200 = load i64, i64* %16, align 8
  %201 = call i32 @dev_warn(%struct.device* %199, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %200)
  br label %272

202:                                              ; preds = %193
  %203 = load i64, i64* %16, align 8
  %204 = sub i64 %203, 1
  %205 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %206 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @ISTEMP(i64 %204, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %216, label %210

210:                                              ; preds = %202
  %211 = load i64, i64* @EINVAL, align 8
  %212 = sub i64 0, %211
  store i64 %212, i64* %9, align 8
  %213 = load %struct.device*, %struct.device** %6, align 8
  %214 = load i64, i64* %16, align 8
  %215 = call i32 @dev_warn(%struct.device* %213, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %214)
  br label %272

216:                                              ; preds = %202
  %217 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %218 = load i32, i32* @VT1211_REG_PWM_CTL, align 4
  %219 = call i32 @vt1211_read8(%struct.vt1211_data* %217, i32 %218)
  store i32 %219, i32* %15, align 4
  %220 = load i32, i32* %15, align 4
  %221 = and i32 %220, 15
  %222 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %223 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  store i32 %221, i32* %225, align 4
  %226 = load i32, i32* %15, align 4
  %227 = ashr i32 %226, 4
  %228 = and i32 %227, 15
  %229 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %230 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  store i32 %228, i32* %232, align 4
  %233 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %234 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, 8
  %241 = sext i32 %240 to i64
  %242 = load i64, i64* %16, align 8
  %243 = sub i64 %242, 1
  %244 = or i64 %241, %243
  %245 = trunc i64 %244 to i32
  %246 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %247 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 %245, i32* %251, align 4
  %252 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %253 = load i32, i32* @VT1211_REG_PWM_CTL, align 4
  %254 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %255 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = shl i32 %258, 4
  %260 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %261 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %259, %264
  %266 = call i32 @vt1211_write8(%struct.vt1211_data* %252, i32 %253, i32 %265)
  br label %271

267:                                              ; preds = %34
  %268 = load %struct.device*, %struct.device** %6, align 8
  %269 = load i32, i32* %13, align 4
  %270 = call i32 @dev_dbg(%struct.device* %268, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %267, %216, %174, %122
  br label %272

272:                                              ; preds = %271, %210, %196, %116
  %273 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %274 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %273, i32 0, i32 4
  %275 = call i32 @mutex_unlock(i32* %274)
  %276 = load i64, i64* %9, align 8
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %5, align 4
  br label %278

278:                                              ; preds = %272, %32
  %279 = load i32, i32* %5, align 4
  ret i32 %279
}

declare dso_local %struct.vt1211_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vt1211_read8(%struct.vt1211_data*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local i32 @vt1211_write8(%struct.vt1211_data*, i32, i32) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @ISTEMP(i64, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
