; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_chip_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_chip_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bme680_data = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@BME680_OSRS_HUMIDITY_MASK = common dso_local global i32 0, align 4
@BME680_REG_CTRL_HUMIDITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to write ctrl_hum register\0A\00", align 1
@BME680_REG_CONFIG = common dso_local global i32 0, align 4
@BME680_FILTER_MASK = common dso_local global i32 0, align 4
@BME680_FILTER_COEFF_VAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to write config register\0A\00", align 1
@BME680_OSRS_TEMP_MASK = common dso_local global i32 0, align 4
@BME680_OSRS_PRESS_MASK = common dso_local global i32 0, align 4
@BME680_REG_CTRL_MEAS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to write ctrl_meas register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bme680_data*)* @bme680_chip_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_chip_config(%struct.bme680_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bme680_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bme680_data* %0, %struct.bme680_data** %3, align 8
  %7 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %8 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.device* @regmap_get_device(i32 %9)
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load i32, i32* @BME680_OSRS_HUMIDITY_MASK, align 4
  %12 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %13 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bme680_oversampling_to_reg(i32 %14)
  %16 = call i32 @FIELD_PREP(i32 %11, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %18 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BME680_REG_CTRL_HUMIDITY, align 4
  %21 = load i32, i32* @BME680_OSRS_HUMIDITY_MASK, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %74

30:                                               ; preds = %1
  %31 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %32 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BME680_REG_CONFIG, align 4
  %35 = load i32, i32* @BME680_FILTER_MASK, align 4
  %36 = load i32, i32* @BME680_FILTER_COEFF_VAL, align 4
  %37 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %74

44:                                               ; preds = %30
  %45 = load i32, i32* @BME680_OSRS_TEMP_MASK, align 4
  %46 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %47 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bme680_oversampling_to_reg(i32 %48)
  %50 = call i32 @FIELD_PREP(i32 %45, i32 %49)
  %51 = load i32, i32* @BME680_OSRS_PRESS_MASK, align 4
  %52 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %53 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bme680_oversampling_to_reg(i32 %54)
  %56 = call i32 @FIELD_PREP(i32 %51, i32 %55)
  %57 = or i32 %50, %56
  store i32 %57, i32* %6, align 4
  %58 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %59 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BME680_REG_CTRL_MEAS, align 4
  %62 = load i32, i32* @BME680_OSRS_TEMP_MASK, align 4
  %63 = load i32, i32* @BME680_OSRS_PRESS_MASK, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @regmap_write_bits(i32 %60, i32 %61, i32 %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %44
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %44
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %40, %26
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @bme680_oversampling_to_reg(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
