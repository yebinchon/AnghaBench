; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_show_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_show_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }
%struct.w83793_data = type { i32, i32** }

@TEMP_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sensor_device_attribute_2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.w83793_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %14 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %13)
  store %struct.sensor_device_attribute_2* %14, %struct.sensor_device_attribute_2** %7, align 8
  %15 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %7, align 8
  %16 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %7, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call %struct.w83793_data* @w83793_update_device(%struct.device* %21)
  store %struct.w83793_data* %22, %struct.w83793_data** %10, align 8
  %23 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %24 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @TEMP_FROM_REG(i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @TEMP_READ, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %3
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %43 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 2
  %47 = ashr i32 %44, %46
  %48 = and i32 %47, 3
  %49 = mul nsw i32 %48, 250
  store i32 %49, i32* %12, align 4
  %50 = load i64, i64* %11, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* %12, align 4
  br label %57

54:                                               ; preds = %41
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 0, %55
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi i32 [ %53, %52 ], [ %56, %54 ]
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %11, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %11, align 8
  br label %62

62:                                               ; preds = %57, %38, %3
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %64)
  ret i32 %65
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.w83793_data* @w83793_update_device(%struct.device*) #1

declare dso_local i64 @TEMP_FROM_REG(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
