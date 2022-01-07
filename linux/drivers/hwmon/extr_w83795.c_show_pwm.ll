; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_show_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_show_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83795_data = type { i32**, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@PWM_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.w83795_data*, align 8
  %8 = alloca %struct.sensor_device_attribute_2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %13 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %12)
  store %struct.sensor_device_attribute_2* %13, %struct.sensor_device_attribute_2** %8, align 8
  %14 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %15 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %18 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @PWM_OUTPUT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call %struct.w83795_data* @w83795_update_device(%struct.device* %24)
  br label %29

26:                                               ; preds = %3
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call %struct.w83795_data* @w83795_update_pwm_config(%struct.device* %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi %struct.w83795_data* [ %25, %23 ], [ %28, %26 ]
  store %struct.w83795_data* %30, %struct.w83795_data** %7, align 8
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %61 [
    i32 128, label %32
    i32 129, label %45
  ]

32:                                               ; preds = %29
  %33 = load %struct.w83795_data*, %struct.w83795_data** %7, align 8
  %34 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @time_from_reg(i32 %43)
  store i32 %44, i32* %11, align 4
  br label %73

45:                                               ; preds = %29
  %46 = load %struct.w83795_data*, %struct.w83795_data** %7, align 8
  %47 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.w83795_data*, %struct.w83795_data** %7, align 8
  %58 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @pwm_freq_from_reg(i32 %56, i32 %59)
  store i32 %60, i32* %11, align 4
  br label %73

61:                                               ; preds = %29
  %62 = load %struct.w83795_data*, %struct.w83795_data** %7, align 8
  %63 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %61, %45, %32
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @sprintf(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %75)
  ret i32 %76
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.w83795_data* @w83795_update_device(%struct.device*) #1

declare dso_local %struct.w83795_data* @w83795_update_pwm_config(%struct.device*) #1

declare dso_local i32 @time_from_reg(i32) #1

declare dso_local i32 @pwm_freq_from_reg(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
