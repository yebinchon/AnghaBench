; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bme280_chip_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bme280_chip_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmp280_data = type { i32, i64 }

@BMP280_REG_CTRL_HUMIDITY = common dso_local global i32 0, align 4
@BMP280_OSRS_HUMIDITY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmp280_data*)* @bme280_chip_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme280_chip_config(%struct.bmp280_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bmp280_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bmp280_data* %0, %struct.bmp280_data** %3, align 8
  %6 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %7 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  %10 = call i32 @BMP280_OSRS_HUMIDITIY_X(i64 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %12 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @BMP280_REG_CTRL_HUMIDITY, align 4
  %15 = load i32, i32* @BMP280_OSRS_HUMIDITY_MASK, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @regmap_update_bits(i32 %13, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.bmp280_data*, %struct.bmp280_data** %3, align 8
  %24 = call i32 @bmp280_chip_config(%struct.bmp280_data* %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %20
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @BMP280_OSRS_HUMIDITIY_X(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @bmp280_chip_config(%struct.bmp280_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
