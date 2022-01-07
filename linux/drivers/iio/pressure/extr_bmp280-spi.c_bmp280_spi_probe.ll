; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-spi.c_bmp280_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-spi.c_bmp280_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32 }
%struct.spi_device = type { i32, i32, i32 }
%struct.spi_device_id = type { i32, i32 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"spi_setup failed!\0A\00", align 1
@bmp180_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@bmp280_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@bmp280_regmap_bus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate register map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @bmp280_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp280_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.regmap_config*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %8)
  store %struct.spi_device_id* %9, %struct.spi_device_id** %4, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  store i32 8, i32* %11, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = call i32 @spi_setup(%struct.spi_device* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 2
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %60

21:                                               ; preds = %1
  %22 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %23 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %27 [
    i32 129, label %25
    i32 128, label %26
    i32 130, label %26
  ]

25:                                               ; preds = %21
  store %struct.regmap_config* @bmp180_regmap_config, %struct.regmap_config** %6, align 8
  br label %30

26:                                               ; preds = %21, %21
  store %struct.regmap_config* @bmp280_regmap_config, %struct.regmap_config** %6, align 8
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %60

30:                                               ; preds = %26, %25
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 2
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 2
  %35 = load %struct.regmap_config*, %struct.regmap_config** %6, align 8
  %36 = call %struct.regmap* @devm_regmap_init(i32* %32, i32* @bmp280_regmap_bus, i32* %34, %struct.regmap_config* %35)
  store %struct.regmap* %36, %struct.regmap** %5, align 8
  %37 = load %struct.regmap*, %struct.regmap** %5, align 8
  %38 = call i64 @IS_ERR(%struct.regmap* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 2
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.regmap*, %struct.regmap** %5, align 8
  %45 = call i32 @PTR_ERR(%struct.regmap* %44)
  store i32 %45, i32* %2, align 4
  br label %60

46:                                               ; preds = %30
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 2
  %49 = load %struct.regmap*, %struct.regmap** %5, align 8
  %50 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %51 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %54 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bmp280_common_probe(i32* %48, %struct.regmap* %49, i32 %52, i32 %55, i32 %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %46, %40, %27, %16
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.regmap* @devm_regmap_init(i32*, i32*, i32*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @bmp280_common_probe(i32*, %struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
