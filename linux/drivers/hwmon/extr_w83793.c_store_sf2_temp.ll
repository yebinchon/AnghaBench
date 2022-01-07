; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_store_sf2_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_store_sf2_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83793_data = type { i32**, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_sf2_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_sf2_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.w83793_data*, align 8
  %12 = alloca %struct.sensor_device_attribute_2*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %20 = call %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.w83793_data* %20, %struct.w83793_data** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %21)
  store %struct.sensor_device_attribute_2* %22, %struct.sensor_device_attribute_2** %12, align 8
  %23 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %27 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @kstrtol(i8* %29, i32 10, i64* %15)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %5, align 4
  br label %94

35:                                               ; preds = %4
  %36 = load i64, i64* %15, align 8
  %37 = call i64 @TEMP_TO_REG(i64 %36, i32 0, i32 127)
  store i64 %37, i64* %15, align 8
  %38 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %39 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @W83793_REG_SF2_TEMP(i32 %42, i32 %43)
  %45 = call i32 @w83793_read_value(%struct.i2c_client* %41, i32 %44)
  %46 = and i32 %45, 128
  %47 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %48 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %47, i32 0, i32 0
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %46, i32* %56, align 4
  %57 = load i64, i64* %15, align 8
  %58 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %59 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = or i64 %69, %57
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  %72 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @W83793_REG_SF2_TEMP(i32 %73, i32 %74)
  %76 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %77 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = call i32 @w83793_write_value(%struct.i2c_client* %72, i32 %75, i64 %87)
  %89 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %90 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i64, i64* %9, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %35, %33
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @TEMP_TO_REG(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83793_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @W83793_REG_SF2_TEMP(i32, i32) #1

declare dso_local i32 @w83793_write_value(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
