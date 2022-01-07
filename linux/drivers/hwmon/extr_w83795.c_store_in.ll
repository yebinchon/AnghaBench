; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.w83795_data = type { i32, i32**, i32**, i32 }

@EINVAL = common dso_local global i64 0, align 8
@IN_LSB_SHIFT_IDX = common dso_local global i32** null, align 8
@IN_LSB_IDX = common dso_local global i64 0, align 8
@IN_LSB_SHIFT = common dso_local global i64 0, align 8
@W83795_REG_IN = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_in(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca %struct.w83795_data*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute_2* %19, %struct.sensor_device_attribute_2** %10, align 8
  %20 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call %struct.i2c_client* @to_i2c_client(%struct.device* %26)
  store %struct.i2c_client* %27, %struct.i2c_client** %13, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %29 = call %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client* %28)
  store %struct.w83795_data* %29, %struct.w83795_data** %14, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @kstrtoul(i8* %30, i32 10, i64* %15)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %149

36:                                               ; preds = %4
  %37 = load i32, i32* %12, align 4
  %38 = load i64, i64* %15, align 8
  %39 = call i64 @in_to_reg(i32 %37, i64 %38)
  store i64 %39, i64* %15, align 8
  %40 = load i32, i32* %12, align 4
  %41 = icmp sge i32 %40, 17
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.w83795_data*, %struct.w83795_data** %14, align 8
  %44 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sub nsw i32 %46, 17
  %48 = ashr i32 %45, %47
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i64, i64* %15, align 8
  %53 = udiv i64 %52, 8
  store i64 %53, i64* %15, align 8
  br label %54

54:                                               ; preds = %51, %42, %36
  %55 = load i64, i64* %15, align 8
  %56 = call i64 @clamp_val(i64 %55, i32 0, i32 1023)
  store i64 %56, i64* %15, align 8
  %57 = load %struct.w83795_data*, %struct.w83795_data** %14, align 8
  %58 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %57, i32 0, i32 3
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load i32**, i32*** @IN_LSB_SHIFT_IDX, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @IN_LSB_IDX, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %17, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @IN_LSB_REG(i32 %69, i32 %70)
  %72 = call i32 @w83795_read(%struct.i2c_client* %68, i32 %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32**, i32*** @IN_LSB_SHIFT_IDX, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @IN_LSB_SHIFT, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 3, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %16, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %16, align 4
  %85 = load i64, i64* %15, align 8
  %86 = and i64 %85, 3
  %87 = load i32**, i32*** @IN_LSB_SHIFT_IDX, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @IN_LSB_SHIFT, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  %96 = shl i64 %86, %95
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = or i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %16, align 4
  %101 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @IN_LSB_REG(i32 %102, i32 %103)
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @w83795_write(%struct.i2c_client* %101, i32 %104, i32 %105)
  %107 = load i32, i32* %16, align 4
  %108 = load %struct.w83795_data*, %struct.w83795_data** %14, align 8
  %109 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %108, i32 0, i32 1
  %110 = load i32**, i32*** %109, align 8
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %107, i32* %117, align 4
  %118 = load i64, i64* %15, align 8
  %119 = lshr i64 %118, 2
  %120 = and i64 %119, 255
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %16, align 4
  %122 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %123 = load i32**, i32*** @W83795_REG_IN, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @w83795_write(%struct.i2c_client* %122, i32 %131, i32 %132)
  %134 = load i32, i32* %16, align 4
  %135 = load %struct.w83795_data*, %struct.w83795_data** %14, align 8
  %136 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %135, i32 0, i32 2
  %137 = load i32**, i32*** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %134, i32* %144, align 4
  %145 = load %struct.w83795_data*, %struct.w83795_data** %14, align 8
  %146 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %145, i32 0, i32 3
  %147 = call i32 @mutex_unlock(i32* %146)
  %148 = load i64, i64* %9, align 8
  store i64 %148, i64* %5, align 8
  br label %149

149:                                              ; preds = %54, %33
  %150 = load i64, i64* %5, align 8
  ret i64 %150
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @in_to_reg(i32, i64) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83795_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @IN_LSB_REG(i32, i32) #1

declare dso_local i32 @w83795_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
