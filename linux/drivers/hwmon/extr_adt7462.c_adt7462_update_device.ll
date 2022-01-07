; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7462.c_adt7462_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7462.c_adt7462_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7462_data = type { i64, i32, i64, i32, i32, i8*, i8*, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8*, i32*, i8**, i8**, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@SENSOR_REFRESH_INTERVAL = common dso_local global i64 0, align 8
@ADT7462_TEMP_COUNT = common dso_local global i32 0, align 4
@ADT7462_FAN_COUNT = common dso_local global i32 0, align 4
@ADT7462_REG_FAN_ENABLE = common dso_local global i32 0, align 4
@ADT7462_PWM_COUNT = common dso_local global i32 0, align 4
@ADT7462_PIN_CFG_REG_COUNT = common dso_local global i32 0, align 4
@ADT7462_VOLT_COUNT = common dso_local global i32 0, align 4
@ADT7462_REG_ALARM1 = common dso_local global i32 0, align 4
@ADT7462_REG_ALARM2 = common dso_local global i32 0, align 4
@ADT7462_REG_ALARM3 = common dso_local global i32 0, align 4
@ADT7462_REG_ALARM4 = common dso_local global i32 0, align 4
@LIMIT_REFRESH_INTERVAL = common dso_local global i64 0, align 8
@ADT7462_REG_PWM_MAX = common dso_local global i32 0, align 4
@ADT7462_REG_CFG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adt7462_data* (%struct.device*)* @adt7462_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adt7462_data* @adt7462_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.adt7462_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.adt7462_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.adt7462_data* %10, %struct.adt7462_data** %3, align 8
  %11 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %12 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %11, i32 0, i32 24
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %4, align 8
  %14 = load i64, i64* @jiffies, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %16 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %15, i32 0, i32 4
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %20 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SENSOR_REFRESH_INTERVAL, align 8
  %23 = add i64 %21, %22
  %24 = call i64 @time_before(i64 %18, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %28 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %190

32:                                               ; preds = %26, %1
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %59, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ADT7462_TEMP_COUNT, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ADT7462_TEMP_REG(i32 %39)
  %41 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %38, i32 %40)
  %42 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %43 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %42, i32 0, i32 23
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %41, i8** %47, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ADT7462_TEMP_REG(i32 %49)
  %51 = add nsw i32 %50, 1
  %52 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %48, i32 %51)
  %53 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %54 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %53, i32 0, i32 22
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* %52, i8** %58, align 8
  br label %59

59:                                               ; preds = %37
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %33

62:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %78, %62
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ADT7462_FAN_COUNT, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ADT7462_REG_FAN(i32 %69)
  %71 = call i32 @adt7462_read_word_data(%struct.i2c_client* %68, i32 %70)
  %72 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %73 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %72, i32 0, i32 21
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  br label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %63

81:                                               ; preds = %63
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load i32, i32* @ADT7462_REG_FAN_ENABLE, align 4
  %84 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %82, i32 %83)
  %85 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %86 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %85, i32 0, i32 20
  store i8* %84, i8** %86, align 8
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %102, %81
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @ADT7462_PWM_COUNT, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @ADT7462_REG_PWM(i32 %93)
  %95 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %92, i32 %94)
  %96 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %97 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %96, i32 0, i32 19
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  store i8* %95, i8** %101, align 8
  br label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %87

105:                                              ; preds = %87
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %121, %105
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @ADT7462_PIN_CFG_REG_COUNT, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %106
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @ADT7462_REG_PIN_CFG(i32 %112)
  %114 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %111, i32 %113)
  %115 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %116 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %115, i32 0, i32 18
  %117 = load i8**, i8*** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  store i8* %114, i8** %120, align 8
  br label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %106

124:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %125

125:                                              ; preds = %153, %124
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @ADT7462_VOLT_COUNT, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %156

129:                                              ; preds = %125
  %130 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @ADT7462_REG_VOLT(%struct.adt7462_data* %130, i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %129
  %136 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %137 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %136, i32 0, i32 17
  %138 = load i8**, i8*** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  store i8* null, i8** %141, align 8
  br label %152

142:                                              ; preds = %129
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %143, i32 %144)
  %146 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %147 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %146, i32 0, i32 17
  %148 = load i8**, i8*** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  store i8* %145, i8** %151, align 8
  br label %152

152:                                              ; preds = %142, %135
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %125

