; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_read_gas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_read_gas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bme680_data = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to set gas config\0A\00", align 1
@BME680_REG_MEAS_STAT_0 = common dso_local global i32 0, align 4
@BME680_GAS_MEAS_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"gas measurement incomplete\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BME680_REG_GAS_R_LSB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to read gas_r_lsb register\0A\00", align 1
@BME680_GAS_STAB_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"heater failed to reach the target temperature\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BME680_REG_GAS_MSB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to read gas resistance\0A\00", align 1
@BME680_GAS_RANGE_MASK = common dso_local global i32 0, align 4
@BME680_ADC_GAS_RES_SHIFT = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bme680_data*, i32*)* @bme680_read_gas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_read_gas(%struct.bme680_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bme680_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bme680_data* %0, %struct.bme680_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %13 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.device* @regmap_get_device(i32 %14)
  store %struct.device* %15, %struct.device** %6, align 8
  store i64 0, i64* %8, align 8
  %16 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %17 = call i32 @bme680_gas_config(%struct.bme680_data* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %95

24:                                               ; preds = %2
  %25 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %26 = call i32 @bme680_set_mode(%struct.bme680_data* %25, i32 1)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %95

31:                                               ; preds = %24
  %32 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %33 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BME680_REG_MEAS_STAT_0, align 4
  %36 = call i32 @regmap_read(i32 %34, i32 %35, i32* %9)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @BME680_GAS_MEAS_BIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %95

46:                                               ; preds = %31
  %47 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %48 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BME680_REG_GAS_R_LSB, align 4
  %51 = call i32 @regmap_read(i32 %49, i32 %50, i32* %9)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %95

58:                                               ; preds = %46
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @BME680_GAS_STAB_BIT, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %95

68:                                               ; preds = %58
  %69 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %70 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BME680_REG_GAS_MSB, align 4
  %73 = bitcast i64* %8 to i32*
  %74 = call i32 @regmap_bulk_read(i32 %71, i32 %72, i32* %73, i32 2)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %95

81:                                               ; preds = %68
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @BME680_GAS_RANGE_MASK, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %11, align 4
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @be16_to_cpu(i64 %85)
  %87 = load i32, i32* @BME680_ADC_GAS_RES_SHIFT, align 4
  %88 = ashr i32 %86, %87
  store i32 %88, i32* %10, align 4
  %89 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @bme680_compensate_gas(%struct.bme680_data* %89, i32 %90, i32 %91)
  %93 = load i32*, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %81, %77, %63, %54, %41, %29, %20
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @bme680_gas_config(%struct.bme680_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @bme680_set_mode(%struct.bme680_data*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i32 @bme680_compensate_gas(%struct.bme680_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
