; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_tach_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_tach_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adt7475_data = type { i32, i32** }
%struct.sensor_device_attribute_2 = type { i64, i32 }

@ALARM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @tach_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tach_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.adt7475_data*, align 8
  %9 = alloca %struct.sensor_device_attribute_2*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.adt7475_data* @adt7475_update_device(%struct.device* %11)
  store %struct.adt7475_data* %12, %struct.adt7475_data** %8, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %13)
  store %struct.sensor_device_attribute_2* %14, %struct.sensor_device_attribute_2** %9, align 8
  %15 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %16 = call i64 @IS_ERR(%struct.adt7475_data* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.adt7475_data* %19)
  store i32 %20, i32* %4, align 4
  br label %57

21:                                               ; preds = %3
  %22 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ALARM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %29 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %32 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 10
  %35 = ashr i32 %30, %34
  %36 = and i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %53

37:                                               ; preds = %21
  %38 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %39 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %38, i32 0, i32 1
  %40 = load i32**, i32*** %39, align 8
  %41 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %42 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32*, i32** %40, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %47 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @tach2rpm(i32 %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %37, %27
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %18
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.adt7475_data* @adt7475_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @IS_ERR(%struct.adt7475_data*) #1

declare dso_local i32 @PTR_ERR(%struct.adt7475_data*) #1

declare dso_local i32 @tach2rpm(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
