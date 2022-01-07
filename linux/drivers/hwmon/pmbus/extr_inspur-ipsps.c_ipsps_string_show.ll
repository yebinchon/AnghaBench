; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_inspur-ipsps.c_ipsps_string_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_inspur-ipsps.c_ipsps_string_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.sensor_device_attribute = type { i64 }

@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@ipsps_regs = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ipsps_string_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipsps_string_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca %struct.sensor_device_attribute*, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.i2c_client* @to_i2c_client(i32 %23)
  store %struct.i2c_client* %24, %struct.i2c_client** %13, align 8
  %25 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %26 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %25)
  store %struct.sensor_device_attribute* %26, %struct.sensor_device_attribute** %14, align 8
  %27 = load i32*, i32** @ipsps_regs, align 8
  %28 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %14, align 8
  %29 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @i2c_smbus_read_block_data(%struct.i2c_client* %33, i32 %34, i8* %20)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %47

40:                                               ; preds = %3
  %41 = load i32, i32* %9, align 4
  %42 = call i8* @memscan(i8* %20, i8 signext 35, i32 %41)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = call i32 @snprintf(i8* %44, i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %47

47:                                               ; preds = %40, %38
  %48 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #2

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #2

declare dso_local i32 @i2c_smbus_read_block_data(%struct.i2c_client*, i32, i8*) #2

declare dso_local i8* @memscan(i8*, i8 signext, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
