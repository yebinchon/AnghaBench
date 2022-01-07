; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_fan_div_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_fan_div_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gl520_data = type { i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GL520_REG_FAN_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_div_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gl520_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.gl520_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.gl520_data* %17, %struct.gl520_data** %10, align 8
  %18 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %19 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %18, i32 0, i32 2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtoul(i8* %25, i32 10, i64* %14)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %5, align 4
  br label %85

31:                                               ; preds = %4
  %32 = load i64, i64* %14, align 8
  switch i64 %32, label %37 [
    i64 1, label %33
    i64 2, label %34
    i64 4, label %35
    i64 8, label %36
  ]

33:                                               ; preds = %31
  store i32 0, i32* %13, align 4
  br label %44

34:                                               ; preds = %31
  store i32 1, i32* %13, align 4
  br label %44

35:                                               ; preds = %31
  store i32 2, i32* %13, align 4
  br label %44

36:                                               ; preds = %31
  store i32 3, i32* %13, align 4
  br label %44

37:                                               ; preds = %31
  %38 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i64, i64* %14, align 8
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %85

44:                                               ; preds = %36, %35, %34, %33
  %45 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %46 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %45, i32 0, i32 1
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %50 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %44
  %58 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %59 = load i32, i32* @GL520_REG_FAN_DIV, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %61 = load i32, i32* @GL520_REG_FAN_DIV, align 4
  %62 = call i32 @gl520_read_value(%struct.i2c_client* %60, i32 %61)
  %63 = and i32 %62, -193
  %64 = load i32, i32* %13, align 4
  %65 = shl i32 %64, 6
  %66 = or i32 %63, %65
  %67 = call i32 @gl520_write_value(%struct.i2c_client* %58, i32 %59, i32 %66)
  br label %79

68:                                               ; preds = %44
  %69 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %70 = load i32, i32* @GL520_REG_FAN_DIV, align 4
  %71 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %72 = load i32, i32* @GL520_REG_FAN_DIV, align 4
  %73 = call i32 @gl520_read_value(%struct.i2c_client* %71, i32 %72)
  %74 = and i32 %73, -49
  %75 = load i32, i32* %13, align 4
  %76 = shl i32 %75, 4
  %77 = or i32 %74, %76
  %78 = call i32 @gl520_write_value(%struct.i2c_client* %69, i32 %70, i32 %77)
  br label %79

79:                                               ; preds = %68, %57
  %80 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %81 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i64, i64* %9, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %79, %37, %29
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.gl520_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gl520_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @gl520_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
