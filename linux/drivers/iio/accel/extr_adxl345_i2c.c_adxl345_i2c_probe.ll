; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl345_i2c.c_adxl345_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl345_i2c.c_adxl345_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32, i32 }
%struct.regmap = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@adxl345_i2c_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error initializing i2c regmap: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adxl345_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl345_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regmap*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %7 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %8 = icmp ne %struct.i2c_device_id* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %13, i32* @adxl345_i2c_regmap_config)
  store %struct.regmap* %14, %struct.regmap** %6, align 8
  %15 = load %struct.regmap*, %struct.regmap** %6, align 8
  %16 = call i64 @IS_ERR(%struct.regmap* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load %struct.regmap*, %struct.regmap** %6, align 8
  %22 = call i32 @PTR_ERR(%struct.regmap* %21)
  %23 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.regmap*, %struct.regmap** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.regmap* %24)
  store i32 %25, i32* %3, align 4
  br label %37

26:                                               ; preds = %12
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load %struct.regmap*, %struct.regmap** %6, align 8
  %30 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @adxl345_core_probe(i32* %28, %struct.regmap* %29, i32 %32, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %26, %18, %9
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @adxl345_core_probe(i32*, %struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