156:                                              ; preds = %125
  %157 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %158 = load i32, i32* @ADT7462_REG_ALARM1, align 4
  %159 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %157, i32 %158)
  %160 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %161 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %160, i32 0, i32 16
  %162 = load i8**, i8*** %161, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 0
  store i8* %159, i8** %163, align 8
  %164 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %165 = load i32, i32* @ADT7462_REG_ALARM2, align 4
  %166 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %164, i32 %165)
  %167 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %168 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %167, i32 0, i32 16
  %169 = load i8**, i8*** %168, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 1
  store i8* %166, i8** %170, align 8
  %171 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %172 = load i32, i32* @ADT7462_REG_ALARM3, align 4
  %173 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %171, i32 %172)
  %174 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %175 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %174, i32 0, i32 16
  %176 = load i8**, i8*** %175, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 2
  store i8* %173, i8** %177, align 8
  %178 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %179 = load i32, i32* @ADT7462_REG_ALARM4, align 4
  %180 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %178, i32 %179)
  %181 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %182 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %181, i32 0, i32 16
  %183 = load i8**, i8*** %182, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 3
  store i8* %180, i8** %184, align 8
  %185 = load i64, i64* %5, align 8
  %186 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %187 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %189 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %188, i32 0, i32 1
  store i32 1, i32* %189, align 8
  br label %190

190:                                              ; preds = %156, %31
  %191 = load i64, i64* %5, align 8
  %192 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %193 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @LIMIT_REFRESH_INTERVAL, align 8
  %196 = add i64 %194, %195
  %197 = call i64 @time_before(i64 %191, i64 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %190
  %200 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %201 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %363

205:                                              ; preds = %199, %190
  store i32 0, i32* %6, align 4
  br label %206

206:                                              ; preds = %231, %205
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @ADT7462_TEMP_COUNT, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %234

210:                                              ; preds = %206
  %211 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @ADT7462_TEMP_MIN_REG(i32 %212)
  %214 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %211, i32 %213)
  %215 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %216 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %215, i32 0, i32 15
  %217 = load i8**, i8*** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8*, i8** %217, i64 %219
  store i8* %214, i8** %220, align 8
  %221 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @ADT7462_TEMP_MAX_REG(i32 %222)
  %224 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %221, i32 %223)
  %225 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %226 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %225, i32 0, i32 14
  %227 = load i8**, i8*** %226, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  store i8* %224, i8** %230, align 8
  br label %231

231:                                              ; preds = %210
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %6, align 4
  br label %206

234:                                              ; preds = %206
  store i32 0, i32* %6, align 4
  br label %235

235:                                              ; preds = %250, %234
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* @ADT7462_FAN_COUNT, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %253

239:                                              ; preds = %235
  %240 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %241 = load i32, i32* %6, align 4
  %242 = call i32 @ADT7462_REG_FAN_MIN(i32 %241)
  %243 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %240, i32 %242)
  %244 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %245 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %244, i32 0, i32 13
  %246 = load i8**, i8*** %245, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8*, i8** %246, i64 %248
  store i8* %243, i8** %249, align 8
  br label %250

250:                                              ; preds = %239
  %251 = load i32, i32* %6, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %6, align 4
  br label %235

253:                                              ; preds = %235
  store i32 0, i32* %6, align 4
  br label %254

254:                                              ; preds = %295, %253
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* @ADT7462_VOLT_COUNT, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %298

258:                                              ; preds = %254
  %259 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %260 = load i32, i32* %6, align 4
  %261 = call i32 @ADT7462_REG_VOLT_MAX(%struct.adt7462_data* %259, i32 %260)
  store i32 %261, i32* %8, align 4
  %262 = load i32, i32* %8, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %258
  %265 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %266 = load i32, i32* %8, align 4
  %267 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %265, i32 %266)
  br label %269

268:                                              ; preds = %258
  br label %269

269:                                              ; preds = %268, %264
  %270 = phi i8* [ %267, %264 ], [ null, %268 ]
  %271 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %272 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %271, i32 0, i32 12
  %273 = load i8**, i8*** %272, align 8
  %274 = load i32, i32* %6, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %273, i64 %275
  store i8* %270, i8** %276, align 8
  %277 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %278 = load i32, i32* %6, align 4
  %279 = call i32 @ADT7462_REG_VOLT_MIN(%struct.adt7462_data* %277, i32 %278)
  store i32 %279, i32* %8, align 4
  %280 = load i32, i32* %8, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %269
  %283 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %284 = load i32, i32* %8, align 4
  %285 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %283, i32 %284)
  br label %287

286:                                              ; preds = %269
  br label %287

287:                                              ; preds = %286, %282
  %288 = phi i8* [ %285, %282 ], [ null, %286 ]
  %289 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %290 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %289, i32 0, i32 11
  %291 = load i8**, i8*** %290, align 8
  %292 = load i32, i32* %6, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8*, i8** %291, i64 %293
  store i8* %288, i8** %294, align 8
  br label %295

