; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1668.c_set_temp_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1668.c_set_temp_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.max1668_data = type { i32, i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_temp_max(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.max1668_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.max1668_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.max1668_data* %20, %struct.max1668_data** %11, align 8
  %21 = load %struct.max1668_data*, %struct.max1668_data** %11, align 8
  %22 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %21, i32 0, i32 2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %22, align 8
  store %struct.i2c_client* %23, %struct.i2c_client** %12, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @kstrtol(i8* %24, i32 10, i64* %13)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %65

30:                                               ; preds = %4
  %31 = load %struct.max1668_data*, %struct.max1668_data** %11, align 8
  %32 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i64, i64* %13, align 8
  %35 = sdiv i64 %34, 1000
  %36 = call i32 @clamp_val(i64 %35, i32 -128, i32 127)
  %37 = load %struct.max1668_data*, %struct.max1668_data** %11, align 8
  %38 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @MAX1668_REG_LIMH_WR(i32 %44)
  %46 = load %struct.max1668_data*, %struct.max1668_data** %11, align 8
  %47 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %43, i32 %45, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %30
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %9, align 8
  br label %59

59:                                               ; preds = %56, %30
  %60 = load %struct.max1668_data*, %struct.max1668_data** %11, align 8
  %61 = getelementptr inbounds %struct.max1668_data, %struct.max1668_data* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i64, i64* %9, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %59, %28
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.max1668_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @MAX1668_REG_LIMH_WR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
