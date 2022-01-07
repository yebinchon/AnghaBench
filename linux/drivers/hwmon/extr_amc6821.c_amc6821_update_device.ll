; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_amc6821_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_amc6821_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amc6821_data = type { i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32, i32, i32, i64, i64*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TEMP_IDX_LEN = common dso_local global i32 0, align 4
@temp_reg = common dso_local global i32* null, align 8
@AMC6821_REG_STAT1 = common dso_local global i32 0, align 4
@AMC6821_REG_STAT2 = common dso_local global i32 0, align 4
@AMC6821_REG_DCY = common dso_local global i32 0, align 4
@FAN1_IDX_LEN = common dso_local global i32 0, align 4
@fan_reg_low = common dso_local global i32* null, align 8
@fan_reg_hi = common dso_local global i32* null, align 8
@AMC6821_REG_CONF4 = common dso_local global i32 0, align 4
@AMC6821_CONF4_PSPR = common dso_local global i32 0, align 4
@AMC6821_REG_DCY_LOW_TEMP = common dso_local global i32 0, align 4
@AMC6821_REG_PSV_TEMP = common dso_local global i32 0, align 4
@AMC6821_REG_LTEMP_FAN_CTRL = common dso_local global i32 0, align 4
@AMC6821_REG_RTEMP_FAN_CTRL = common dso_local global i32 0, align 4
@AMC6821_REG_CONF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amc6821_data* (%struct.device*)* @amc6821_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amc6821_data* @amc6821_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.amc6821_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.amc6821_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.amc6821_data* %9, %struct.amc6821_data** %3, align 8
  %10 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %11 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %10, i32 0, i32 14
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  %13 = load i32, i32* @HZ, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %15 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %14, i32 0, i32 11
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i64, i64* @jiffies, align 8
  %18 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %19 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %18, i32 0, i32 12
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = call i64 @time_after(i64 %17, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %28 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %279, label %31

31:                                               ; preds = %26, %1
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @TEMP_IDX_LEN, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32*, i32** @temp_reg, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %42)
  %44 = sext i32 %43 to i64
  %45 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %46 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %45, i32 0, i32 13
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %44, i64* %50, align 8
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %32

54:                                               ; preds = %32
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = load i32, i32* @AMC6821_REG_STAT1, align 4
  %57 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %55, i32 %56)
  %58 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %59 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load i32, i32* @AMC6821_REG_STAT2, align 4
  %62 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %60, i32 %61)
  %63 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %64 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load i32, i32* @AMC6821_REG_DCY, align 4
  %67 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %65, i32 %66)
  %68 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %69 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %104, %54
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @FAN1_IDX_LEN, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %107

74:                                               ; preds = %70
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = load i32*, i32** @fan_reg_low, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %75, i32 %80)
  %82 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %83 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = load i32*, i32** @fan_reg_hi, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %88, i32 %93)
  %95 = shl i32 %94, 8
  %96 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %97 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %95
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %74
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %70

107:                                              ; preds = %70
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = load i32, i32* @AMC6821_REG_CONF4, align 4
  %110 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %108, i32 %109)
  %111 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %112 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 8
  %113 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %114 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @AMC6821_CONF4_PSPR, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 4, i32 2
  %121 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %122 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 8
  %123 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %124 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %123, i32 0, i32 6
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 0, i32* %126, align 4
  %127 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %128 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %127, i32 0, i32 6
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  store i32 255, i32* %130, align 4
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %132 = load i32, i32* @AMC6821_REG_DCY_LOW_TEMP, align 4
  %133 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %131, i32 %132)
  %134 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %135 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %134, i32 0, i32 6
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 %133, i32* %137, align 4
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = load i32, i32* @AMC6821_REG_PSV_TEMP, align 4
  %140 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %138, i32 %139)
  %141 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %142 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %141, i32 0, i32 7
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  store i32 %140, i32* %144, align 4
  %145 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %146 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %145, i32 0, i32 7
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %151 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %150, i32 0, i32 8
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %149, i32* %153, align 4
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = load i32, i32* @AMC6821_REG_LTEMP_FAN_CTRL, align 4
  %156 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %154, i32 %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = and i32 %157, 248
  %159 = ashr i32 %158, 1
  %160 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %161 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %160, i32 0, i32 7
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  store i32 %159, i32* %163, align 4
  %164 = load i32, i32* %6, align 4
  %165 = and i32 %164, 7
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = ashr i32 32, %166
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %194

