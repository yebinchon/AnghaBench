; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83l786ng.c_store_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83l786ng.c_store_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83l786ng_data = type { i64*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@W83L786NG_REG_PWM = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.w83l786ng_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.w83l786ng_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.w83l786ng_data* %20, %struct.w83l786ng_data** %11, align 8
  %21 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %22 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %21, i32 0, i32 2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %22, align 8
  store %struct.i2c_client* %23, %struct.i2c_client** %12, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @kstrtoul(i8* %24, i32 10, i64* %13)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %70

30:                                               ; preds = %4
  %31 = load i64, i64* %13, align 8
  %32 = call i64 @clamp_val(i64 %31, i32 0, i32 255)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i64 @DIV_ROUND_CLOSEST(i64 %33, i32 17)
  store i64 %34, i64* %13, align 8
  %35 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %36 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i64, i64* %13, align 8
  %39 = mul i64 %38, 17
  %40 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %41 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 %39, i64* %45, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %47 = load i32*, i32** @W83L786NG_REG_PWM, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @w83l786ng_read_value(%struct.i2c_client* %46, i32 %51)
  %53 = and i32 %52, 240
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %13, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %13, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %58 = load i32*, i32** @W83L786NG_REG_PWM, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @w83l786ng_write_value(%struct.i2c_client* %57, i32 %62, i64 %63)
  %65 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %66 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i64, i64* %9, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %30, %28
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83l786ng_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83l786ng_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83l786ng_write_value(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
