; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_i5k_amb.c_store_amb_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_i5k_amb.c_store_amb_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i5k_amb_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_amb_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_amb_max(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.i5k_amb_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %15 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute* %15, %struct.sensor_device_attribute** %10, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.i5k_amb_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.i5k_amb_data* %17, %struct.i5k_amb_data** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtoul(i8* %18, i32 10, i64* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %40

24:                                               ; preds = %4
  %25 = load i64, i64* %12, align 8
  %26 = udiv i64 %25, 500
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp ugt i64 %27, 255
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i64 255, i64* %12, align 8
  br label %30

30:                                               ; preds = %29, %24
  %31 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %32 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %33 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @amb_reg_temp_max(i32 %34)
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @amb_write_byte(%struct.i5k_amb_data* %31, i32 %35, i64 %36)
  %38 = load i64, i64* %9, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %30, %22
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i5k_amb_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @amb_write_byte(%struct.i5k_amb_data*, i32, i64) #1

declare dso_local i32 @amb_reg_temp_max(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
