; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bme680_data = type { i32 }
%struct.device = type { i32 }

@BME680_REG_CTRL_MEAS = common dso_local global i32 0, align 4
@BME680_MODE_MASK = common dso_local global i32 0, align 4
@BME680_MODE_FORCED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to set forced mode\0A\00", align 1
@BME680_MODE_SLEEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to set sleep mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bme680_data*, i32)* @bme680_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_set_mode(%struct.bme680_data* %0, i32 %1) #0 {
  %3 = alloca %struct.bme680_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.bme680_data* %0, %struct.bme680_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %8 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.device* @regmap_get_device(i32 %9)
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %15 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BME680_REG_CTRL_MEAS, align 4
  %18 = load i32, i32* @BME680_MODE_MASK, align 4
  %19 = load i32, i32* @BME680_MODE_FORCED, align 4
  %20 = call i32 @regmap_write_bits(i32 %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %13
  br label %41

27:                                               ; preds = %2
  %28 = load %struct.bme680_data*, %struct.bme680_data** %3, align 8
  %29 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BME680_REG_CTRL_MEAS, align 4
  %32 = load i32, i32* @BME680_MODE_MASK, align 4
  %33 = load i32, i32* @BME680_MODE_SLEEP, align 4
  %34 = call i32 @regmap_write_bits(i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %27
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
