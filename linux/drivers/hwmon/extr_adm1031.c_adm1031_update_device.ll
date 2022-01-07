; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_adm1031_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_adm1031_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm1031_data = type { i64, i32, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i64*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Starting adm1031 update\0A\00", align 1
@adm1031 = common dso_local global i64 0, align 8
@ADM1031_REG_EXT_TEMP = common dso_local global i32 0, align 4
@ADM1031_REG_CONF1 = common dso_local global i32 0, align 4
@ADM1031_REG_CONF2 = common dso_local global i32 0, align 4
@adm1030 = common dso_local global i64 0, align 8
@ADM1031_REG_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adm1031_data* (%struct.device*)* @adm1031_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adm1031_data* @adm1031_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.adm1031_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.adm1031_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.adm1031_data* %10, %struct.adm1031_data** %3, align 8
  %11 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %12 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %11, i32 0, i32 19
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %4, align 8
  %14 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %15 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %14, i32 0, i32 16
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %18 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %21 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %20, i32 0, i32 18
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @msecs_to_jiffies(i32 %22)
  %24 = add i64 %19, %23
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @time_after(i64 %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %31 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %237, label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %139, %34
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %41 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @adm1031, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 3, i32 2
  %47 = icmp slt i32 %39, %46
  br i1 %47, label %48, label %142

48:                                               ; preds = %38
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @ADM1031_REG_TEMP(i32 %50)
  %52 = call i32 @adm1031_read_value(%struct.i2c_client* %49, i32 %51)
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %7, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = load i32, i32* @ADM1031_REG_EXT_TEMP, align 4
  %56 = call i32 @adm1031_read_value(%struct.i2c_client* %54, i32 %55)
  %57 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %58 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @ADM1031_REG_TEMP(i32 %64)
  %66 = call i32 @adm1031_read_value(%struct.i2c_client* %63, i32 %65)
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %48
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = load i32, i32* @ADM1031_REG_EXT_TEMP, align 4
  %74 = call i32 @adm1031_read_value(%struct.i2c_client* %72, i32 %73)
  %75 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %76 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %71, %48
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %84 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %83, i32 0, i32 17
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %82, i64* %88, align 8
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @ADM1031_REG_TEMP_OFFSET(i32 %90)
  %92 = call i32 @adm1031_read_value(%struct.i2c_client* %89, i32 %91)
  %93 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %94 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @ADM1031_REG_TEMP_MIN(i32 %100)
  %102 = call i32 @adm1031_read_value(%struct.i2c_client* %99, i32 %101)
  %103 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %104 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @ADM1031_REG_TEMP_MAX(i32 %110)
  %112 = call i32 @adm1031_read_value(%struct.i2c_client* %109, i32 %111)
  %113 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %114 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %113, i32 0, i32 6
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  %119 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @ADM1031_REG_TEMP_CRIT(i32 %120)
  %122 = call i32 @adm1031_read_value(%struct.i2c_client* %119, i32 %121)
  %123 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %124 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %123, i32 0, i32 7
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @ADM1031_REG_AUTO_TEMP(i32 %130)
  %132 = call i32 @adm1031_read_value(%struct.i2c_client* %129, i32 %131)
  %133 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %134 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %133, i32 0, i32 8
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  br label %139

139:                                              ; preds = %81
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %38

142:                                              ; preds = %38
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = load i32, i32* @ADM1031_REG_CONF1, align 4
  %145 = call i32 @adm1031_read_value(%struct.i2c_client* %143, i32 %144)
  %146 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %147 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %146, i32 0, i32 9
  store i32 %145, i32* %147, align 8
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = load i32, i32* @ADM1031_REG_CONF2, align 4
  %150 = call i32 @adm1031_read_value(%struct.i2c_client* %148, i32 %149)
  %151 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %152 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %151, i32 0, i32 10
  store i32 %150, i32* %152, align 4
  %153 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %154 = call i32 @ADM1031_REG_STATUS(i32 0)
  %155 = call i32 @adm1031_read_value(%struct.i2c_client* %153, i32 %154)
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = call i32 @ADM1031_REG_STATUS(i32 1)
  %158 = call i32 @adm1031_read_value(%struct.i2c_client* %156, i32 %157)
  %159 = shl i32 %158, 8
  %160 = or i32 %155, %159
  %161 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %162 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %161, i32 0, i32 11
  store i32 %160, i32* %162, align 8
  %163 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %164 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @adm1030, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %142
  %169 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %170 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %169, i32 0, i32 11
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, 49407
  store i32 %172, i32* %170, align 8
  br label %173

173:                                              ; preds = %168, %142
  store i32 0, i32* %6, align 4
  br label %174

174:                                              ; preds = %228, %173
  %175 = load i32, i32* %6, align 4
  %176 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %177 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @adm1030, align 8
  %180 = icmp eq i64 %178, %179
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 1, i32 2
  %183 = icmp slt i32 %175, %182
  br i1 %183, label %184, label %231

184:                                              ; preds = %174
  %185 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @ADM1031_REG_FAN_DIV(i32 %186)
  %188 = call i32 @adm1031_read_value(%struct.i2c_client* %185, i32 %187)
  %189 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %190 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %189, i32 0, i32 12
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %188, i32* %194, align 4
  %195 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @ADM1031_REG_FAN_MIN(i32 %196)
  %198 = call i32 @adm1031_read_value(%struct.i2c_client* %195, i32 %197)
  %199 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %200 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %199, i32 0, i32 13
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 %198, i32* %204, align 4
  %205 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @ADM1031_REG_FAN_SPEED(i32 %206)
  %208 = call i32 @adm1031_read_value(%struct.i2c_client* %205, i32 %207)
  %209 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %210 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %209, i32 0, i32 14
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  store i32 %208, i32* %214, align 4
  %215 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %216 = load i32, i32* @ADM1031_REG_PWM, align 4
  %217 = call i32 @adm1031_read_value(%struct.i2c_client* %215, i32 %216)
  %218 = load i32, i32* %6, align 4
  %219 = mul nsw i32 4, %218
  %220 = ashr i32 %217, %219
  %221 = and i32 %220, 15
  %222 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %223 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %222, i32 0, i32 15
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  store i32 %221, i32* %227, align 4
  br label %228

228:                                              ; preds = %184
  %229 = load i32, i32* %6, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %6, align 4
  br label %174

231:                                              ; preds = %174
  %232 = load i64, i64* @jiffies, align 8
  %233 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %234 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  %235 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %236 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %235, i32 0, i32 1
  store i32 1, i32* %236, align 8
  br label %237

237:                                              ; preds = %231, %29
  %238 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %239 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %238, i32 0, i32 16
  %240 = call i32 @mutex_unlock(i32* %239)
  %241 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  ret %struct.adm1031_data* %241
}

declare dso_local %struct.adm1031_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @adm1031_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADM1031_REG_TEMP(i32) #1

declare dso_local i32 @ADM1031_REG_TEMP_OFFSET(i32) #1

declare dso_local i32 @ADM1031_REG_TEMP_MIN(i32) #1

declare dso_local i32 @ADM1031_REG_TEMP_MAX(i32) #1

declare dso_local i32 @ADM1031_REG_TEMP_CRIT(i32) #1

declare dso_local i32 @ADM1031_REG_AUTO_TEMP(i32) #1

declare dso_local i32 @ADM1031_REG_STATUS(i32) #1

declare dso_local i32 @ADM1031_REG_FAN_DIV(i32) #1

declare dso_local i32 @ADM1031_REG_FAN_MIN(i32) #1

declare dso_local i32 @ADM1031_REG_FAN_SPEED(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
