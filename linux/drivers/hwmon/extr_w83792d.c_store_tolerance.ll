; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_store_tolerance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_store_tolerance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83792d_data = type { i32*, i32 }

@W83792D_REG_TOLERANCE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_tolerance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_tolerance(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.w83792d_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute* %19, %struct.sensor_device_attribute** %10, align 8
  %20 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %11, align 4
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call %struct.i2c_client* @to_i2c_client(%struct.device* %24)
  store %struct.i2c_client* %25, %struct.i2c_client** %12, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %27 = call %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client* %26)
  store %struct.w83792d_data* %27, %struct.w83792d_data** %13, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @kstrtoul(i8* %28, i32 10, i64* %16)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %17, align 4
  store i32 %33, i32* %5, align 4
  br label %82

34:                                               ; preds = %4
  %35 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %36 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %39 = load i32*, i32** @W83792D_REG_TOLERANCE, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @w83792d_read_value(%struct.i2c_client* %38, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 1
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 15, i32 240
  %49 = and i32 %44, %48
  store i32 %49, i32* %15, align 4
  %50 = load i64, i64* %16, align 8
  %51 = call i32 @clamp_val(i64 %50, i32 0, i32 15)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = and i32 %52, 15
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %56 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %34
  %64 = load i32, i32* %14, align 4
  %65 = shl i32 %64, 4
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %63, %34
  %67 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %68 = load i32*, i32** @W83792D_REG_TOLERANCE, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %14, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @w83792d_write_value(%struct.i2c_client* %67, i32 %72, i32 %75)
  %77 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %78 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i64, i64* %9, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %66, %32
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83792d_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @w83792d_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
