; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_adt7470_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_adt7470_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7470_data = type { i64, i32, i64, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i8**, i8**, i8*, i8**, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@SENSOR_REFRESH_INTERVAL = common dso_local global i64 0, align 8
@LIMIT_REFRESH_INTERVAL = common dso_local global i64 0, align 8
@ADT7470_TEMP_COUNT = common dso_local global i32 0, align 4
@ADT7470_FAN_COUNT = common dso_local global i32 0, align 4
@ADT7470_PWM_COUNT = common dso_local global i32 0, align 4
@ADT7470_PWM2_AUTO_MASK = common dso_local global i32 0, align 4
@ADT7470_PWM1_AUTO_MASK = common dso_local global i32 0, align 4
@ADT7470_REG_CFG = common dso_local global i32 0, align 4
@ADT7470_FSPD_MASK = common dso_local global i32 0, align 4
@ADT7470_REG_ALARM1 = common dso_local global i32 0, align 4
@ADT7470_OOL_ALARM = common dso_local global i32 0, align 4
@ADT7470_REG_ALARM2 = common dso_local global i32 0, align 4
@ADT7470_REG_ALARM1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adt7470_data* (%struct.device*)* @adt7470_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adt7470_data* @adt7470_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.adt7470_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.adt7470_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.adt7470_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.adt7470_data* %14, %struct.adt7470_data** %4, align 8
  %15 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %16 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %15, i32 0, i32 21
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %5, align 8
  %18 = load i64, i64* @jiffies, align 8
  store i64 %18, i64* %6, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %21 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SENSOR_REFRESH_INTERVAL, align 8
  %24 = add i64 %22, %23
  %25 = call i64 @time_before(i64 %19, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %29 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %27, %1
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %36 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LIMIT_REFRESH_INTERVAL, align 8
  %39 = add i64 %37, %38
  %40 = call i64 @time_before(i64 %34, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %44 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %42, %33
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  store %struct.adt7470_data* %55, %struct.adt7470_data** %2, align 8
  br label %345

56:                                               ; preds = %51, %48
  %57 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %58 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %57, i32 0, i32 15
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %233

63:                                               ; preds = %56
  %64 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %65 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %64, i32 0, i32 20
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %70 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %71 = call i32 @adt7470_read_temperatures(%struct.i2c_client* %69, %struct.adt7470_data* %70)
  br label %92

72:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %88, %72
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @ADT7470_TEMP_COUNT, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %73
  %78 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @ADT7470_TEMP_REG(i32 %79)
  %81 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %78, i32 %80)
  %82 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %83 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  br label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %73

91:                                               ; preds = %73
  br label %92

92:                                               ; preds = %91, %68
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %108, %92
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @ADT7470_FAN_COUNT, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @ADT7470_REG_FAN(i32 %99)
  %101 = call i8* @adt7470_read_word_data(%struct.i2c_client* %98, i32 %100)
  %102 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %103 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %102, i32 0, i32 19
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  store i8* %101, i8** %107, align 8
  br label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %93

111:                                              ; preds = %93
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %185, %111
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @ADT7470_PWM_COUNT, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %188

116:                                              ; preds = %112
  %117 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @ADT7470_REG_PWM(i32 %118)
  %120 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %117, i32 %119)
  %121 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %122 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %120, i32* %126, align 4
  %127 = load i32, i32* %8, align 4
  %128 = srem i32 %127, 2
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %116
  %131 = load i32, i32* @ADT7470_PWM2_AUTO_MASK, align 4
  store i32 %131, i32* %12, align 4
  br label %134

132:                                              ; preds = %116
  %133 = load i32, i32* @ADT7470_PWM1_AUTO_MASK, align 4
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @ADT7470_REG_PWM_CFG(i32 %135)
  store i32 %136, i32* %11, align 4
  %137 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %137, i32 %138)
  %140 = load i32, i32* %12, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %134
  %144 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %145 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %144, i32 0, i32 6
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 1, i32* %149, align 4
  br label %157

