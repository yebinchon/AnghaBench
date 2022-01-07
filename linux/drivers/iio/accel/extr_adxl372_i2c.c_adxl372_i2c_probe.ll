; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372_i2c.c_adxl372_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372_i2c.c_adxl372_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.regmap = type { i32 }

@adxl372_regmap_config = common dso_local global i32 0, align 4
@ADXL372_REVID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"I2C might not work properly with other devices on the bus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adxl372_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl372_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %9, i32* @adxl372_regmap_config)
  store %struct.regmap* %10, %struct.regmap** %6, align 8
  %11 = load %struct.regmap*, %struct.regmap** %6, align 8
  %12 = call i64 @IS_ERR(%struct.regmap* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.regmap*, %struct.regmap** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.regmap* %15)
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.regmap*, %struct.regmap** %6, align 8
  %19 = load i32, i32* @ADXL372_REVID, align 4
  %20 = call i32 @regmap_read(%struct.regmap* %18, i32 %19, i32* %7)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = call i32 @dev_warn(i32* %30, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = load %struct.regmap*, %struct.regmap** %6, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %40 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @adxl372_probe(i32* %34, %struct.regmap* %35, i32 %38, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %32, %23, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @adxl372_probe(i32*, %struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
