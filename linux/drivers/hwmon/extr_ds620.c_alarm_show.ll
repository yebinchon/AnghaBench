; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ds620.c_alarm_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ds620.c_alarm_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.ds620_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@DS620_REG_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alarm_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca %struct.ds620_data*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute* %15, %struct.sensor_device_attribute** %8, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.ds620_data* @ds620_update_client(%struct.device* %16)
  store %struct.ds620_data* %17, %struct.ds620_data** %9, align 8
  %18 = load %struct.ds620_data*, %struct.ds620_data** %9, align 8
  %19 = call i64 @IS_ERR(%struct.ds620_data* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.ds620_data*, %struct.ds620_data** %9, align 8
  %23 = call i32 @PTR_ERR(%struct.ds620_data* %22)
  store i32 %23, i32* %4, align 4
  br label %68

24:                                               ; preds = %3
  %25 = load %struct.ds620_data*, %struct.ds620_data** %9, align 8
  %26 = getelementptr inbounds %struct.ds620_data, %struct.ds620_data* %25, i32 0, i32 0
  %27 = load %struct.i2c_client*, %struct.i2c_client** %26, align 8
  store %struct.i2c_client* %27, %struct.i2c_client** %10, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %29 = load i32, i32* @DS620_REG_CONF, align 4
  %30 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %4, align 4
  br label %68

35:                                               ; preds = %24
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %11, align 4
  store i32 %36, i32* %12, align 4
  %37 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %38 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %12, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %35
  %47 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %48 = load i32, i32* @DS620_REG_CONF, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %47, i32 %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %4, align 4
  br label %68

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %60 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @sprintf(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %56, %53, %33, %21
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.ds620_data* @ds620_update_client(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.ds620_data*) #1

declare dso_local i32 @PTR_ERR(%struct.ds620_data*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
