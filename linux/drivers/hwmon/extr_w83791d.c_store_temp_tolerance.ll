; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83791d.c_store_temp_tolerance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83791d.c_store_temp_tolerance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83791d_data = type { i64*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@W83791D_REG_TEMP_TOL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_tolerance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp_tolerance(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.w83791d_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %19)
  store %struct.sensor_device_attribute* %20, %struct.sensor_device_attribute** %10, align 8
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.i2c_client* @to_i2c_client(%struct.device* %21)
  store %struct.i2c_client* %22, %struct.i2c_client** %11, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %24 = call %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client* %23)
  store %struct.w83791d_data* %24, %struct.w83791d_data** %12, align 8
  %25 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %26 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @kstrtoul(i8* %28, i32 10, i64* %14)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %80

34:                                               ; preds = %4
  %35 = load i32, i32* %13, align 4
  switch i32 %35, label %39 [
    i32 0, label %36
    i32 1, label %37
    i32 2, label %38
  ]

36:                                               ; preds = %34
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 240, i64* %18, align 8
  br label %39

37:                                               ; preds = %34
  store i64 0, i64* %16, align 8
  store i64 4, i64* %17, align 8
  store i64 15, i64* %18, align 8
  br label %39

38:                                               ; preds = %34
  store i64 1, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 240, i64* %18, align 8
  br label %39

39:                                               ; preds = %34, %38, %37, %36
  %40 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %41 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load i64, i64* %14, align 8
  %44 = call i64 @TOL_TEMP_TO_REG(i64 %43)
  %45 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %46 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %44, i64* %50, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %52 = load i32*, i32** @W83791D_REG_TEMP_TOL, align 8
  %53 = load i64, i64* %16, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @w83791d_read(%struct.i2c_client* %51, i32 %55)
  %57 = load i64, i64* %18, align 8
  %58 = and i64 %56, %57
  store i64 %58, i64* %15, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %60 = load i32*, i32** @W83791D_REG_TEMP_TOL, align 8
  %61 = load i64, i64* %16, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %65 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %17, align 8
  %72 = shl i64 %70, %71
  %73 = load i64, i64* %15, align 8
  %74 = or i64 %72, %73
  %75 = call i32 @w83791d_write(%struct.i2c_client* %59, i32 %63, i64 %74)
  %76 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %77 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i64, i64* %9, align 8
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %39, %31
  %81 = load i64, i64* %5, align 8
  ret i64 %81
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @TOL_TEMP_TO_REG(i64) #1

declare dso_local i64 @w83791d_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83791d_write(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
