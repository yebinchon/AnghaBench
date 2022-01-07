; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_set_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_set_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.pmbus_data = type { i32 }
%struct.pmbus_sensor = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pmbus_set_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_set_sensor(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.pmbus_data*, align 8
  %12 = alloca %struct.pmbus_sensor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.i2c_client* @to_i2c_client(i32 %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %10, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %22 = call %struct.pmbus_data* @i2c_get_clientdata(%struct.i2c_client* %21)
  store %struct.pmbus_data* %22, %struct.pmbus_data** %11, align 8
  %23 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %24 = call %struct.pmbus_sensor* @to_pmbus_sensor(%struct.device_attribute* %23)
  store %struct.pmbus_sensor* %24, %struct.pmbus_sensor** %12, align 8
  %25 = load i64, i64* %9, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @kstrtol(i8* %27, i32 10, i64* %14)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %63

33:                                               ; preds = %4
  %34 = load %struct.pmbus_data*, %struct.pmbus_data** %11, align 8
  %35 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.pmbus_data*, %struct.pmbus_data** %11, align 8
  %38 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %12, align 8
  %39 = load i64, i64* %14, align 8
  %40 = call i32 @pmbus_data2reg(%struct.pmbus_data* %37, %struct.pmbus_sensor* %38, i64 %39)
  store i32 %40, i32* %16, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %42 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %12, align 8
  %43 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %12, align 8
  %46 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @_pmbus_write_word_data(%struct.i2c_client* %41, i32 %44, i32 %47, i32 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %33
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %13, align 4
  br label %58

54:                                               ; preds = %33
  %55 = load i32, i32* %16, align 4
  %56 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %12, align 8
  %57 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %52
  %59 = load %struct.pmbus_data*, %struct.pmbus_data** %11, align 8
  %60 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %58, %30
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local %struct.pmbus_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.pmbus_sensor* @to_pmbus_sensor(%struct.device_attribute*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pmbus_data2reg(%struct.pmbus_data*, %struct.pmbus_sensor*, i64) #1

declare dso_local i32 @_pmbus_write_word_data(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
