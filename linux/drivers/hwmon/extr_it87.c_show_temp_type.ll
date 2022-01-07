; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_show_temp_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_show_temp_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.it87_data = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"6\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"3\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"4\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_temp_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_temp_type(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.it87_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %13)
  store %struct.sensor_device_attribute* %14, %struct.sensor_device_attribute** %8, align 8
  %15 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %16 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.it87_data* @it87_update_device(%struct.device* %18)
  store %struct.it87_data* %19, %struct.it87_data** %10, align 8
  %20 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %21 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %24 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @has_temp_peci(%struct.it87_data* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  %32 = ashr i32 %31, 6
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %30, %3
  %37 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @has_temp_old_peci(%struct.it87_data* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* %12, align 4
  %43 = and i32 %42, 128
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %30
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %4, align 4
  br label %69

48:                                               ; preds = %41, %36
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 1, %50
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %56, i32* %4, align 4
  br label %69

57:                                               ; preds = %48
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = shl i32 8, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %65, i32* %4, align 4
  br label %69

66:                                               ; preds = %57
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @sprintf(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %63, %54, %45
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.it87_data* @it87_update_device(%struct.device*) #1

declare dso_local i64 @has_temp_peci(%struct.it87_data*, i32) #1

declare dso_local i64 @has_temp_old_peci(%struct.it87_data*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
