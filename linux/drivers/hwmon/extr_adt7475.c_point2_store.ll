; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_point2_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_point2_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adt7475_data = type { i32, i32**, i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.sensor_device_attribute_2 = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@REG_CONFIG5 = common dso_local global i32 0, align 4
@AUTOMIN = common dso_local global i64 0, align 8
@autorange_table = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @point2_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @point2_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adt7475_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.sensor_device_attribute_2*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.adt7475_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.adt7475_data* %16, %struct.adt7475_data** %10, align 8
  %17 = load %struct.adt7475_data*, %struct.adt7475_data** %10, align 8
  %18 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %17, i32 0, i32 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %21 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %20)
  store %struct.sensor_device_attribute_2* %21, %struct.sensor_device_attribute_2** %12, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @kstrtol(i8* %22, i32 10, i64* %14)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %145

28:                                               ; preds = %4
  %29 = load %struct.adt7475_data*, %struct.adt7475_data** %10, align 8
  %30 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %29, i32 0, i32 3
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* @REG_CONFIG5, align 4
  %33 = call i32 @adt7475_read(i32 %32)
  %34 = load %struct.adt7475_data*, %struct.adt7475_data** %10, align 8
  %35 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %37 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @TEMP_TMIN_REG(i64 %38)
  %40 = call i32 @adt7475_read(i32 %39)
  %41 = shl i32 %40, 2
  %42 = load %struct.adt7475_data*, %struct.adt7475_data** %10, align 8
  %43 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = load i64, i64* @AUTOMIN, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %49 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %41, i32* %51, align 4
  %52 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %53 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @TEMP_TRANGE_REG(i64 %54)
  %56 = call i32 @adt7475_read(i32 %55)
  %57 = load %struct.adt7475_data*, %struct.adt7475_data** %10, align 8
  %58 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %61 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %56, i32* %63, align 4
  %64 = load %struct.adt7475_data*, %struct.adt7475_data** %10, align 8
  %65 = load %struct.adt7475_data*, %struct.adt7475_data** %10, align 8
  %66 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %65, i32 0, i32 1
  %67 = load i32**, i32*** %66, align 8
  %68 = load i64, i64* @AUTOMIN, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %72 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @reg2temp(%struct.adt7475_data* %64, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i64, i64* %14, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64*, i64** @autorange_table, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64*, i64** @autorange_table, align 8
  %87 = load i64*, i64** @autorange_table, align 8
  %88 = call i32 @ARRAY_SIZE(i64* %87)
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %86, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %85, %92
  %94 = call i64 @clamp_val(i64 %77, i64 %83, i64 %93)
  store i64 %94, i64* %14, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %14, align 8
  %98 = sub nsw i64 %97, %96
  store i64 %98, i64* %14, align 8
  %99 = load i64, i64* %14, align 8
  %100 = load i64*, i64** @autorange_table, align 8
  %101 = load i64*, i64** @autorange_table, align 8
  %102 = call i32 @ARRAY_SIZE(i64* %101)
  %103 = call i64 @find_closest(i64 %99, i64* %100, i32 %102)
  store i64 %103, i64* %14, align 8
  %104 = load %struct.adt7475_data*, %struct.adt7475_data** %10, align 8
  %105 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %108 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, -241
  store i32 %112, i32* %110, align 4
  %113 = load i64, i64* %14, align 8
  %114 = shl i64 %113, 4
  %115 = load %struct.adt7475_data*, %struct.adt7475_data** %10, align 8
  %116 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %119 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = or i64 %123, %114
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 4
  %126 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %127 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %128 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @TEMP_TRANGE_REG(i64 %129)
  %131 = load %struct.adt7475_data*, %struct.adt7475_data** %10, align 8
  %132 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %135 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %126, i32 %130, i64 %139)
  %141 = load %struct.adt7475_data*, %struct.adt7475_data** %10, align 8
  %142 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %141, i32 0, i32 3
  %143 = call i32 @mutex_unlock(i32* %142)
  %144 = load i64, i64* %9, align 8
  store i64 %144, i64* %5, align 8
  br label %145

145:                                              ; preds = %28, %25
  %146 = load i64, i64* %5, align 8
  ret i64 %146
}

declare dso_local %struct.adt7475_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adt7475_read(i32) #1

declare dso_local i32 @TEMP_TMIN_REG(i64) #1

declare dso_local i32 @TEMP_TRANGE_REG(i64) #1

declare dso_local i32 @reg2temp(%struct.adt7475_data*, i32) #1

declare dso_local i64 @clamp_val(i64, i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @find_closest(i64, i64*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
