; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_pwm_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_pwm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i64 }
%struct.adt7475_data = type { i32**, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pwm_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  store i8 0, i8* %13, align 1
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @kstrtol(i8* %22, i32 10, i64* %14)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %122

28:                                               ; preds = %4
  %29 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %30 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %33 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %85 [
    i32 130, label %35
    i32 128, label %75
    i32 129, label %80
  ]

35:                                               ; preds = %28
  %36 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %37 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @PWM_CONFIG_REG(i64 %38)
  %40 = call i32 @adt7475_read(i32 %39)
  %41 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %42 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i64, i64* @CONTROL, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %48 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %40, i32* %50, align 4
  %51 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %52 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load i64, i64* @CONTROL, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %58 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 5
  %63 = and i32 %62, 7
  %64 = icmp ne i32 %63, 7
  br i1 %64, label %65, label %70

65:                                               ; preds = %35
  %66 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %67 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %5, align 8
  br label %122

70:                                               ; preds = %35
  %71 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %72 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call zeroext i8 @PWM_REG(i64 %73)
  store i8 %74, i8* %13, align 1
  br label %85

75:                                               ; preds = %28
  %76 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %77 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call zeroext i8 @PWM_MIN_REG(i64 %78)
  store i8 %79, i8* %13, align 1
  br label %85

80:                                               ; preds = %28
  %81 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %82 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call zeroext i8 @PWM_MAX_REG(i64 %83)
  store i8 %84, i8* %13, align 1
  br label %85

85:                                               ; preds = %28, %80, %75, %70
  %86 = load i64, i64* %14, align 8
  %87 = call i32 @clamp_val(i64 %86, i32 0, i32 255)
  %88 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %89 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %92 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %90, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %98 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32 %87, i32* %100, align 4
  %101 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %102 = load i8, i8* %13, align 1
  %103 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %104 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %103, i32 0, i32 0
  %105 = load i32**, i32*** %104, align 8
  %106 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %107 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %105, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %113 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %101, i8 zeroext %102, i32 %116)
  %118 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %119 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %118, i32 0, i32 1
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i64, i64* %9, align 8
  store i64 %121, i64* %5, align 8
  br label %122

122:                                              ; preds = %85, %65, %25
  %123 = load i64, i64* %5, align 8
  ret i64 %123
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.adt7475_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adt7475_read(i32) #1

declare dso_local i32 @PWM_CONFIG_REG(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local zeroext i8 @PWM_REG(i64) #1

declare dso_local zeroext i8 @PWM_MIN_REG(i64) #1

declare dso_local zeroext i8 @PWM_MAX_REG(i64) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
