; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_read_humid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_read_humid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bme680_data = type { i32 }
%struct.device = type { i32 }

@BM6880_REG_HUMIDITY_MSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to read humidity\0A\00", align 1
@BME680_MEAS_SKIPPED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"reading humidity skipped\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bme680_data*, i32*, i32*)* @bme680_read_humid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_read_humid(%struct.bme680_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bme680_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.bme680_data* %0, %struct.bme680_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.bme680_data*, %struct.bme680_data** %5, align 8
  %14 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.device* @regmap_get_device(i32 %15)
  store %struct.device* %16, %struct.device** %8, align 8
  store i64 0, i64* %10, align 8
  %17 = load %struct.bme680_data*, %struct.bme680_data** %5, align 8
  %18 = call i32 @bme680_read_temp(%struct.bme680_data* %17, i32* null)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %55

23:                                               ; preds = %3
  %24 = load %struct.bme680_data*, %struct.bme680_data** %5, align 8
  %25 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BM6880_REG_HUMIDITY_MSB, align 4
  %28 = bitcast i64* %10 to i32*
  %29 = call i32 @regmap_bulk_read(i32 %26, i32 %27, i32* %28, i32 2)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %55

36:                                               ; preds = %23
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @be16_to_cpu(i64 %37)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @BME680_MEAS_SKIPPED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %55

47:                                               ; preds = %36
  %48 = load %struct.bme680_data*, %struct.bme680_data** %5, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @bme680_compensate_humid(%struct.bme680_data* %48, i64 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 1000, i32* %53, align 4
  %54 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %47, %42, %32, %21
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @bme680_read_temp(%struct.bme680_data*, i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local i32 @bme680_compensate_humid(%struct.bme680_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
