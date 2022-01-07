; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac7311.c_ti_dac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac7311.c_ti_dac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_dac_spec = type { i32 }
%struct.spi_device = type { i32, %struct.device, i32 }
%struct.device = type { i32 }
%struct.ti_dac_chip = type { i32, i32, i32, i32, %struct.spi_device* }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.device* }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"can not allocate iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SPI_MODE_1 = common dso_local global i32 0, align 4
@ti_dac_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ti_dac_channels = common dso_local global i32 0, align 4
@ti_dac_spec = common dso_local global %struct.ti_dac_spec* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"error to get regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"can not enable regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"fail to register iio device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ti_dac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_dac_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ti_dac_spec*, align 8
  %6 = alloca %struct.ti_dac_chip*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %11, i32 24)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %125

20:                                               ; preds = %1
  %21 = load i32, i32* @SPI_MODE_1, align 4
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  store i32 16, i32* %25, align 4
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = call i32 @spi_setup(%struct.spi_device* %26)
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %30 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store %struct.device* %28, %struct.device** %31, align 8
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %37 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 4
  store i32* @ti_dac_info, i32** %40, align 8
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = call %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %48 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @ti_dac_channels, align 4
  %51 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %55 = call i32 @spi_set_drvdata(%struct.spi_device* %53, %struct.iio_dev* %54)
  %56 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %57 = call %struct.ti_dac_chip* @iio_priv(%struct.iio_dev* %56)
  store %struct.ti_dac_chip* %57, %struct.ti_dac_chip** %6, align 8
  %58 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %59 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %62 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %61, i32 0, i32 4
  store %struct.spi_device* %60, %struct.spi_device** %62, align 8
  %63 = load %struct.ti_dac_spec*, %struct.ti_dac_spec** @ti_dac_spec, align 8
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = call %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.ti_dac_spec, %struct.ti_dac_spec* %63, i64 %67
  store %struct.ti_dac_spec* %68, %struct.ti_dac_spec** %5, align 8
  %69 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.ti_dac_spec*, %struct.ti_dac_spec** %5, align 8
  %72 = getelementptr inbounds %struct.ti_dac_spec, %struct.ti_dac_spec* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %75 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 @devm_regulator_get(%struct.device* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %79 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %81 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @IS_ERR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %20
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %89 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %2, align 4
  br label %125

92:                                               ; preds = %20
  %93 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %94 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @regulator_enable(i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %2, align 4
  br label %125

103:                                              ; preds = %92
  %104 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %105 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %104, i32 0, i32 2
  %106 = call i32 @mutex_init(i32* %105)
  %107 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %108 = call i32 @iio_device_register(%struct.iio_dev* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %116

115:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %125

116:                                              ; preds = %111
  %117 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %118 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %117, i32 0, i32 2
  %119 = call i32 @mutex_destroy(i32* %118)
  %120 = load %struct.ti_dac_chip*, %struct.ti_dac_chip** %6, align 8
  %121 = getelementptr inbounds %struct.ti_dac_chip, %struct.ti_dac_chip* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @regulator_disable(i32 %122)
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %116, %115, %99, %85, %15
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.ti_dac_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
