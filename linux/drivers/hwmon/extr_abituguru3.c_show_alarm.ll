; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru3.c_show_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru3.c_show_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64, i32 }
%struct.abituguru3_data = type { i32*, i32**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_alarm(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sensor_device_attribute_2*, align 8
  %10 = alloca %struct.abituguru3_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %12 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %11)
  store %struct.sensor_device_attribute_2* %12, %struct.sensor_device_attribute_2** %9, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.abituguru3_data* @abituguru3_update_device(%struct.device* %13)
  store %struct.abituguru3_data* %14, %struct.abituguru3_data** %10, align 8
  %15 = load %struct.abituguru3_data*, %struct.abituguru3_data** %10, align 8
  %16 = icmp ne %struct.abituguru3_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %69

20:                                               ; preds = %3
  %21 = load %struct.abituguru3_data*, %struct.abituguru3_data** %10, align 8
  %22 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.abituguru3_data*, %struct.abituguru3_data** %10, align 8
  %31 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sdiv i32 %33, 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = srem i32 %38, 8
  %40 = shl i32 1, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %20
  %44 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %45 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.abituguru3_data*, %struct.abituguru3_data** %10, align 8
  %50 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %49, i32 0, i32 1
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %59 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %48, %43
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %65, i32* %4, align 4
  br label %69

66:                                               ; preds = %48, %20
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @sprintf(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %63, %17
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.abituguru3_data* @abituguru3_update_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
