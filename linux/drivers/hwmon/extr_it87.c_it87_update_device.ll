; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_it87_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_it87_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.it87_data = type { i32, i32, i32**, i32, i32**, i32, i32**, i32*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@update_vbat = common dso_local global i64 0, align 8
@IT87_REG_CONFIG = common dso_local global i32 0, align 4
@NUM_VIN = common dso_local global i32 0, align 4
@IT87_REG_VIN = common dso_local global i32* null, align 8
@NUM_VIN_LIMIT = common dso_local global i32 0, align 4
@NUM_FAN = common dso_local global i32 0, align 4
@IT87_REG_FAN_MIN = common dso_local global i32* null, align 8
@IT87_REG_FAN = common dso_local global i32* null, align 8
@IT87_REG_FANX = common dso_local global i32* null, align 8
@IT87_REG_FANX_MIN = common dso_local global i32* null, align 8
@NUM_TEMP = common dso_local global i32 0, align 4
@NUM_TEMP_OFFSET = common dso_local global i32 0, align 4
@IT87_REG_TEMP_OFFSET = common dso_local global i32* null, align 8
@NUM_TEMP_LIMIT = common dso_local global i32 0, align 4
@IT87_REG_FAN_DIV = common dso_local global i32 0, align 4
@IT87_REG_ALARM1 = common dso_local global i32 0, align 4
@IT87_REG_ALARM2 = common dso_local global i32 0, align 4
@IT87_REG_ALARM3 = common dso_local global i32 0, align 4
@IT87_REG_BEEP_ENABLE = common dso_local global i32 0, align 4
@IT87_REG_FAN_MAIN_CTRL = common dso_local global i32 0, align 4
@IT87_REG_FAN_CTL = common dso_local global i32 0, align 4
@NUM_PWM = common dso_local global i32 0, align 4
@IT87_REG_TEMP_ENABLE = common dso_local global i32 0, align 4
@IT87_REG_TEMP_EXTRA = common dso_local global i32 0, align 4
@it8712 = common dso_local global i64 0, align 8
@it8716 = common dso_local global i64 0, align 8
@IT87_REG_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.it87_data* (%struct.device*)* @it87_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.it87_data* @it87_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.it87_data*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.it87_data* @dev_get_drvdata(%struct.device* %5)
  store %struct.it87_data* %6, %struct.it87_data** %3, align 8
  %7 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %8 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %7, i32 0, i32 17
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i64, i64* @jiffies, align 8
  %11 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %12 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %11, i32 0, i32 18
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @HZ, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = load i32, i32* @HZ, align 4
  %18 = sdiv i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i64 @time_after(i64 %10, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %25 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %398, label %28

28:                                               ; preds = %23, %1
  %29 = load i64, i64* @update_vbat, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %33 = load i32, i32* @IT87_REG_CONFIG, align 4
  %34 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %35 = load i32, i32* @IT87_REG_CONFIG, align 4
  %36 = call i32 @it87_read_value(%struct.it87_data* %34, i32 %35)
  %37 = or i32 %36, 64
  %38 = call i32 @it87_write_value(%struct.it87_data* %32, i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %31, %28
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %98, %39
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @NUM_VIN, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %101

44:                                               ; preds = %40
  %45 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %46 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %98

53:                                               ; preds = %44
  %54 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %55 = load i32*, i32** @IT87_REG_VIN, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @it87_read_value(%struct.it87_data* %54, i32 %59)
  %61 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %62 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %61, i32 0, i32 2
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %60, i32* %68, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @NUM_VIN_LIMIT, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %53
  br label %98

73:                                               ; preds = %53
  %74 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @IT87_REG_VIN_MIN(i32 %75)
  %77 = call i32 @it87_read_value(%struct.it87_data* %74, i32 %76)
  %78 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %79 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %78, i32 0, i32 2
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 %77, i32* %85, align 4
  %86 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @IT87_REG_VIN_MAX(i32 %87)
  %89 = call i32 @it87_read_value(%struct.it87_data* %86, i32 %88)
  %90 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %91 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %90, i32 0, i32 2
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 %89, i32* %97, align 4
  br label %98

98:                                               ; preds = %73, %72, %52
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %40

101:                                              ; preds = %40
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %187, %101
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @NUM_FAN, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %190

106:                                              ; preds = %102
  %107 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %108 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @BIT(i32 %110)
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %106
  br label %187

115:                                              ; preds = %106
  %116 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %117 = load i32*, i32** @IT87_REG_FAN_MIN, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @it87_read_value(%struct.it87_data* %116, i32 %121)
  %123 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %124 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %123, i32 0, i32 4
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 %122, i32* %130, align 4
  %131 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %132 = load i32*, i32** @IT87_REG_FAN, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @it87_read_value(%struct.it87_data* %131, i32 %136)
  %138 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %139 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %138, i32 0, i32 4
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  store i32 %137, i32* %145, align 4
  %146 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %147 = call i64 @has_16bit_fans(%struct.it87_data* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %186

149:                                              ; preds = %115
  %150 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %151 = load i32*, i32** @IT87_REG_FANX, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @it87_read_value(%struct.it87_data* %150, i32 %155)
  %157 = shl i32 %156, 8
  %158 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %159 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %158, i32 0, i32 4
  %160 = load i32**, i32*** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32*, i32** %160, i64 %162
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %157
  store i32 %167, i32* %165, align 4
  %168 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %169 = load i32*, i32** @IT87_REG_FANX_MIN, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @it87_read_value(%struct.it87_data* %168, i32 %173)
  %175 = shl i32 %174, 8
  %176 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %177 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %176, i32 0, i32 4
  %178 = load i32**, i32*** %177, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %178, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %175
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %149, %115
  br label %187

187:                                              ; preds = %186, %114
  %188 = load i32, i32* %4, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %4, align 4
  br label %102

190:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %270, %190
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @NUM_TEMP, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %273

195:                                              ; preds = %191
  %196 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %197 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = call i32 @BIT(i32 %199)
  %201 = and i32 %198, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %195
  br label %270

204:                                              ; preds = %195
  %205 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %206 = load i32, i32* %4, align 4
  %207 = call i32 @IT87_REG_TEMP(i32 %206)
  %208 = call i32 @it87_read_value(%struct.it87_data* %205, i32 %207)
  %209 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %210 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %209, i32 0, i32 6
  %211 = load i32**, i32*** %210, align 8
  %212 = load i32, i32* %4, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32*, i32** %211, i64 %213
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  store i32 %208, i32* %216, align 4
  %217 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %218 = call i64 @has_temp_offset(%struct.it87_data* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %240

220:                                              ; preds = %204
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* @NUM_TEMP_OFFSET, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %240

224:                                              ; preds = %220
  %225 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %226 = load i32*, i32** @IT87_REG_TEMP_OFFSET, align 8
  %227 = load i32, i32* %4, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @it87_read_value(%struct.it87_data* %225, i32 %230)
  %232 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %233 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %232, i32 0, i32 6
  %234 = load i32**, i32*** %233, align 8
  %235 = load i32, i32* %4, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32*, i32** %234, i64 %236
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 3
  store i32 %231, i32* %239, align 4
  br label %240

240:                                              ; preds = %224, %220, %204
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* @NUM_TEMP_LIMIT, align 4
  %243 = icmp sge i32 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  br label %270

245:                                              ; preds = %240
  %246 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %247 = load i32, i32* %4, align 4
  %248 = call i32 @IT87_REG_TEMP_LOW(i32 %247)
  %249 = call i32 @it87_read_value(%struct.it87_data* %246, i32 %248)
  %250 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %251 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %250, i32 0, i32 6
  %252 = load i32**, i32*** %251, align 8
  %253 = load i32, i32* %4, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  store i32 %249, i32* %257, align 4
  %258 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %259 = load i32, i32* %4, align 4
  %260 = call i32 @IT87_REG_TEMP_HIGH(i32 %259)
  %261 = call i32 @it87_read_value(%struct.it87_data* %258, i32 %260)
  %262 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %263 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %262, i32 0, i32 6
  %264 = load i32**, i32*** %263, align 8
  %265 = load i32, i32* %4, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32*, i32** %264, i64 %266
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 2
  store i32 %261, i32* %269, align 4
  br label %270

270:                                              ; preds = %245, %244, %203
  %271 = load i32, i32* %4, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %4, align 4
  br label %191

273:                                              ; preds = %191
  %274 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %275 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = and i32 %276, 7
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %309

279:                                              ; preds = %273
  %280 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %281 = call i64 @has_16bit_fans(%struct.it87_data* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %309, label %283

283:                                              ; preds = %279
  %284 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %285 = load i32, i32* @IT87_REG_FAN_DIV, align 4
  %286 = call i32 @it87_read_value(%struct.it87_data* %284, i32 %285)
  store i32 %286, i32* %4, align 4
  %287 = load i32, i32* %4, align 4
  %288 = and i32 %287, 7
  %289 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %290 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %289, i32 0, i32 7
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  store i32 %288, i32* %292, align 4
  %293 = load i32, i32* %4, align 4
  %294 = ashr i32 %293, 3
  %295 = and i32 %294, 7
  %296 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %297 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %296, i32 0, i32 7
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 1
  store i32 %295, i32* %299, align 4
  %300 = load i32, i32* %4, align 4
  %301 = and i32 %300, 64
  %302 = icmp ne i32 %301, 0
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, i32 3, i32 1
  %305 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %306 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %305, i32 0, i32 7
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 2
  store i32 %304, i32* %308, align 4
  br label %309

309:                                              ; preds = %283, %279, %273
  %310 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %311 = load i32, i32* @IT87_REG_ALARM1, align 4
  %312 = call i32 @it87_read_value(%struct.it87_data* %310, i32 %311)
  %313 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %314 = load i32, i32* @IT87_REG_ALARM2, align 4
  %315 = call i32 @it87_read_value(%struct.it87_data* %313, i32 %314)
  %316 = shl i32 %315, 8
  %317 = or i32 %312, %316
  %318 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %319 = load i32, i32* @IT87_REG_ALARM3, align 4
  %320 = call i32 @it87_read_value(%struct.it87_data* %318, i32 %319)
  %321 = shl i32 %320, 16
  %322 = or i32 %317, %321
  %323 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %324 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %323, i32 0, i32 8
  store i32 %322, i32* %324, align 8
  %325 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %326 = load i32, i32* @IT87_REG_BEEP_ENABLE, align 4
  %327 = call i32 @it87_read_value(%struct.it87_data* %325, i32 %326)
  %328 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %329 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %328, i32 0, i32 9
  store i32 %327, i32* %329, align 4
  %330 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %331 = load i32, i32* @IT87_REG_FAN_MAIN_CTRL, align 4
  %332 = call i32 @it87_read_value(%struct.it87_data* %330, i32 %331)
  %333 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %334 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %333, i32 0, i32 10
  store i32 %332, i32* %334, align 8
  %335 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %336 = load i32, i32* @IT87_REG_FAN_CTL, align 4
  %337 = call i32 @it87_read_value(%struct.it87_data* %335, i32 %336)
  %338 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %339 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %338, i32 0, i32 11
  store i32 %337, i32* %339, align 4
  store i32 0, i32* %4, align 4
  br label %340

340:                                              ; preds = %357, %309
  %341 = load i32, i32* %4, align 4
  %342 = load i32, i32* @NUM_PWM, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %360

344:                                              ; preds = %340
  %345 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %346 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %345, i32 0, i32 12
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* %4, align 4
  %349 = call i32 @BIT(i32 %348)
  %350 = and i32 %347, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %353, label %352

352:                                              ; preds = %344
  br label %357

353:                                              ; preds = %344
  %354 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %355 = load i32, i32* %4, align 4
  %356 = call i32 @it87_update_pwm_ctrl(%struct.it87_data* %354, i32 %355)
  br label %357

357:                                              ; preds = %353, %352
  %358 = load i32, i32* %4, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %4, align 4
  br label %340

360:                                              ; preds = %340
  %361 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %362 = load i32, i32* @IT87_REG_TEMP_ENABLE, align 4
  %363 = call i32 @it87_read_value(%struct.it87_data* %361, i32 %362)
  %364 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %365 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %364, i32 0, i32 13
  store i32 %363, i32* %365, align 4
  %366 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %367 = load i32, i32* @IT87_REG_TEMP_EXTRA, align 4
  %368 = call i32 @it87_read_value(%struct.it87_data* %366, i32 %367)
  %369 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %370 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %369, i32 0, i32 14
  store i32 %368, i32* %370, align 8
  %371 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %372 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %371, i32 0, i32 15
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @it8712, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %382, label %376

376:                                              ; preds = %360
  %377 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %378 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %377, i32 0, i32 15
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @it8716, align 8
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %382, label %392

382:                                              ; preds = %376, %360
  %383 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %384 = load i32, i32* @IT87_REG_VID, align 4
  %385 = call i32 @it87_read_value(%struct.it87_data* %383, i32 %384)
  %386 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %387 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %386, i32 0, i32 16
  store i32 %385, i32* %387, align 8
  %388 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %389 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %388, i32 0, i32 16
  %390 = load i32, i32* %389, align 8
  %391 = and i32 %390, 63
  store i32 %391, i32* %389, align 8
  br label %392

392:                                              ; preds = %382, %376
  %393 = load i64, i64* @jiffies, align 8
  %394 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %395 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %394, i32 0, i32 18
  store i64 %393, i64* %395, align 8
  %396 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %397 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %396, i32 0, i32 0
  store i32 1, i32* %397, align 8
  br label %398

398:                                              ; preds = %392, %23
  %399 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %400 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %399, i32 0, i32 17
  %401 = call i32 @mutex_unlock(i32* %400)
  %402 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  ret %struct.it87_data* %402
}

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @it87_write_value(%struct.it87_data*, i32, i32) #1

declare dso_local i32 @it87_read_value(%struct.it87_data*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @IT87_REG_VIN_MIN(i32) #1

declare dso_local i32 @IT87_REG_VIN_MAX(i32) #1

declare dso_local i64 @has_16bit_fans(%struct.it87_data*) #1

declare dso_local i32 @IT87_REG_TEMP(i32) #1

declare dso_local i64 @has_temp_offset(%struct.it87_data*) #1

declare dso_local i32 @IT87_REG_TEMP_LOW(i32) #1

declare dso_local i32 @IT87_REG_TEMP_HIGH(i32) #1

declare dso_local i32 @it87_update_pwm_ctrl(%struct.it87_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