170:                                              ; preds = %107
  %171 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %172 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %171, i32 0, i32 7
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %177 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %176, i32 0, i32 6
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %182 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %181, i32 0, i32 6
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 %180, %185
  %187 = load i32, i32* %6, align 4
  %188 = sdiv i32 %186, %187
  %189 = add nsw i32 %175, %188
  %190 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %191 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %190, i32 0, i32 7
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  store i32 %189, i32* %193, align 4
  br label %199

194:                                              ; preds = %107
  %195 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %196 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %195, i32 0, i32 7
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  store i32 255, i32* %198, align 4
  br label %199

199:                                              ; preds = %194, %170
  %200 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %201 = load i32, i32* @AMC6821_REG_RTEMP_FAN_CTRL, align 4
  %202 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %200, i32 %201)
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %6, align 4
  %204 = and i32 %203, 248
  %205 = ashr i32 %204, 1
  %206 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %207 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %206, i32 0, i32 8
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  store i32 %205, i32* %209, align 4
  %210 = load i32, i32* %6, align 4
  %211 = and i32 %210, 7
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = ashr i32 32, %212
  store i32 %213, i32* %6, align 4
  %214 = load i32, i32* %6, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %240

216:                                              ; preds = %199
  %217 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %218 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %217, i32 0, i32 8
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %223 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %222, i32 0, i32 6
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %228 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %227, i32 0, i32 6
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = sub nsw i32 %226, %231
  %233 = load i32, i32* %6, align 4
  %234 = sdiv i32 %232, %233
  %235 = add nsw i32 %221, %234
  %236 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %237 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %236, i32 0, i32 8
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 2
  store i32 %235, i32* %239, align 4
  br label %245

240:                                              ; preds = %199
  %241 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %242 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %241, i32 0, i32 8
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 2
  store i32 255, i32* %244, align 4
  br label %245

245:                                              ; preds = %240, %216
  %246 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %247 = load i32, i32* @AMC6821_REG_CONF1, align 4
  %248 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %246, i32 %247)
  store i32 %248, i32* %6, align 4
  %249 = load i32, i32* %6, align 4
  %250 = ashr i32 %249, 5
  %251 = and i32 %250, 3
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  switch i32 %252, label %273 [
    i32 0, label %253
    i32 2, label %258
    i32 3, label %263
    i32 1, label %268
  ]

253:                                              ; preds = %245
  %254 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %255 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %254, i32 0, i32 9
  store i32 0, i32* %255, align 8
  %256 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %257 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %256, i32 0, i32 10
  store i32 1, i32* %257, align 4
  br label %273

258:                                              ; preds = %245
  %259 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %260 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %259, i32 0, i32 9
  store i32 2, i32* %260, align 8
  %261 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %262 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %261, i32 0, i32 10
  store i32 2, i32* %262, align 4
  br label %273

263:                                              ; preds = %245
  %264 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %265 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %264, i32 0, i32 9
  store i32 3, i32* %265, align 8
  %266 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %267 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %266, i32 0, i32 10
  store i32 3, i32* %267, align 4
  br label %273

268:                                              ; preds = %245
  %269 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %270 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %269, i32 0, i32 9
  store i32 0, i32* %270, align 8
  %271 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %272 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %271, i32 0, i32 10
  store i32 0, i32* %272, align 4
  br label %273

273:                                              ; preds = %245, %268, %263, %258, %253
  %274 = load i64, i64* @jiffies, align 8
  %275 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %276 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %275, i32 0, i32 12
  store i64 %274, i64* %276, align 8
  %277 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %278 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %277, i32 0, i32 0
  store i32 1, i32* %278, align 8
  br label %279

279:                                              ; preds = %273, %26
  %280 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  %281 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %280, i32 0, i32 11
  %282 = call i32 @mutex_unlock(i32* %281)
  %283 = load %struct.amc6821_data*, %struct.amc6821_data** %3, align 8
  ret %struct.amc6821_data* %283
}

declare dso_local %struct.amc6821_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
