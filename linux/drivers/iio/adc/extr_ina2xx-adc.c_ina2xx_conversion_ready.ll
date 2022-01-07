; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina2xx_conversion_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina2xx_conversion_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ina2xx_chip_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ina226 = common dso_local global i64 0, align 8
@INA226_MASK_ENABLE = common dso_local global i32 0, align 4
@INA226_CVRF = common dso_local global i32 0, align 4
@INA2XX_BUS_VOLTAGE = common dso_local global i32 0, align 4
@INA219_CNVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ina2xx_conversion_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina2xx_conversion_ready(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ina2xx_chip_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.ina2xx_chip_info* @iio_priv(%struct.iio_dev* %7)
  store %struct.ina2xx_chip_info* %8, %struct.ina2xx_chip_info** %4, align 8
  %9 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %4, align 8
  %10 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ina226, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %4, align 8
  %18 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @INA226_MASK_ENABLE, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i32* %6)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @INA226_CVRF, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %34

25:                                               ; preds = %1
  %26 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %4, align 8
  %27 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @INA2XX_BUS_VOLTAGE, align 4
  %30 = call i32 @regmap_read(i32 %28, i32 %29, i32* %6)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @INA219_CNVR, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %25, %16
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %45

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %39, %37
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.ina2xx_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
