; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_read_press.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_read_press.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bme680_data = type { i32 }
%struct.device = type { i32 }

@BME680_REG_PRESS_MSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to read pressure\0A\00", align 1
@BME680_MEAS_SKIPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"reading pressure skipped\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bme680_data*, i32*, i32*)* @bme680_read_press to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_read_press(%struct.bme680_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bme680_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.bme680_data* %0, %struct.bme680_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.bme680_data*, %struct.bme680_data** %5, align 8
  %13 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.device* @regmap_get_device(i32 %14)
  store %struct.device* %15, %struct.device** %8, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.bme680_data*, %struct.bme680_data** %5, align 8
  %17 = call i32 @bme680_read_temp(%struct.bme680_data* %16, i32* null)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %54

22:                                               ; preds = %3
  %23 = load %struct.bme680_data*, %struct.bme680_data** %5, align 8
  %24 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BME680_REG_PRESS_MSB, align 4
  %27 = bitcast i64* %10 to i32*
  %28 = call i32 @regmap_bulk_read(i32 %25, i32 %26, i32* %27, i32 3)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %54

35:                                               ; preds = %22
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @be32_to_cpu(i64 %36)
  %38 = ashr i32 %37, 12
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @BME680_MEAS_SKIPPED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %54

47:                                               ; preds = %35
  %48 = load %struct.bme680_data*, %struct.bme680_data** %5, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @bme680_compensate_press(%struct.bme680_data* %48, i32 %49)
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 100, i32* %52, align 4
  %53 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %47, %42, %31, %20
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @bme680_read_temp(%struct.bme680_data*, i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @bme680_compensate_press(%struct.bme680_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
