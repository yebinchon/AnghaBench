; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_store_sf2_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_store_sf2_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.w83792d_data = type { i32**, i32 }

@W83792D_REG_LEVELS = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_sf2_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_sf2_level(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca %struct.w83792d_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %19)
  store %struct.sensor_device_attribute_2* %20, %struct.sensor_device_attribute_2** %10, align 8
  %21 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %12, align 4
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call %struct.i2c_client* @to_i2c_client(%struct.device* %28)
  store %struct.i2c_client* %29, %struct.i2c_client** %13, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %31 = call %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client* %30)
  store %struct.w83792d_data* %31, %struct.w83792d_data** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @kstrtoul(i8* %32, i32 10, i64* %17)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %18, align 4
  store i32 %37, i32* %5, align 4
  br label %119

38:                                               ; preds = %4
  %39 = load %struct.w83792d_data*, %struct.w83792d_data** %14, align 8
  %40 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load i64, i64* %17, align 8
  %43 = mul i64 %42, 15
  %44 = udiv i64 %43, 100
  %45 = call i32 @clamp_val(i64 %44, i32 0, i32 15)
  %46 = load %struct.w83792d_data*, %struct.w83792d_data** %14, align 8
  %47 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %45, i32* %55, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %57 = load i32**, i32*** @W83792D_REG_LEVELS, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @w83792d_read_value(%struct.i2c_client* %56, i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %67, 3
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 240, i32 15
  %71 = and i32 %66, %70
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %86

74:                                               ; preds = %38
  %75 = load %struct.w83792d_data*, %struct.w83792d_data** %14, align 8
  %76 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %75, i32 0, i32 0
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %16, align 4
  br label %99

86:                                               ; preds = %38
  %87 = load %struct.w83792d_data*, %struct.w83792d_data** %14, align 8
  %88 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %87, i32 0, i32 0
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 4
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %86, %74
  %100 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %101 = load i32**, i32*** @W83792D_REG_LEVELS, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %15, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @w83792d_write_value(%struct.i2c_client* %100, i32 %109, i32 %112)
  %114 = load %struct.w83792d_data*, %struct.w83792d_data** %14, align 8
  %115 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %114, i32 0, i32 1
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load i64, i64* %9, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %99, %36
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @w83792d_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83792d_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