150:                                              ; preds = %134
  %151 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %152 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %151, i32 0, i32 6
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 0, i32* %156, align 4
  br label %157

157:                                              ; preds = %150, %143
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @ADT7470_REG_PWM_AUTO_TEMP(i32 %158)
  store i32 %159, i32* %11, align 4
  %160 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %160, i32 %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %8, align 4
  %164 = srem i32 %163, 2
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %175, label %166

166:                                              ; preds = %157
  %167 = load i32, i32* %7, align 4
  %168 = ashr i32 %167, 4
  %169 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %170 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %169, i32 0, i32 7
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %168, i32* %174, align 4
  br label %184

175:                                              ; preds = %157
  %176 = load i32, i32* %7, align 4
  %177 = and i32 %176, 15
  %178 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %179 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %178, i32 0, i32 7
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %177, i32* %183, align 4
  br label %184

184:                                              ; preds = %175, %166
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %8, align 4
  br label %112

188:                                              ; preds = %112
  %189 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %190 = load i32, i32* @ADT7470_REG_CFG, align 4
  %191 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %189, i32 %190)
  %192 = load i32, i32* @ADT7470_FSPD_MASK, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %188
  %196 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %197 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %196, i32 0, i32 8
  store i32 1, i32* %197, align 8
  br label %201

198:                                              ; preds = %188
  %199 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %200 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %199, i32 0, i32 8
  store i32 0, i32* %200, align 8
  br label %201

201:                                              ; preds = %198, %195
  %202 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %203 = load i32, i32* @ADT7470_REG_ALARM1, align 4
  %204 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %202, i32 %203)
  %205 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %206 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %205, i32 0, i32 9
  store i32 %204, i32* %206, align 4
  %207 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %208 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %207, i32 0, i32 9
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @ADT7470_OOL_ALARM, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %201
  %214 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %215 = load i32, i32* @ADT7470_REG_ALARM2, align 4
  %216 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %214, i32 %215)
  %217 = call i32 @ALARM2(i32 %216)
  %218 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %219 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %218, i32 0, i32 9
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %213, %201
  %223 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %224 = load i32, i32* @ADT7470_REG_ALARM1_MASK, align 4
  %225 = call i8* @adt7470_read_word_data(%struct.i2c_client* %223, i32 %224)
  %226 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %227 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %226, i32 0, i32 18
  store i8* %225, i8** %227, align 8
  %228 = load i64, i64* %6, align 8
  %229 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %230 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  %231 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %232 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %231, i32 0, i32 1
  store i32 1, i32* %232, align 8
  br label %233

233:                                              ; preds = %222, %62
  %234 = load i32, i32* %10, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %233
  br label %340

237:                                              ; preds = %233
  store i32 0, i32* %8, align 4
  br label %238

238:                                              ; preds = %263, %237
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* @ADT7470_TEMP_COUNT, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %266

242:                                              ; preds = %238
  %243 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @ADT7470_TEMP_MIN_REG(i32 %244)
  %246 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %243, i32 %245)
  %247 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %248 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %247, i32 0, i32 10
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 %246, i32* %252, align 4
  %253 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %254 = load i32, i32* %8, align 4
  %255 = call i32 @ADT7470_TEMP_MAX_REG(i32 %254)
  %256 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %253, i32 %255)
  %257 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %258 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %257, i32 0, i32 11
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  store i32 %256, i32* %262, align 4
  br label %263

263:                                              ; preds = %242
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  br label %238

266:                                              ; preds = %238
  store i32 0, i32* %8, align 4
  br label %267

267:                                              ; preds = %292, %266
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* @ADT7470_FAN_COUNT, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %295

