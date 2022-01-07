; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_gas_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_gas_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bme680_data = type { i32, i32, i32 }
%struct.device = type { i32 }

@BME680_REG_RES_HEAT_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to write res_heat_0 register\0A\00", align 1
@BME680_REG_GAS_WAIT_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to write gas_wait_0 register\0A\00", align 1
@BME680_REG_CTRL_GAS_1 = common dso_local global i32 0, align 4
@BME680_RUN_GAS_MASK = common dso_local global i32 0, align 4
@BME680_NB_CONV_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to write ctrl_gas_1 register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bme680_data*)* @bme680_gas_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_gas_config(%struct.bme680_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bme680_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bme680_data* %0, %struct.bme680_data** %3, align 8
  %8 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %9 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.device* @regmap_get_device(i32 %10)
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %13 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %14 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bme680_calc_heater_res(%struct.bme680_data* %12, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %18 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BME680_REG_RES_HEAT_0, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @regmap_write(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %67

29:                                               ; preds = %1
  %30 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %31 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bme680_calc_heater_dur(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %35 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BME680_REG_GAS_WAIT_0, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @regmap_write(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %67

46:                                               ; preds = %29
  %47 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %48 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BME680_REG_CTRL_GAS_1, align 4
  %51 = load i32, i32* @BME680_RUN_GAS_MASK, align 4
  %52 = load i32, i32* @BME680_NB_CONV_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @BME680_RUN_GAS_MASK, align 4
  %55 = call i32 @FIELD_PREP(i32 %54, i32 1)
  %56 = load i32, i32* @BME680_NB_CONV_MASK, align 4
  %57 = call i32 @FIELD_PREP(i32 %56, i32 0)
  %58 = or i32 %55, %57
  %59 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %53, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %46
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %46
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %42, %25
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @bme680_calc_heater_res(%struct.bme680_data*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @bme680_calc_heater_dur(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
