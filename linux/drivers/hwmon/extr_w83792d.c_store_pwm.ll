; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_store_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_store_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83792d_data = type { i64*, i32 }

@W83792D_REG_PWM = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.w83792d_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %10, align 8
  %18 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.i2c_client* @to_i2c_client(%struct.device* %21)
  store %struct.i2c_client* %22, %struct.i2c_client** %12, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %24 = call %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client* %23)
  store %struct.w83792d_data* %24, %struct.w83792d_data** %13, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtoul(i8* %25, i32 10, i64* %14)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %5, align 4
  br label %76

31:                                               ; preds = %4
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @clamp_val(i64 %32, i32 0, i32 255)
  %34 = ashr i32 %33, 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %14, align 8
  %36 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %37 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %40 = load i32*, i32** @W83792D_REG_PWM, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @w83792d_read_value(%struct.i2c_client* %39, i32 %44)
  %46 = and i32 %45, 240
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %14, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %52 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %50, i64* %56, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %58 = load i32*, i32** @W83792D_REG_PWM, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %64 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @w83792d_write_value(%struct.i2c_client* %57, i32 %62, i64 %69)
  %71 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %72 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i64, i64* %9, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %31, %29
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83792d_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83792d_write_value(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