271:                                              ; preds = %267
  %272 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %273 = load i32, i32* %8, align 4
  %274 = call i32 @ADT7470_REG_FAN_MIN(i32 %273)
  %275 = call i8* @adt7470_read_word_data(%struct.i2c_client* %272, i32 %274)
  %276 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %277 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %276, i32 0, i32 17
  %278 = load i8**, i8*** %277, align 8
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8*, i8** %278, i64 %280
  store i8* %275, i8** %281, align 8
  %282 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %283 = load i32, i32* %8, align 4
  %284 = call i32 @ADT7470_REG_FAN_MAX(i32 %283)
  %285 = call i8* @adt7470_read_word_data(%struct.i2c_client* %282, i32 %284)
  %286 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %287 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %286, i32 0, i32 16
  %288 = load i8**, i8*** %287, align 8
  %289 = load i32, i32* %8, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8*, i8** %288, i64 %290
  store i8* %285, i8** %291, align 8
  br label %292

292:                                              ; preds = %271
  %293 = load i32, i32* %8, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %8, align 4
  br label %267

295:                                              ; preds = %267
  store i32 0, i32* %8, align 4
  br label %296

296:                                              ; preds = %331, %295
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* @ADT7470_PWM_COUNT, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %334

300:                                              ; preds = %296
  %301 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %302 = load i32, i32* %8, align 4
  %303 = call i32 @ADT7470_REG_PWM_MAX(i32 %302)
  %304 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %301, i32 %303)
  %305 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %306 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %305, i32 0, i32 12
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %8, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  store i32 %304, i32* %310, align 4
  %311 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %312 = load i32, i32* %8, align 4
  %313 = call i32 @ADT7470_REG_PWM_MIN(i32 %312)
  %314 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %311, i32 %313)
  %315 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %316 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %315, i32 0, i32 13
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %8, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  store i32 %314, i32* %320, align 4
  %321 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %322 = load i32, i32* %8, align 4
  %323 = call i32 @ADT7470_REG_PWM_TMIN(i32 %322)
  %324 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %321, i32 %323)
  %325 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %326 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %325, i32 0, i32 14
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %8, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  store i32 %324, i32* %330, align 4
  br label %331

331:                                              ; preds = %300
  %332 = load i32, i32* %8, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %8, align 4
  br label %296

334:                                              ; preds = %296
  %335 = load i64, i64* %6, align 8
  %336 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %337 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %336, i32 0, i32 2
  store i64 %335, i64* %337, align 8
  %338 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %339 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %338, i32 0, i32 3
  store i32 1, i32* %339, align 8
  br label %340

340:                                              ; preds = %334, %236
  %341 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %342 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %341, i32 0, i32 15
  %343 = call i32 @mutex_unlock(i32* %342)
  %344 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  store %struct.adt7470_data* %344, %struct.adt7470_data** %2, align 8
  br label %345

345:                                              ; preds = %340, %54
  %346 = load %struct.adt7470_data*, %struct.adt7470_data** %2, align 8
  ret %struct.adt7470_data* %346
}

declare dso_local %struct.adt7470_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adt7470_read_temperatures(%struct.i2c_client*, %struct.adt7470_data*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADT7470_TEMP_REG(i32) #1

declare dso_local i8* @adt7470_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADT7470_REG_FAN(i32) #1

declare dso_local i32 @ADT7470_REG_PWM(i32) #1

declare dso_local i32 @ADT7470_REG_PWM_CFG(i32) #1

declare dso_local i32 @ADT7470_REG_PWM_AUTO_TEMP(i32) #1

declare dso_local i32 @ALARM2(i32) #1

declare dso_local i32 @ADT7470_TEMP_MIN_REG(i32) #1

declare dso_local i32 @ADT7470_TEMP_MAX_REG(i32) #1

declare dso_local i32 @ADT7470_REG_FAN_MIN(i32) #1

declare dso_local i32 @ADT7470_REG_FAN_MAX(i32) #1

declare dso_local i32 @ADT7470_REG_PWM_MAX(i32) #1

declare dso_local i32 @ADT7470_REG_PWM_MIN(i32) #1

declare dso_local i32 @ADT7470_REG_PWM_TMIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
