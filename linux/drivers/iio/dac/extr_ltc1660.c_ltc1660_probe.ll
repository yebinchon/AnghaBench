; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ltc1660.c_ltc1660_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ltc1660.c_ltc1660_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ltc1660_priv = type { i32, %struct.spi_device*, i32 }
%struct.spi_device_id = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ltc1660_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to register spi regmap %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"vref regulator not specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to enable vref regulator: %d\0A\00", align 1
@ltc1660_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ltc1660_channels = common dso_local global i32* null, align 8
@LTC1660_NUM_CHANNELS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to register iio device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ltc1660_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc1660_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.ltc1660_priv*, align 8
  %6 = alloca %struct.spi_device_id*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %8)
  store %struct.spi_device_id* %9, %struct.spi_device_id** %6, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 24)
  store %struct.iio_dev* %12, %struct.iio_dev** %4, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %14 = icmp eq %struct.iio_dev* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %123

18:                                               ; preds = %1
  %19 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %20 = call %struct.ltc1660_priv* @iio_priv(%struct.iio_dev* %19)
  store %struct.ltc1660_priv* %20, %struct.ltc1660_priv** %5, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = call i32 @devm_regmap_init_spi(%struct.spi_device* %21, i32* @ltc1660_regmap_config)
  %23 = load %struct.ltc1660_priv*, %struct.ltc1660_priv** %5, align 8
  %24 = getelementptr inbounds %struct.ltc1660_priv, %struct.ltc1660_priv* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ltc1660_priv*, %struct.ltc1660_priv** %5, align 8
  %26 = getelementptr inbounds %struct.ltc1660_priv, %struct.ltc1660_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %18
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = load %struct.ltc1660_priv*, %struct.ltc1660_priv** %5, align 8
  %34 = getelementptr inbounds %struct.ltc1660_priv, %struct.ltc1660_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  %37 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.ltc1660_priv*, %struct.ltc1660_priv** %5, align 8
  %39 = getelementptr inbounds %struct.ltc1660_priv, %struct.ltc1660_priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %123

42:                                               ; preds = %18
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 0
  %45 = call i32 @devm_regulator_get(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.ltc1660_priv*, %struct.ltc1660_priv** %5, align 8
  %47 = getelementptr inbounds %struct.ltc1660_priv, %struct.ltc1660_priv* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ltc1660_priv*, %struct.ltc1660_priv** %5, align 8
  %49 = getelementptr inbounds %struct.ltc1660_priv, %struct.ltc1660_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %42
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.ltc1660_priv*, %struct.ltc1660_priv** %5, align 8
  %58 = getelementptr inbounds %struct.ltc1660_priv, %struct.ltc1660_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %2, align 4
  br label %123

61:                                               ; preds = %42
  %62 = load %struct.ltc1660_priv*, %struct.ltc1660_priv** %5, align 8
  %63 = getelementptr inbounds %struct.ltc1660_priv, %struct.ltc1660_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @regulator_enable(i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %70 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %69, i32 0, i32 0
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %123

74:                                               ; preds = %61
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = load %struct.ltc1660_priv*, %struct.ltc1660_priv** %5, align 8
  %77 = getelementptr inbounds %struct.ltc1660_priv, %struct.ltc1660_priv* %76, i32 0, i32 1
  store %struct.spi_device* %75, %struct.spi_device** %77, align 8
  %78 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %79 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %80 = call i32 @spi_set_drvdata(%struct.spi_device* %78, %struct.iio_dev* %79)
  %81 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %82 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %81, i32 0, i32 0
  %83 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %84 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32* %82, i32** %85, align 8
  %86 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %87 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %86, i32 0, i32 4
  store i32* @ltc1660_info, i32** %87, align 8
  %88 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %89 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %90 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** @ltc1660_channels, align 8
  %92 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %93 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %98 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @LTC1660_NUM_CHANNELS, align 4
  %100 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %101 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %103 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %106 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %108 = call i32 @iio_device_register(%struct.iio_dev* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %74
  %112 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %113 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %112, i32 0, i32 0
  %114 = load i32, i32* %7, align 4
  %115 = call i32 (i32*, i8*, ...) @dev_err(i32* %113, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  br label %117

116:                                              ; preds = %74
  store i32 0, i32* %2, align 4
  br label %123

117:                                              ; preds = %111
  %118 = load %struct.ltc1660_priv*, %struct.ltc1660_priv** %5, align 8
  %119 = getelementptr inbounds %struct.ltc1660_priv, %struct.ltc1660_priv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @regulator_disable(i32 %120)
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %117, %116, %68, %53, %30, %15
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ltc1660_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
