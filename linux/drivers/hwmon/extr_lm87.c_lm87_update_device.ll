; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm87.c_lm87_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm87.c_lm87_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm87_data = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i64, i8*, i8* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Updating data.\0A\00", align 1
@CHAN_TEMP3 = common dso_local global i32 0, align 4
@LM87_REG_TEMP = common dso_local global i32* null, align 8
@LM87_REG_TEMP_HIGH = common dso_local global i32* null, align 8
@LM87_REG_TEMP_LOW = common dso_local global i32* null, align 8
@LM87_REG_TEMP_HW_INT_LOCK = common dso_local global i32 0, align 4
@LM87_REG_TEMP_HW_INT = common dso_local global i32 0, align 4
@LM87_REG_TEMP_HW_EXT_LOCK = common dso_local global i32 0, align 4
@LM87_REG_TEMP_HW_EXT = common dso_local global i32 0, align 4
@LM87_REG_VID_FAN_DIV = common dso_local global i32 0, align 4
@LM87_REG_VID4 = common dso_local global i32 0, align 4
@LM87_REG_ALARMS1 = common dso_local global i32 0, align 4
@LM87_REG_ALARMS2 = common dso_local global i32 0, align 4
@LM87_REG_AOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lm87_data* (%struct.device*)* @lm87_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lm87_data* @lm87_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.lm87_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.i2c_client* @dev_get_drvdata(%struct.device* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.lm87_data* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.lm87_data* %10, %struct.lm87_data** %4, align 8
  %11 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %12 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %11, i32 0, i32 14
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %16 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %15, i32 0, i32 15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HZ, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @time_after(i64 %14, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %24 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %282, label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %32 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CHAN_TEMP3, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  store i32 %38, i32* %5, align 4
  %39 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %40 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CHAN_TEMP3, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 5, i32 6
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %82, %27
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %85

51:                                               ; preds = %47
  %52 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @LM87_REG_IN(i32 %53)
  %55 = call i32 @lm87_read_value(%struct.i2c_client* %52, i32 %54)
  %56 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %57 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @LM87_REG_IN_MIN(i32 %63)
  %65 = call i32 @lm87_read_value(%struct.i2c_client* %62, i32 %64)
  %66 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %67 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  %72 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @LM87_REG_IN_MAX(i32 %73)
  %75 = call i32 @lm87_read_value(%struct.i2c_client* %72, i32 %74)
  %76 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %77 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  br label %82

82:                                               ; preds = %51
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %47

85:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %153, %85
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 2
  br i1 %88, label %89, label %156

89:                                               ; preds = %86
  %90 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %91 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @CHAN_NO_FAN(i32 %93)
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %131

97:                                               ; preds = %89
  %98 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @LM87_REG_AIN(i32 %99)
  %101 = call i32 @lm87_read_value(%struct.i2c_client* %98, i32 %100)
  %102 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %103 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 6, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %101, i32* %108, align 4
  %109 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @LM87_REG_AIN_MAX(i32 %110)
  %112 = call i32 @lm87_read_value(%struct.i2c_client* %109, i32 %111)
  %113 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %114 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 6, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  store i32 %112, i32* %119, align 4
  %120 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @LM87_REG_AIN_MIN(i32 %121)
  %123 = call i32 @lm87_read_value(%struct.i2c_client* %120, i32 %122)
  %124 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %125 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 6, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32 %123, i32* %130, align 4
  br label %152

131:                                              ; preds = %89
  %132 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @LM87_REG_FAN(i32 %133)
  %135 = call i32 @lm87_read_value(%struct.i2c_client* %132, i32 %134)
  %136 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %137 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %136, i32 0, i32 5
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %135, i32* %141, align 4
  %142 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @LM87_REG_FAN_MIN(i32 %143)
  %145 = call i32 @lm87_read_value(%struct.i2c_client* %142, i32 %144)
  %146 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %147 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %146, i32 0, i32 6
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %145, i32* %151, align 4
  br label %152

152:                                              ; preds = %131, %97
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %5, align 4
  br label %86

156:                                              ; preds = %86
  %157 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %158 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @CHAN_TEMP3, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 3, i32 2
  store i32 %164, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %209, %156
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %6, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %212

169:                                              ; preds = %165
  %170 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %171 = load i32*, i32** @LM87_REG_TEMP, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @lm87_read_value(%struct.i2c_client* %170, i32 %175)
  %177 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %178 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %177, i32 0, i32 7
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %176, i32* %182, align 4
  %183 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %184 = load i32*, i32** @LM87_REG_TEMP_HIGH, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @lm87_read_value(%struct.i2c_client* %183, i32 %188)
  %190 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %191 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %190, i32 0, i32 8
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %189, i32* %195, align 4
  %196 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %197 = load i32*, i32** @LM87_REG_TEMP_LOW, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @lm87_read_value(%struct.i2c_client* %196, i32 %201)
  %203 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %204 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %203, i32 0, i32 9
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %202, i32* %208, align 4
  br label %209

209:                                              ; preds = %169
  %210 = load i32, i32* %5, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %5, align 4
  br label %165

212:                                              ; preds = %165
  %213 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %214 = load i32, i32* @LM87_REG_TEMP_HW_INT_LOCK, align 4
  %215 = call i32 @lm87_read_value(%struct.i2c_client* %213, i32 %214)
  store i32 %215, i32* %5, align 4
  %216 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %217 = load i32, i32* @LM87_REG_TEMP_HW_INT, align 4
  %218 = call i32 @lm87_read_value(%struct.i2c_client* %216, i32 %217)
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* %5, align 4
  %220 = load i32, i32* %6, align 4
  %221 = call i8* @min(i32 %219, i32 %220)
  %222 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %223 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %222, i32 0, i32 17
  store i8* %221, i8** %223, align 8
  %224 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %225 = load i32, i32* @LM87_REG_TEMP_HW_EXT_LOCK, align 4
  %226 = call i32 @lm87_read_value(%struct.i2c_client* %224, i32 %225)
  store i32 %226, i32* %5, align 4
  %227 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %228 = load i32, i32* @LM87_REG_TEMP_HW_EXT, align 4
  %229 = call i32 @lm87_read_value(%struct.i2c_client* %227, i32 %228)
  store i32 %229, i32* %6, align 4
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* %6, align 4
  %232 = call i8* @min(i32 %230, i32 %231)
  %233 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %234 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %233, i32 0, i32 16
  store i8* %232, i8** %234, align 8
  %235 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %236 = load i32, i32* @LM87_REG_VID_FAN_DIV, align 4
  %237 = call i32 @lm87_read_value(%struct.i2c_client* %235, i32 %236)
  store i32 %237, i32* %5, align 4
  %238 = load i32, i32* %5, align 4
  %239 = ashr i32 %238, 4
  %240 = and i32 %239, 3
  %241 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %242 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %241, i32 0, i32 10
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  store i32 %240, i32* %244, align 4
  %245 = load i32, i32* %5, align 4
  %246 = ashr i32 %245, 6
  %247 = and i32 %246, 3
  %248 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %249 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %248, i32 0, i32 10
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 1
  store i32 %247, i32* %251, align 4
  %252 = load i32, i32* %5, align 4
  %253 = and i32 %252, 15
  %254 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %255 = load i32, i32* @LM87_REG_VID4, align 4
  %256 = call i32 @lm87_read_value(%struct.i2c_client* %254, i32 %255)
  %257 = and i32 %256, 1
  %258 = shl i32 %257, 4
  %259 = or i32 %253, %258
  %260 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %261 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %260, i32 0, i32 11
  store i32 %259, i32* %261, align 8
  %262 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %263 = load i32, i32* @LM87_REG_ALARMS1, align 4
  %264 = call i32 @lm87_read_value(%struct.i2c_client* %262, i32 %263)
  %265 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %266 = load i32, i32* @LM87_REG_ALARMS2, align 4
  %267 = call i32 @lm87_read_value(%struct.i2c_client* %265, i32 %266)
  %268 = shl i32 %267, 8
  %269 = or i32 %264, %268
  %270 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %271 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %270, i32 0, i32 12
  store i32 %269, i32* %271, align 4
  %272 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %273 = load i32, i32* @LM87_REG_AOUT, align 4
  %274 = call i32 @lm87_read_value(%struct.i2c_client* %272, i32 %273)
  %275 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %276 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %275, i32 0, i32 13
  store i32 %274, i32* %276, align 8
  %277 = load i64, i64* @jiffies, align 8
  %278 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %279 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %278, i32 0, i32 15
  store i64 %277, i64* %279, align 8
  %280 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %281 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %280, i32 0, i32 0
  store i32 1, i32* %281, align 8
  br label %282

282:                                              ; preds = %212, %22
  %283 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  %284 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %283, i32 0, i32 14
  %285 = call i32 @mutex_unlock(i32* %284)
  %286 = load %struct.lm87_data*, %struct.lm87_data** %4, align 8
  ret %struct.lm87_data* %286
}

declare dso_local %struct.i2c_client* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.lm87_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @lm87_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM87_REG_IN(i32) #1

declare dso_local i32 @LM87_REG_IN_MIN(i32) #1

declare dso_local i32 @LM87_REG_IN_MAX(i32) #1

declare dso_local i32 @CHAN_NO_FAN(i32) #1

declare dso_local i32 @LM87_REG_AIN(i32) #1

declare dso_local i32 @LM87_REG_AIN_MAX(i32) #1

declare dso_local i32 @LM87_REG_AIN_MIN(i32) #1

declare dso_local i32 @LM87_REG_FAN(i32) #1

declare dso_local i32 @LM87_REG_FAN_MIN(i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
