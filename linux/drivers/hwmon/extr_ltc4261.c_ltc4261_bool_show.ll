; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4261.c_ltc4261_bool_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4261.c_ltc4261_bool_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.ltc4261_data = type { i32*, i32 }

@LTC4261_FAULT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ltc4261_bool_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc4261_bool_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca %struct.ltc4261_data*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %12 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %11)
  store %struct.sensor_device_attribute* %12, %struct.sensor_device_attribute** %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.ltc4261_data* @ltc4261_update_device(%struct.device* %13)
  store %struct.ltc4261_data* %14, %struct.ltc4261_data** %9, align 8
  %15 = load %struct.ltc4261_data*, %struct.ltc4261_data** %9, align 8
  %16 = call i64 @IS_ERR(%struct.ltc4261_data* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.ltc4261_data*, %struct.ltc4261_data** %9, align 8
  %20 = call i32 @PTR_ERR(%struct.ltc4261_data* %19)
  store i32 %20, i32* %4, align 4
  br label %50

21:                                               ; preds = %3
  %22 = load %struct.ltc4261_data*, %struct.ltc4261_data** %9, align 8
  %23 = getelementptr inbounds %struct.ltc4261_data, %struct.ltc4261_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @LTC4261_FAULT, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %29 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %21
  %35 = load %struct.ltc4261_data*, %struct.ltc4261_data** %9, align 8
  %36 = getelementptr inbounds %struct.ltc4261_data, %struct.ltc4261_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* @LTC4261_FAULT, align 8
  %39 = load i32, i32* %10, align 4
  %40 = xor i32 %39, -1
  %41 = call i32 @i2c_smbus_write_byte_data(i32 %37, i64 %38, i32 %40)
  br label %42

42:                                               ; preds = %34, %21
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = call i32 @snprintf(i8* %43, i32 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %42, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.ltc4261_data* @ltc4261_update_device(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.ltc4261_data*) #1

declare dso_local i32 @PTR_ERR(%struct.ltc4261_data*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i64, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
