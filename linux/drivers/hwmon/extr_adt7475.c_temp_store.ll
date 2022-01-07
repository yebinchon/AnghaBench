; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_temp_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_temp_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i64 }
%struct.adt7475_data = type { i32, i64**, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@REG_CONFIG5 = common dso_local global i8 0, align 1
@CONFIG5_TEMPOFFSET = common dso_local global i32 0, align 4
@REG_REMOTE1_HYSTERSIS = common dso_local global i8 0, align 1
@REG_REMOTE2_HYSTERSIS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @temp_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.adt7475_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute_2* %18, %struct.sensor_device_attribute_2** %10, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.adt7475_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.adt7475_data* %20, %struct.adt7475_data** %11, align 8
  %21 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %22 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %21, i32 0, i32 3
  %23 = load %struct.i2c_client*, %struct.i2c_client** %22, align 8
  store %struct.i2c_client* %23, %struct.i2c_client** %12, align 8
  store i8 0, i8* %13, align 1
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @kstrtol(i8* %24, i32 10, i64* %16)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %265

30:                                               ; preds = %4
  %31 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %32 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %31, i32 0, i32 2
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i8, i8* @REG_CONFIG5, align 1
  %35 = call i32 @adt7475_read(i8 zeroext %34)
  %36 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %37 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %39 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %185 [
    i32 129, label %41
    i32 132, label %77
  ]

41:                                               ; preds = %30
  %42 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %43 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CONFIG5_TEMPOFFSET, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load i64, i64* %16, align 8
  %50 = call i64 @clamp_val(i64 %49, i32 -63000, i32 127000)
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %16, align 8
  %52 = sdiv i64 %51, 1000
  %53 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %54 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %53, i32 0, i32 1
  %55 = load i64**, i64*** %54, align 8
  %56 = getelementptr inbounds i64*, i64** %55, i64 129
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %59 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  store i64 %52, i64* %61, align 8
  store i64 %52, i64* %14, align 8
  br label %76

62:                                               ; preds = %41
  %63 = load i64, i64* %16, align 8
  %64 = call i64 @clamp_val(i64 %63, i32 -63000, i32 64000)
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %16, align 8
  %66 = sdiv i64 %65, 500
  %67 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %68 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %67, i32 0, i32 1
  %69 = load i64**, i64*** %68, align 8
  %70 = getelementptr inbounds i64*, i64** %69, i64 129
  %71 = load i64*, i64** %70, align 8
  %72 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %73 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i64, i64* %71, i64 %74
  store i64 %66, i64* %75, align 8
  store i64 %66, i64* %14, align 8
  br label %76

76:                                               ; preds = %62, %48
  br label %217

77:                                               ; preds = %30
  %78 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %79 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call zeroext i8 @TEMP_THERM_REG(i64 %80)
  %82 = call i32 @adt7475_read(i8 zeroext %81)
  %83 = shl i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %86 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %85, i32 0, i32 1
  %87 = load i64**, i64*** %86, align 8
  %88 = getelementptr inbounds i64*, i64** %87, i64 128
  %89 = load i64*, i64** %88, align 8
  %90 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %91 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i64, i64* %89, i64 %92
  store i64 %84, i64* %93, align 8
  %94 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %95 = call i32 @adt7475_read_hystersis(%struct.i2c_client* %94)
  %96 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %97 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %98 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %97, i32 0, i32 1
  %99 = load i64**, i64*** %98, align 8
  %100 = getelementptr inbounds i64*, i64** %99, i64 128
  %101 = load i64*, i64** %100, align 8
  %102 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %103 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @reg2temp(%struct.adt7475_data* %96, i32 %107)
  store i32 %108, i32* %15, align 4
  %109 = load i64, i64* %16, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sub nsw i32 %110, 15000
  %112 = load i32, i32* %15, align 4
  %113 = call i64 @clamp_val(i64 %109, i32 %111, i32 %112)
  store i64 %113, i64* %16, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %16, align 8
  %117 = sub nsw i64 %115, %116
  %118 = sdiv i64 %117, 1000
  store i64 %118, i64* %16, align 8
  %119 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %120 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 1
  br i1 %122, label %123, label %149

123:                                              ; preds = %77
  %124 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %125 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %124, i32 0, i32 1
  %126 = load i64**, i64*** %125, align 8
  %127 = getelementptr inbounds i64*, i64** %126, i64 132
  %128 = load i64*, i64** %127, align 8
  %129 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %130 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i64, i64* %128, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = and i64 %133, 240
  store i64 %134, i64* %132, align 8
  %135 = load i64, i64* %16, align 8
  %136 = and i64 %135, 15
  %137 = shl i64 %136, 4
  %138 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %139 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %138, i32 0, i32 1
  %140 = load i64**, i64*** %139, align 8
  %141 = getelementptr inbounds i64*, i64** %140, i64 132
  %142 = load i64*, i64** %141, align 8
  %143 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %144 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i64, i64* %142, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = or i64 %147, %137
  store i64 %148, i64* %146, align 8
  br label %174

149:                                              ; preds = %77
  %150 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %151 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %150, i32 0, i32 1
  %152 = load i64**, i64*** %151, align 8
  %153 = getelementptr inbounds i64*, i64** %152, i64 132
  %154 = load i64*, i64** %153, align 8
  %155 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %156 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i64, i64* %154, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = and i64 %159, 15
  store i64 %160, i64* %158, align 8
  %161 = load i64, i64* %16, align 8
  %162 = and i64 %161, 15
  %163 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %164 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %163, i32 0, i32 1
  %165 = load i64**, i64*** %164, align 8
  %166 = getelementptr inbounds i64*, i64** %165, i64 132
  %167 = load i64*, i64** %166, align 8
  %168 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %169 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i64, i64* %167, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = or i64 %172, %162
  store i64 %173, i64* %171, align 8
  br label %174

174:                                              ; preds = %149, %123
  %175 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %176 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %175, i32 0, i32 1
  %177 = load i64**, i64*** %176, align 8
  %178 = getelementptr inbounds i64*, i64** %177, i64 132
  %179 = load i64*, i64** %178, align 8
  %180 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %181 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i64, i64* %179, i64 %182
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %14, align 8
  br label %217

185:                                              ; preds = %30
  %186 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %187 = load i64, i64* %16, align 8
  %188 = call i64 @temp2reg(%struct.adt7475_data* %186, i64 %187)
  %189 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %190 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %189, i32 0, i32 1
  %191 = load i64**, i64*** %190, align 8
  %192 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %193 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64*, i64** %191, i64 %195
  %197 = load i64*, i64** %196, align 8
  %198 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %199 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds i64, i64* %197, i64 %200
  store i64 %188, i64* %201, align 8
  %202 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %203 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %202, i32 0, i32 1
  %204 = load i64**, i64*** %203, align 8
  %205 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %206 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64*, i64** %204, i64 %208
  %210 = load i64*, i64** %209, align 8
  %211 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %212 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds i64, i64* %210, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = ashr i64 %215, 2
  store i64 %216, i64* %14, align 8
  br label %217

217:                                              ; preds = %185, %174, %76
  %218 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %219 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  switch i32 %220, label %256 [
    i32 130, label %221
    i32 131, label %226
    i32 129, label %231
    i32 133, label %236
    i32 128, label %241
    i32 132, label %246
  ]

221:                                              ; preds = %217
  %222 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %223 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = call zeroext i8 @TEMP_MIN_REG(i64 %224)
  store i8 %225, i8* %13, align 1
  br label %256

226:                                              ; preds = %217
  %227 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %228 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = call zeroext i8 @TEMP_MAX_REG(i64 %229)
  store i8 %230, i8* %13, align 1
  br label %256

231:                                              ; preds = %217
  %232 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %233 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = call zeroext i8 @TEMP_OFFSET_REG(i64 %234)
  store i8 %235, i8* %13, align 1
  br label %256

236:                                              ; preds = %217
  %237 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %238 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = call zeroext i8 @TEMP_TMIN_REG(i64 %239)
  store i8 %240, i8* %13, align 1
  br label %256

241:                                              ; preds = %217
  %242 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %243 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = call zeroext i8 @TEMP_THERM_REG(i64 %244)
  store i8 %245, i8* %13, align 1
  br label %256

246:                                              ; preds = %217
  %247 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %248 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 2
  br i1 %250, label %251, label %253

251:                                              ; preds = %246
  %252 = load i8, i8* @REG_REMOTE1_HYSTERSIS, align 1
  store i8 %252, i8* %13, align 1
  br label %255

253:                                              ; preds = %246
  %254 = load i8, i8* @REG_REMOTE2_HYSTERSIS, align 1
  store i8 %254, i8* %13, align 1
  br label %255

255:                                              ; preds = %253, %251
  br label %256

256:                                              ; preds = %217, %255, %241, %236, %231, %226, %221
  %257 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %258 = load i8, i8* %13, align 1
  %259 = load i64, i64* %14, align 8
  %260 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %257, i8 zeroext %258, i64 %259)
  %261 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %262 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %261, i32 0, i32 2
  %263 = call i32 @mutex_unlock(i32* %262)
  %264 = load i64, i64* %9, align 8
  store i64 %264, i64* %5, align 8
  br label %265

265:                                              ; preds = %256, %27
  %266 = load i64, i64* %5, align 8
  ret i64 %266
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.adt7475_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adt7475_read(i8 zeroext) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local zeroext i8 @TEMP_THERM_REG(i64) #1

declare dso_local i32 @adt7475_read_hystersis(%struct.i2c_client*) #1

declare dso_local i32 @reg2temp(%struct.adt7475_data*, i32) #1

declare dso_local i64 @temp2reg(%struct.adt7475_data*, i64) #1

declare dso_local zeroext i8 @TEMP_MIN_REG(i64) #1

declare dso_local zeroext i8 @TEMP_MAX_REG(i64) #1

declare dso_local zeroext i8 @TEMP_OFFSET_REG(i64) #1

declare dso_local zeroext i8 @TEMP_TMIN_REG(i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i8 zeroext, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
