; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl345_spi.c_adxl345_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl345_spi.c_adxl345_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32 }
%struct.spi_device_id = type { i32, i32 }
%struct.regmap = type { i32 }

@ADXL345_MAX_SPI_FREQ_HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"SPI CLK, %d Hz exceeds 5 MHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@adxl345_spi_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error initializing spi regmap: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adxl345_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl345_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  %5 = alloca %struct.regmap*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %6)
  store %struct.spi_device_id* %7, %struct.spi_device_id** %4, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ADXL345_MAX_SPI_FREQ_HZ, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %1
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = call %struct.regmap* @devm_regmap_init_spi(%struct.spi_device* %24, i32* @adxl345_spi_regmap_config)
  store %struct.regmap* %25, %struct.regmap** %5, align 8
  %26 = load %struct.regmap*, %struct.regmap** %5, align 8
  %27 = call i64 @IS_ERR(%struct.regmap* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 1
  %32 = load %struct.regmap*, %struct.regmap** %5, align 8
  %33 = call i32 @PTR_ERR(%struct.regmap* %32)
  %34 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.regmap*, %struct.regmap** %5, align 8
  %36 = call i32 @PTR_ERR(%struct.regmap* %35)
  store i32 %36, i32* %2, align 4
  br label %48

37:                                               ; preds = %23
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 1
  %40 = load %struct.regmap*, %struct.regmap** %5, align 8
  %41 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %42 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %45 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @adxl345_core_probe(i32* %39, %struct.regmap* %40, i32 %43, i32 %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %37, %29, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.regmap* @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @adxl345_core_probe(i32*, %struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
