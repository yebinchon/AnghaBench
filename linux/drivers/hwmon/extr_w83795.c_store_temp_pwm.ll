; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_temp_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_temp_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83795_data = type { i64**, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.w83795_data*, align 8
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
  %20 = call %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.w83795_data* %20, %struct.w83795_data** %11, align 8
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
  %30 = call i64 @kstrtoul(i8* %29, i32 10, i64* %15)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %117

35:                                               ; preds = %4
  %36 = load i64, i64* %15, align 8
  %37 = udiv i64 %36, 1000
  store i64 %37, i64* %15, align 8
  %38 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %39 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load i32, i32* %13, align 4
  switch i32 %41, label %101 [
    i32 128, label %42
    i32 131, label %51
    i32 130, label %60
    i32 129, label %81
  ]

42:                                               ; preds = %35
  %43 = load i64, i64* %15, align 8
  %44 = call i64 @clamp_val(i64 %43, i32 0, i32 127)
  store i64 %44, i64* %15, align 8
  %45 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @W83795_REG_TTTI(i32 %46)
  %48 = load i64, i64* %15, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @w83795_write(%struct.i2c_client* %45, i32 %47, i32 %49)
  br label %101

51:                                               ; preds = %35
  %52 = load i64, i64* %15, align 8
  %53 = call i64 @clamp_val(i64 %52, i32 0, i32 127)
  store i64 %53, i64* %15, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @W83795_REG_CTFS(i32 %55)
  %57 = load i64, i64* %15, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @w83795_write(%struct.i2c_client* %54, i32 %56, i32 %58)
  br label %101

60:                                               ; preds = %35
  %61 = load i64, i64* %15, align 8
  %62 = call i64 @clamp_val(i64 %61, i32 0, i32 15)
  store i64 %62, i64* %15, align 8
  %63 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @W83795_REG_HT(i32 %64)
  %66 = call i32 @w83795_read(%struct.i2c_client* %63, i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = and i32 %67, 15
  store i32 %68, i32* %16, align 4
  %69 = load i64, i64* %15, align 8
  %70 = shl i64 %69, 4
  %71 = and i64 %70, 240
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = or i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %16, align 4
  %76 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @W83795_REG_HT(i32 %77)
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @w83795_write(%struct.i2c_client* %76, i32 %78, i32 %79)
  br label %101

81:                                               ; preds = %35
  %82 = load i64, i64* %15, align 8
  %83 = call i64 @clamp_val(i64 %82, i32 0, i32 15)
  store i64 %83, i64* %15, align 8
  %84 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @W83795_REG_HT(i32 %85)
  %87 = call i32 @w83795_read(%struct.i2c_client* %84, i32 %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = and i32 %88, 240
  store i32 %89, i32* %16, align 4
  %90 = load i64, i64* %15, align 8
  %91 = and i64 %90, 15
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = or i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %16, align 4
  %96 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @W83795_REG_HT(i32 %97)
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @w83795_write(%struct.i2c_client* %96, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %35, %81, %60, %51, %42
  %102 = load i64, i64* %15, align 8
  %103 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %104 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %103, i32 0, i32 0
  %105 = load i64**, i64*** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64*, i64** %105, i64 %107
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64 %102, i64* %112, align 8
  %113 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %114 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %113, i32 0, i32 1
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load i64, i64* %9, align 8
  store i64 %116, i64* %5, align 8
  br label %117

117:                                              ; preds = %101, %32
  %118 = load i64, i64* %5, align 8
  ret i64 %118
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @w83795_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @W83795_REG_TTTI(i32) #1

declare dso_local i32 @W83795_REG_CTFS(i32) #1

declare dso_local i32 @w83795_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @W83795_REG_HT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
