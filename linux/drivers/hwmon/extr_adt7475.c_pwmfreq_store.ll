; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_pwmfreq_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_pwmfreq_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64 }
%struct.adt7475_data = type { i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@pwmfreq_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwmfreq_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pwmfreq_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.adt7475_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute_2* %16, %struct.sensor_device_attribute_2** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.adt7475_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.adt7475_data* %18, %struct.adt7475_data** %11, align 8
  %19 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %20 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %19, i32 0, i32 2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %12, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @kstrtol(i8* %22, i32 10, i64* %14)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %86

28:                                               ; preds = %4
  %29 = load i64, i64* %14, align 8
  %30 = load i32, i32* @pwmfreq_table, align 4
  %31 = load i32, i32* @pwmfreq_table, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = call i32 @find_closest(i64 %29, i32 %30, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %35 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %38 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @TEMP_TRANGE_REG(i64 %39)
  %41 = call i32 @adt7475_read(i32 %40)
  %42 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %43 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %46 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %41, i32* %48, align 4
  %49 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %50 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %53 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, -16
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %60 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %63 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %58
  store i32 %67, i32* %65, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %69 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %70 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @TEMP_TRANGE_REG(i64 %71)
  %73 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %74 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %77 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %68, i32 %72, i32 %80)
  %82 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %83 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i64, i64* %9, align 8
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %28, %25
  %87 = load i64, i64* %5, align 8
  ret i64 %87
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.adt7475_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @find_closest(i64, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adt7475_read(i32) #1

declare dso_local i32 @TEMP_TRANGE_REG(i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
