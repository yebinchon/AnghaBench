; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_inspur-ipsps.c_ipsps_mode_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_inspur-ipsps.c_ipsps_mode_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.sensor_device_attribute = type { i64 }

@ipsps_regs = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"[%s] %s %s\0A\00", align 1
@MODE_ACTIVE_STRING = common dso_local global i8* null, align 8
@MODE_STANDBY_STRING = common dso_local global i8* null, align 8
@MODE_REDUNDANCY_STRING = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%s [%s] %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s %s [%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"unspecified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ipsps_mode_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipsps_mode_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.i2c_client* @to_i2c_client(i32 %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %11, align 8
  %18 = load i32*, i32** @ipsps_regs, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %58

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %54 [
    i32 130, label %33
    i32 128, label %40
    i32 129, label %47
  ]

33:                                               ; preds = %31
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = load i8*, i8** @MODE_ACTIVE_STRING, align 8
  %37 = load i8*, i8** @MODE_STANDBY_STRING, align 8
  %38 = load i8*, i8** @MODE_REDUNDANCY_STRING, align 8
  %39 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %37, i8* %38)
  store i32 %39, i32* %4, align 4
  br label %58

40:                                               ; preds = %31
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = load i8*, i8** @MODE_ACTIVE_STRING, align 8
  %44 = load i8*, i8** @MODE_STANDBY_STRING, align 8
  %45 = load i8*, i8** @MODE_REDUNDANCY_STRING, align 8
  %46 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %41, i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %44, i8* %45)
  store i32 %46, i32* %4, align 4
  br label %58

47:                                               ; preds = %31
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = load i8*, i8** @MODE_ACTIVE_STRING, align 8
  %51 = load i8*, i8** @MODE_STANDBY_STRING, align 8
  %52 = load i8*, i8** @MODE_REDUNDANCY_STRING, align 8
  %53 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %48, i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %50, i8* %51, i8* %52)
  store i32 %53, i32* %4, align 4
  br label %58

54:                                               ; preds = %31
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %55, i32 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %47, %40, %33, %29
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
