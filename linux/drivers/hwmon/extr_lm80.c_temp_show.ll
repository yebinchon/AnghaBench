; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm80.c_temp_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm80.c_temp_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.lm80_data = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @temp_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca %struct.lm80_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %11 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %10)
  store %struct.sensor_device_attribute* %11, %struct.sensor_device_attribute** %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.lm80_data* @lm80_update_device(%struct.device* %12)
  store %struct.lm80_data* %13, %struct.lm80_data** %9, align 8
  %14 = load %struct.lm80_data*, %struct.lm80_data** %9, align 8
  %15 = call i64 @IS_ERR(%struct.lm80_data* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.lm80_data*, %struct.lm80_data** %9, align 8
  %19 = call i32 @PTR_ERR(%struct.lm80_data* %18)
  store i32 %19, i32* %4, align 4
  br label %32

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.lm80_data*, %struct.lm80_data** %9, align 8
  %23 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %26 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @TEMP_FROM_REG(i32 %29)
  %31 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %20, %17
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm80_data* @lm80_update_device(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.lm80_data*) #1

declare dso_local i32 @PTR_ERR(%struct.lm80_data*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @TEMP_FROM_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