295:                                              ; preds = %287
  %296 = load i32, i32* %6, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %6, align 4
  br label %254

298:                                              ; preds = %254
  store i32 0, i32* %6, align 4
  br label %299

299:                                              ; preds = %344, %298
  %300 = load i32, i32* %6, align 4
  %301 = load i32, i32* @ADT7462_PWM_COUNT, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %347

303:                                              ; preds = %299
  %304 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %305 = load i32, i32* %6, align 4
  %306 = call i32 @ADT7462_REG_PWM_MIN(i32 %305)
  %307 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %304, i32 %306)
  %308 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %309 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %308, i32 0, i32 10
  %310 = load i8**, i8*** %309, align 8
  %311 = load i32, i32* %6, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8*, i8** %310, i64 %312
  store i8* %307, i8** %313, align 8
  %314 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %315 = load i32, i32* %6, align 4
  %316 = call i32 @ADT7462_REG_PWM_TMIN(i32 %315)
  %317 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %314, i32 %316)
  %318 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %319 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %318, i32 0, i32 9
  %320 = load i8**, i8*** %319, align 8
  %321 = load i32, i32* %6, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8*, i8** %320, i64 %322
  store i8* %317, i8** %323, align 8
  %324 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %325 = load i32, i32* %6, align 4
  %326 = call i32 @ADT7462_REG_PWM_TRANGE(i32 %325)
  %327 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %324, i32 %326)
  %328 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %329 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %328, i32 0, i32 8
  %330 = load i8**, i8*** %329, align 8
  %331 = load i32, i32* %6, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8*, i8** %330, i64 %332
  store i8* %327, i8** %333, align 8
  %334 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %335 = load i32, i32* %6, align 4
  %336 = call i32 @ADT7462_REG_PWM_CFG(i32 %335)
  %337 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %334, i32 %336)
  %338 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %339 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %338, i32 0, i32 7
  %340 = load i8**, i8*** %339, align 8
  %341 = load i32, i32* %6, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8*, i8** %340, i64 %342
  store i8* %337, i8** %343, align 8
  br label %344

344:                                              ; preds = %303
  %345 = load i32, i32* %6, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %6, align 4
  br label %299

347:                                              ; preds = %299
  %348 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %349 = load i32, i32* @ADT7462_REG_PWM_MAX, align 4
  %350 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %348, i32 %349)
  %351 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %352 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %351, i32 0, i32 6
  store i8* %350, i8** %352, align 8
  %353 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %354 = load i32, i32* @ADT7462_REG_CFG2, align 4
  %355 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %353, i32 %354)
  %356 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %357 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %356, i32 0, i32 5
  store i8* %355, i8** %357, align 8
  %358 = load i64, i64* %5, align 8
  %359 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %360 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %359, i32 0, i32 2
  store i64 %358, i64* %360, align 8
  %361 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %362 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %361, i32 0, i32 3
  store i32 1, i32* %362, align 8
  br label %363

363:                                              ; preds = %347, %204
  %364 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  %365 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %364, i32 0, i32 4
  %366 = call i32 @mutex_unlock(i32* %365)
  %367 = load %struct.adt7462_data*, %struct.adt7462_data** %3, align 8
  ret %struct.adt7462_data* %367
}

declare dso_local %struct.adt7462_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADT7462_TEMP_REG(i32) #1

declare dso_local i32 @adt7462_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADT7462_REG_FAN(i32) #1

declare dso_local i32 @ADT7462_REG_PWM(i32) #1

declare dso_local i32 @ADT7462_REG_PIN_CFG(i32) #1

declare dso_local i32 @ADT7462_REG_VOLT(%struct.adt7462_data*, i32) #1

declare dso_local i32 @ADT7462_TEMP_MIN_REG(i32) #1

declare dso_local i32 @ADT7462_TEMP_MAX_REG(i32) #1

declare dso_local i32 @ADT7462_REG_FAN_MIN(i32) #1

declare dso_local i32 @ADT7462_REG_VOLT_MAX(%struct.adt7462_data*, i32) #1

declare dso_local i32 @ADT7462_REG_VOLT_MIN(%struct.adt7462_data*, i32) #1

declare dso_local i32 @ADT7462_REG_PWM_MIN(i32) #1

declare dso_local i32 @ADT7462_REG_PWM_TMIN(i32) #1

declare dso_local i32 @ADT7462_REG_PWM_TRANGE(i32) #1

declare dso_local i32 @ADT7462_REG_PWM_CFG(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
