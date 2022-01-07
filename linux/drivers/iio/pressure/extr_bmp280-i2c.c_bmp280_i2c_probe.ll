; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-i2c.c_bmp280_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-i2c.c_bmp280_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32, i32 }
%struct.regmap = type { i32 }

@bmp180_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@bmp280_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to allocate register map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bmp280_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp280_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.regmap_config*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %9 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %13 [
    i32 129, label %11
    i32 128, label %12
    i32 130, label %12
  ]

11:                                               ; preds = %2
  store %struct.regmap_config* @bmp180_regmap_config, %struct.regmap_config** %7, align 8
  br label %16

12:                                               ; preds = %2, %2
  store %struct.regmap_config* @bmp280_regmap_config, %struct.regmap_config** %7, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %12, %11
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %19 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %17, %struct.regmap_config* %18)
  store %struct.regmap* %19, %struct.regmap** %6, align 8
  %20 = load %struct.regmap*, %struct.regmap** %6, align 8
  %21 = call i64 @IS_ERR(%struct.regmap* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.regmap*, %struct.regmap** %6, align 8
  %28 = call i32 @PTR_ERR(%struct.regmap* %27)
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %16
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = load %struct.regmap*, %struct.regmap** %6, align 8
  %33 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bmp280_common_probe(i32* %31, %struct.regmap* %32, i32 %35, i32 %38, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %29, %23, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @bmp280_common_probe(i32*, %struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
