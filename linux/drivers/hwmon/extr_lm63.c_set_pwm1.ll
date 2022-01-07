; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_set_pwm1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_set_pwm1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.lm63_data = type { i32, i64*, i64, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@LM63_REG_PWM_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pwm1(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.lm63_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %10, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.lm63_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.lm63_data* %20, %struct.lm63_data** %11, align 8
  %21 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %22 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %21, i32 0, i32 5
  %23 = load %struct.i2c_client*, %struct.i2c_client** %22, align 8
  store %struct.i2c_client* %23, %struct.i2c_client** %12, align 8
  %24 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %28 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %96

35:                                               ; preds = %4
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @kstrtoul(i8* %36, i32 10, i64* %14)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %5, align 4
  br label %96

42:                                               ; preds = %35
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %13, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @LM63_REG_LUT_PWM(i32 %47)
  br label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @LM63_REG_PWM_VALUE, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i32 [ %48, %45 ], [ %50, %49 ]
  store i32 %52, i32* %16, align 4
  %53 = load i64, i64* %14, align 8
  %54 = call i64 @clamp_val(i64 %53, i32 0, i32 255)
  store i64 %54, i64* %14, align 8
  %55 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %56 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %55, i32 0, i32 3
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %59 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i64, i64* %14, align 8
  br label %73

64:                                               ; preds = %51
  %65 = load i64, i64* %14, align 8
  %66 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %67 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = mul i64 %65, %68
  %70 = mul i64 %69, 2
  %71 = add i64 %70, 127
  %72 = udiv i64 %71, 255
  br label %73

73:                                               ; preds = %64, %62
  %74 = phi i64 [ %63, %62 ], [ %72, %64 ]
  %75 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %76 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 %74, i64* %80, align 8
  %81 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %84 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %81, i32 %82, i64 %89)
  %91 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %92 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %91, i32 0, i32 3
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i64, i64* %9, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %73, %40, %32
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm63_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @LM63_REG_LUT_PWM(i32) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
