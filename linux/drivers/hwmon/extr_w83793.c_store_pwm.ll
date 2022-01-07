; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_store_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_store_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83793_data = type { i64*, i32**, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@PWM_STOP_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.w83793_data*, align 8
  %12 = alloca %struct.sensor_device_attribute_2*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %20 = call %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.w83793_data* %20, %struct.w83793_data** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %21)
  store %struct.sensor_device_attribute_2* %22, %struct.sensor_device_attribute_2** %12, align 8
  %23 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %27 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @kstrtoul(i8* %29, i32 10, i64* %15)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %5, align 4
  br label %116

35:                                               ; preds = %4
  %36 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %37 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %36, i32 0, i32 2
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @PWM_STOP_TIME, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load i64, i64* %15, align 8
  %44 = call i64 @TIME_TO_REG(i64 %43)
  store i64 %44, i64* %15, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %47 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 %45, i64* %51, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @W83793_REG_PWM_STOP_TIME(i32 %53)
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @w83793_write_value(%struct.i2c_client* %52, i32 %54, i64 %55)
  br label %110

57:                                               ; preds = %35
  %58 = load i64, i64* %15, align 8
  %59 = call i32 @clamp_val(i64 %58, i32 0, i32 255)
  %60 = ashr i32 %59, 2
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %15, align 8
  %62 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @W83793_REG_PWM(i32 %63, i32 %64)
  %66 = call i32 @w83793_read_value(%struct.i2c_client* %62, i32 %65)
  %67 = and i32 %66, 192
  %68 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %69 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %68, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %67, i32* %77, align 4
  %78 = load i64, i64* %15, align 8
  %79 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %80 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %79, i32 0, i32 1
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = or i64 %90, %78
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @W83793_REG_PWM(i32 %94, i32 %95)
  %97 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %98 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %97, i32 0, i32 1
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = call i32 @w83793_write_value(%struct.i2c_client* %93, i32 %96, i64 %108)
  br label %110

110:                                              ; preds = %57, %42
  %111 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %112 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %111, i32 0, i32 2
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i64, i64* %9, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %110, %33
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @TIME_TO_REG(i64) #1

declare dso_local i32 @w83793_write_value(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @W83793_REG_PWM_STOP_TIME(i32) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @w83793_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @W83793_REG_PWM(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
