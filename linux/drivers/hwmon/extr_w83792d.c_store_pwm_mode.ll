; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_store_pwm_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_store_pwm_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83792d_data = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@W83792D_REG_PWM = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_pwm_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %94

31:                                               ; preds = %4
  %32 = load i64, i64* %14, align 8
  %33 = icmp ugt i64 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %94

37:                                               ; preds = %31
  %38 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %39 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %42 = load i32*, i32** @W83792D_REG_PWM, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @w83792d_read_value(%struct.i2c_client* %41, i32 %46)
  %48 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %49 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load i64, i64* %14, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %37
  %57 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %58 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, 128
  store i32 %64, i32* %62, align 4
  br label %74

65:                                               ; preds = %37
  %66 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %67 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 127
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %65, %56
  %75 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %76 = load i32*, i32** @W83792D_REG_PWM, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %82 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @w83792d_write_value(%struct.i2c_client* %75, i32 %80, i32 %87)
  %89 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %90 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i64, i64* %9, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %74, %34, %29
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83792d_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83792d_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
