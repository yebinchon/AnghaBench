; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_fan_smart_tach_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_fan_smart_tach_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm93_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@LM93_PWM_CTL4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_smart_tach_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_smart_tach_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lm93_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.lm93_data* @dev_get_drvdata(%struct.device* %20)
  store %struct.lm93_data* %21, %struct.lm93_data** %11, align 8
  %22 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %23 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %22, i32 0, i32 1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %23, align 8
  store %struct.i2c_client* %24, %struct.i2c_client** %12, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtoul(i8* %25, i32 10, i64* %13)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %5, align 4
  br label %64

31:                                               ; preds = %4
  %32 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %33 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load i64, i64* %13, align 8
  %36 = icmp ule i64 %35, 2
  br i1 %36, label %37, label %58

37:                                               ; preds = %31
  %38 = load i64, i64* %13, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = sub i64 %42, 1
  %44 = load i32, i32* @LM93_PWM_CTL4, align 4
  %45 = call i32 @LM93_REG_PWM_CTL(i64 %43, i32 %44)
  %46 = call i32 @lm93_read_byte(%struct.i2c_client* %41, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = and i32 %47, 7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i64 0, i64* %13, align 8
  br label %51

51:                                               ; preds = %50, %40
  br label %52

52:                                               ; preds = %51, %37
  %53 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %54 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @lm93_write_fan_smart_tach(%struct.i2c_client* %53, %struct.lm93_data* %54, i32 %55, i64 %56)
  br label %58

58:                                               ; preds = %52, %31
  %59 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %60 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %58, %29
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm93_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm93_read_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM93_REG_PWM_CTL(i64, i32) #1

declare dso_local i32 @lm93_write_fan_smart_tach(%struct.i2c_client*, %struct.lm93_data*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
