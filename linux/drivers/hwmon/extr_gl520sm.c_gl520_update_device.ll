; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_gl520_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_gl520_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl520_data = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i64, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Starting gl520sm update\0A\00", align 1
@GL520_REG_ALARMS = common dso_local global i32 0, align 4
@GL520_REG_BEEP_MASK = common dso_local global i32 0, align 4
@GL520_REG_VID_INPUT = common dso_local global i32 0, align 4
@GL520_REG_IN_INPUT = common dso_local global i32* null, align 8
@GL520_REG_IN_LIMIT = common dso_local global i32* null, align 8
@GL520_REG_FAN_INPUT = common dso_local global i32 0, align 4
@GL520_REG_FAN_MIN = common dso_local global i32 0, align 4
@GL520_REG_TEMP_INPUT = common dso_local global i32* null, align 8
@GL520_REG_TEMP_MAX = common dso_local global i32* null, align 8
@GL520_REG_TEMP_MAX_HYST = common dso_local global i32* null, align 8
@GL520_REG_FAN_DIV = common dso_local global i32 0, align 4
@GL520_REG_CONF = common dso_local global i32 0, align 4
@GL520_REG_IN_MIN = common dso_local global i32* null, align 8
@GL520_REG_IN_MAX = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gl520_data* (%struct.device*)* @gl520_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gl520_data* @gl520_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.gl520_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.gl520_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.gl520_data* %8, %struct.gl520_data** %3, align 8
  %9 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %10 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %9, i32 0, i32 19
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %4, align 8
  %12 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %13 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %12, i32 0, i32 16
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i64, i64* @jiffies, align 8
  %16 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %17 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %16, i32 0, i32 17
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @HZ, align 4
  %20 = mul nsw i32 2, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = call i64 @time_after(i64 %15, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %27 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %260, label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load i32, i32* @GL520_REG_ALARMS, align 4
  %36 = call i32 @gl520_read_value(%struct.i2c_client* %34, i32 %35)
  %37 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %38 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load i32, i32* @GL520_REG_BEEP_MASK, align 4
  %41 = call i32 @gl520_read_value(%struct.i2c_client* %39, i32 %40)
  %42 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %43 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load i32, i32* @GL520_REG_VID_INPUT, align 4
  %46 = call i32 @gl520_read_value(%struct.i2c_client* %44, i32 %45)
  %47 = and i32 %46, 31
  %48 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %49 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %91, %30
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %94

53:                                               ; preds = %50
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = load i32*, i32** @GL520_REG_IN_INPUT, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @gl520_read_value(%struct.i2c_client* %54, i32 %59)
  %61 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %62 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = load i32*, i32** @GL520_REG_IN_LIMIT, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @gl520_read_value(%struct.i2c_client* %67, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, 255
  %76 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %77 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  %82 = load i32, i32* %5, align 4
  %83 = ashr i32 %82, 8
  %84 = and i32 %83, 255
  %85 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %86 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %85, i32 0, i32 6
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  br label %91

91:                                               ; preds = %53
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %50

94:                                               ; preds = %50
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = load i32, i32* @GL520_REG_FAN_INPUT, align 4
  %97 = call i32 @gl520_read_value(%struct.i2c_client* %95, i32 %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = ashr i32 %98, 8
  %100 = and i32 %99, 255
  %101 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %102 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %101, i32 0, i32 7
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* %5, align 4
  %106 = and i32 %105, 255
  %107 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %108 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %107, i32 0, i32 7
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 %106, i32* %110, align 4
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = load i32, i32* @GL520_REG_FAN_MIN, align 4
  %113 = call i32 @gl520_read_value(%struct.i2c_client* %111, i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = ashr i32 %114, 8
  %116 = and i32 %115, 255
  %117 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %118 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %117, i32 0, i32 8
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %116, i32* %120, align 4
  %121 = load i32, i32* %5, align 4
  %122 = and i32 %121, 255
  %123 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %124 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %123, i32 0, i32 8
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32 %122, i32* %126, align 4
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = load i32*, i32** @GL520_REG_TEMP_INPUT, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @gl520_read_value(%struct.i2c_client* %127, i32 %130)
  %132 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %133 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %132, i32 0, i32 9
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 %131, i32* %135, align 4
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = load i32*, i32** @GL520_REG_TEMP_MAX, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @gl520_read_value(%struct.i2c_client* %136, i32 %139)
  %141 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %142 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %141, i32 0, i32 10
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  store i32 %140, i32* %144, align 4
  %145 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %146 = load i32*, i32** @GL520_REG_TEMP_MAX_HYST, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @gl520_read_value(%struct.i2c_client* %145, i32 %148)
  %150 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %151 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %150, i32 0, i32 11
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %149, i32* %153, align 4
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = load i32, i32* @GL520_REG_FAN_DIV, align 4
  %156 = call i32 @gl520_read_value(%struct.i2c_client* %154, i32 %155)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = ashr i32 %157, 6
  %159 = and i32 %158, 3
  %160 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %161 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %160, i32 0, i32 12
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  store i32 %159, i32* %163, align 4
  %164 = load i32, i32* %5, align 4
  %165 = ashr i32 %164, 4
  %166 = and i32 %165, 3
  %167 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %168 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %167, i32 0, i32 12
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  store i32 %166, i32* %170, align 4
  %171 = load i32, i32* %5, align 4
  %172 = ashr i32 %171, 2
  %173 = and i32 %172, 1
  %174 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %175 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %174, i32 0, i32 13
  store i32 %173, i32* %175, align 8
  %176 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %177 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %176, i32 0, i32 14
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %180 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, %178
  store i32 %182, i32* %180, align 4
  %183 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %184 = load i32, i32* @GL520_REG_CONF, align 4
  %185 = call i32 @gl520_read_value(%struct.i2c_client* %183, i32 %184)
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %5, align 4
  %187 = ashr i32 %186, 2
  %188 = and i32 %187, 1
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %193 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %192, i32 0, i32 15
  store i32 %191, i32* %193, align 8
  %194 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %195 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %194, i32 0, i32 18
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %226

198:                                              ; preds = %94
  %199 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %200 = load i32*, i32** @GL520_REG_TEMP_INPUT, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @gl520_read_value(%struct.i2c_client* %199, i32 %202)
  %204 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %205 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %204, i32 0, i32 9
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  store i32 %203, i32* %207, align 4
  %208 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %209 = load i32*, i32** @GL520_REG_TEMP_MAX, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @gl520_read_value(%struct.i2c_client* %208, i32 %211)
  %213 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %214 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %213, i32 0, i32 10
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  store i32 %212, i32* %216, align 4
  %217 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %218 = load i32*, i32** @GL520_REG_TEMP_MAX_HYST, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @gl520_read_value(%struct.i2c_client* %217, i32 %220)
  %222 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %223 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %222, i32 0, i32 11
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  store i32 %221, i32* %225, align 4
  br label %254

226:                                              ; preds = %94
  %227 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %228 = load i32*, i32** @GL520_REG_IN_INPUT, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 4
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @gl520_read_value(%struct.i2c_client* %227, i32 %230)
  %232 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %233 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %232, i32 0, i32 4
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 4
  store i32 %231, i32* %235, align 4
  %236 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %237 = load i32*, i32** @GL520_REG_IN_MIN, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 4
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @gl520_read_value(%struct.i2c_client* %236, i32 %239)
  %241 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %242 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %241, i32 0, i32 5
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 4
  store i32 %240, i32* %244, align 4
  %245 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %246 = load i32*, i32** @GL520_REG_IN_MAX, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 4
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @gl520_read_value(%struct.i2c_client* %245, i32 %248)
  %250 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %251 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %250, i32 0, i32 6
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 4
  store i32 %249, i32* %253, align 4
  br label %254

254:                                              ; preds = %226, %198
  %255 = load i64, i64* @jiffies, align 8
  %256 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %257 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %256, i32 0, i32 17
  store i64 %255, i64* %257, align 8
  %258 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %259 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %258, i32 0, i32 0
  store i32 1, i32* %259, align 8
  br label %260

260:                                              ; preds = %254, %25
  %261 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  %262 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %261, i32 0, i32 16
  %263 = call i32 @mutex_unlock(i32* %262)
  %264 = load %struct.gl520_data*, %struct.gl520_data** %3, align 8
  ret %struct.gl520_data* %264
}

declare dso_local %struct.gl520_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @gl520_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
