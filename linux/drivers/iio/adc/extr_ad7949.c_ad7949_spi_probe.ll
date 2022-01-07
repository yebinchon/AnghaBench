; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7949.c_ad7949_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7949.c_ad7949_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7949_adc_spec = type { i32, i32 }
%struct.spi_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ad7949_adc_chip = type { i32, i32, i32, %struct.spi_device*, %struct.iio_dev* }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.device* }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"can not allocate iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ad7949_spi_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad7949_adc_channels = common dso_local global i32 0, align 4
@ad7949_adc_spec = common dso_local global %struct.ad7949_adc_spec* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"fail to request regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"fail to enable regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"enable to init this device: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"fail to register iio device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7949_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7949_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ad7949_adc_spec*, align 8
  %6 = alloca %struct.ad7949_adc_chip*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %11, i32 32)
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
  br label %130

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %23 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store %struct.device* %21, %struct.device** %24, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 4
  store i32* @ad7949_spi_info, i32** %32, align 8
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = call %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %40 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @ad7949_adc_channels, align 4
  %43 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %47 = call i32 @spi_set_drvdata(%struct.spi_device* %45, %struct.iio_dev* %46)
  %48 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %49 = call %struct.ad7949_adc_chip* @iio_priv(%struct.iio_dev* %48)
  store %struct.ad7949_adc_chip* %49, %struct.ad7949_adc_chip** %6, align 8
  %50 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %51 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %6, align 8
  %52 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %51, i32 0, i32 4
  store %struct.iio_dev* %50, %struct.iio_dev** %52, align 8
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %6, align 8
  %55 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %54, i32 0, i32 3
  store %struct.spi_device* %53, %struct.spi_device** %55, align 8
  %56 = load %struct.ad7949_adc_spec*, %struct.ad7949_adc_spec** @ad7949_adc_spec, align 8
  %57 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %58 = call %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device* %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.ad7949_adc_spec, %struct.ad7949_adc_spec* %56, i64 %60
  store %struct.ad7949_adc_spec* %61, %struct.ad7949_adc_spec** %5, align 8
  %62 = load %struct.ad7949_adc_spec*, %struct.ad7949_adc_spec** %5, align 8
  %63 = getelementptr inbounds %struct.ad7949_adc_spec, %struct.ad7949_adc_spec* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ad7949_adc_spec*, %struct.ad7949_adc_spec** %5, align 8
  %68 = getelementptr inbounds %struct.ad7949_adc_spec, %struct.ad7949_adc_spec* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %6, align 8
  %71 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 @devm_regulator_get(%struct.device* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %6, align 8
  %75 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %6, align 8
  %77 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %20
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %6, align 8
  %85 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @PTR_ERR(i32 %86)
  store i32 %87, i32* %2, align 4
  br label %130

88:                                               ; preds = %20
  %89 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %6, align 8
  %90 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @regulator_enable(i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %2, align 4
  br label %130

99:                                               ; preds = %88
  %100 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %6, align 8
  %101 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %100, i32 0, i32 1
  %102 = call i32 @mutex_init(i32* %101)
  %103 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %6, align 8
  %104 = call i32 @ad7949_spi_init(%struct.ad7949_adc_chip* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  br label %121

111:                                              ; preds = %99
  %112 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %113 = call i32 @iio_device_register(%struct.iio_dev* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  br label %121

120:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %130

121:                                              ; preds = %116, %107
  %122 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %6, align 8
  %123 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %122, i32 0, i32 1
  %124 = call i32 @mutex_destroy(i32* %123)
  %125 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %6, align 8
  %126 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @regulator_disable(i32 %127)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %121, %120, %95, %81, %15
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.ad7949_adc_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ad7949_spi_init(%struct.ad7949_adc_chip*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
