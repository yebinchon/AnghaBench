; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_chip_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_chip_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmp280_data = type { i32, i32, i64, i64 }

@BMP280_REG_CTRL_MEAS = common dso_local global i32 0, align 4
@BMP280_OSRS_TEMP_MASK = common dso_local global i32 0, align 4
@BMP280_OSRS_PRESS_MASK = common dso_local global i32 0, align 4
@BMP280_MODE_MASK = common dso_local global i32 0, align 4
@BMP280_MODE_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to write ctrl_meas register\0A\00", align 1
@BMP280_REG_CONFIG = common dso_local global i32 0, align 4
@BMP280_FILTER_MASK = common dso_local global i32 0, align 4
@BMP280_FILTER_4X = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to write config register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmp280_data*)* @bmp280_chip_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp280_chip_config(%struct.bmp280_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bmp280_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bmp280_data* %0, %struct.bmp280_data** %3, align 8
  %6 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %7 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  %10 = call i32 @BMP280_OSRS_TEMP_X(i64 %9)
  %11 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %12 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @BMP280_OSRS_PRESS_X(i64 %14)
  %16 = or i32 %10, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %18 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BMP280_REG_CTRL_MEAS, align 4
  %21 = load i32, i32* @BMP280_OSRS_TEMP_MASK, align 4
  %22 = load i32, i32* @BMP280_OSRS_PRESS_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @BMP280_MODE_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @BMP280_MODE_NORMAL, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @regmap_write_bits(i32 %19, i32 %20, i32 %25, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %34 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %56

38:                                               ; preds = %1
  %39 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %40 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BMP280_REG_CONFIG, align 4
  %43 = load i32, i32* @BMP280_FILTER_MASK, align 4
  %44 = load i32, i32* @BMP280_FILTER_4X, align 4
  %45 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %50 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %56

54:                                               ; preds = %38
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %48, %32
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @BMP280_OSRS_TEMP_X(i64) #1

declare dso_local i32 @BMP280_OSRS_PRESS_X(i64) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
