; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_show_bank1_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_show_bank1_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64 }
%struct.abituguru_data = type { i32*, i32* }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_bank1_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_bank1_value(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute_2*, align 8
  %9 = alloca %struct.abituguru_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %11 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %10)
  store %struct.sensor_device_attribute_2* %11, %struct.sensor_device_attribute_2** %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.abituguru_data* @abituguru_update_device(%struct.device* %12)
  store %struct.abituguru_data* %13, %struct.abituguru_data** %9, align 8
  %14 = load %struct.abituguru_data*, %struct.abituguru_data** %9, align 8
  %15 = icmp ne %struct.abituguru_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %41

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.abituguru_data*, %struct.abituguru_data** %9, align 8
  %22 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.abituguru_data*, %struct.abituguru_data** %9, align 8
  %30 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %33 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %28, %36
  %38 = add nsw i32 %37, 128
  %39 = sdiv i32 %38, 255
  %40 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %19, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.abituguru_data* @abituguru_update_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
