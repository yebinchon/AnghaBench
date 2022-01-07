; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_point2_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_point2_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adt7475_data = type { i32*, i32, i32** }
%struct.sensor_device_attribute_2 = type { i64 }

@AUTOMIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@autorange_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @point2_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @point2_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.adt7475_data*, align 8
  %9 = alloca %struct.sensor_device_attribute_2*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.adt7475_data* @adt7475_update_device(%struct.device* %12)
  store %struct.adt7475_data* %13, %struct.adt7475_data** %8, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute_2* %15, %struct.sensor_device_attribute_2** %9, align 8
  %16 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %17 = call i64 @IS_ERR(%struct.adt7475_data* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %21 = call i32 @PTR_ERR(%struct.adt7475_data* %20)
  store i32 %21, i32* %4, align 4
  br label %61

22:                                               ; preds = %3
  %23 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %24 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %27 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %30 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 4
  %35 = and i32 %34, 15
  store i32 %35, i32* %10, align 4
  %36 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %37 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %38 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %37, i32 0, i32 2
  %39 = load i32**, i32*** %38, align 8
  %40 = load i64, i64* @AUTOMIN, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %44 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @reg2temp(%struct.adt7475_data* %36, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.adt7475_data*, %struct.adt7475_data** %8, align 8
  %50 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** @autorange_table, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %53, %58
  %60 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %22, %19
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.adt7475_data* @adt7475_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @IS_ERR(%struct.adt7475_data*) #1

declare dso_local i32 @PTR_ERR(%struct.adt7475_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reg2temp(%struct.adt7475_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
