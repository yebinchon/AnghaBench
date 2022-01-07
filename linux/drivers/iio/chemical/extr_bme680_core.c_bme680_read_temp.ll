; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bme680_data = type { i32 }
%struct.device = type { i32 }

@BME680_REG_TEMP_MSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to read temperature\0A\00", align 1
@BME680_MEAS_SKIPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"reading temperature skipped\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bme680_data*, i32*)* @bme680_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_read_temp(%struct.bme680_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bme680_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bme680_data* %0, %struct.bme680_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %12 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.device* @regmap_get_device(i32 %13)
  store %struct.device* %14, %struct.device** %6, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %16 = call i32 @bme680_set_mode(%struct.bme680_data* %15, i32 1)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %59

21:                                               ; preds = %2
  %22 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %23 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BME680_REG_TEMP_MSB, align 4
  %26 = bitcast i64* %8 to i32*
  %27 = call i32 @regmap_bulk_read(i32 %24, i32 %25, i32* %26, i32 3)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %59

34:                                               ; preds = %21
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @be32_to_cpu(i64 %35)
  %37 = ashr i32 %36, 12
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @BME680_MEAS_SKIPPED, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %59

46:                                               ; preds = %34
  %47 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @bme680_compensate_temp(%struct.bme680_data* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 %53, 10
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %52, %41, %30, %19
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @bme680_set_mode(%struct.bme680_data*, i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @bme680_compensate_temp(%struct.bme680_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
