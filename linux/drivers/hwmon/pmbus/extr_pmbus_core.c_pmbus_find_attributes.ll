; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_find_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_find_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_data = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@voltage_attributes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"curr\00", align 1
@current_attributes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@power_attributes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@temp_attributes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.pmbus_data*)* @pmbus_find_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_find_attributes(%struct.i2c_client* %0, %struct.pmbus_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.pmbus_data*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.pmbus_data* %1, %struct.pmbus_data** %5, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %9 = load i32, i32* @voltage_attributes, align 4
  %10 = load i32, i32* @voltage_attributes, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = call i32 @pmbus_add_sensor_attrs(%struct.i2c_client* %7, %struct.pmbus_data* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %63

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %20 = load i32, i32* @current_attributes, align 4
  %21 = load i32, i32* @current_attributes, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = call i32 @pmbus_add_sensor_attrs(%struct.i2c_client* %18, %struct.pmbus_data* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %63

28:                                               ; preds = %17
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %31 = load i32, i32* @power_attributes, align 4
  %32 = load i32, i32* @power_attributes, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = call i32 @pmbus_add_sensor_attrs(%struct.i2c_client* %29, %struct.pmbus_data* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %63

39:                                               ; preds = %28
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %42 = load i32, i32* @temp_attributes, align 4
  %43 = load i32, i32* @temp_attributes, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = call i32 @pmbus_add_sensor_attrs(%struct.i2c_client* %40, %struct.pmbus_data* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %63

50:                                               ; preds = %39
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %53 = call i32 @pmbus_add_fan_attributes(%struct.i2c_client* %51, %struct.pmbus_data* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %63

58:                                               ; preds = %50
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %61 = call i32 @pmbus_add_samples_attributes(%struct.i2c_client* %59, %struct.pmbus_data* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %56, %48, %37, %26, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @pmbus_add_sensor_attrs(%struct.i2c_client*, %struct.pmbus_data*, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pmbus_add_fan_attributes(%struct.i2c_client*, %struct.pmbus_data*) #1

declare dso_local i32 @pmbus_add_samples_attributes(%struct.i2c_client*, %struct.pmbus_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
