; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_temp_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_temp_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83795_data = type { i32*, i64*, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@W83795_REG_FCMS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp_pwm_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.w83795_data*, align 8
  %12 = alloca %struct.sensor_device_attribute_2*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.i2c_client* @to_i2c_client(%struct.device* %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.w83795_data* @w83795_update_pwm_config(%struct.device* %18)
  store %struct.w83795_data* %19, %struct.w83795_data** %11, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %21 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %20)
  store %struct.sensor_device_attribute_2* %21, %struct.sensor_device_attribute_2** %12, align 8
  %22 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %26 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @kstrtoul(i8* %28, i32 10, i64* %15)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %107

34:                                               ; preds = %4
  %35 = load i32, i32* %13, align 4
  switch i32 %35, label %105 [
    i32 129, label %36
    i32 128, label %84
  ]

36:                                               ; preds = %34
  %37 = load i64, i64* %15, align 8
  %38 = icmp ne i64 %37, 3
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i64, i64* %15, align 8
  %41 = icmp ne i64 %40, 4
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* @EINVAL, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %5, align 8
  br label %107

45:                                               ; preds = %39, %36
  %46 = load i64, i64* %15, align 8
  %47 = sub i64 %46, 3
  store i64 %47, i64* %15, align 8
  %48 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %49 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %48, i32 0, i32 2
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load i32, i32* %14, align 4
  %52 = shl i32 1, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %55 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %53
  store i32 %59, i32* %57, align 4
  %60 = load i64, i64* %15, align 8
  %61 = load i32, i32* %14, align 4
  %62 = zext i32 %61 to i64
  %63 = shl i64 %60, %62
  %64 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %65 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = or i64 %69, %63
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  %72 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %73 = load i32, i32* @W83795_REG_FCMS2, align 4
  %74 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %75 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = call i32 @w83795_write(%struct.i2c_client* %72, i32 %73, i64 %79)
  %81 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %82 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %81, i32 0, i32 2
  %83 = call i32 @mutex_unlock(i32* %82)
  br label %105

84:                                               ; preds = %34
  %85 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %86 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %85, i32 0, i32 2
  %87 = call i32 @mutex_lock(i32* %86)
  %88 = load i64, i64* %15, align 8
  %89 = call i64 @clamp_val(i64 %88, i32 0, i32 255)
  store i64 %89, i64* %15, align 8
  %90 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @W83795_REG_TFMR(i32 %91)
  %93 = load i64, i64* %15, align 8
  %94 = call i32 @w83795_write(%struct.i2c_client* %90, i32 %92, i64 %93)
  %95 = load i64, i64* %15, align 8
  %96 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %97 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  store i64 %95, i64* %101, align 8
  %102 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %103 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %102, i32 0, i32 2
  %104 = call i32 @mutex_unlock(i32* %103)
  br label %105

105:                                              ; preds = %34, %84, %45
  %106 = load i64, i64* %9, align 8
  store i64 %106, i64* %5, align 8
  br label %107

107:                                              ; preds = %105, %42, %31
  %108 = load i64, i64* %5, align 8
  ret i64 %108
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83795_data* @w83795_update_pwm_config(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83795_write(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @W83795_REG_TFMR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
