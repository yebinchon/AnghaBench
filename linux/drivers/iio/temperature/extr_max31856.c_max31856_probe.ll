; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_max31856.c_max31856_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_max31856.c_max31856_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.spi_device_id = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32* }
%struct.max31856_data = type { i32, %struct.spi_device* }

@ENOMEM = common dso_local global i32 0, align 4
@max31856_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@max31856_channels = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"thermocouple-type\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Could not read thermocouple type DT property, configuring as a K-Type\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"error: thermocouple-type %u not supported by max31856\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"error: Failed to configure max31856\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @max31856_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31856_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.max31856_data*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %8)
  store %struct.spi_device_id* %9, %struct.spi_device_id** %4, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_5__* %11, i32 16)
  store %struct.iio_dev* %12, %struct.iio_dev** %5, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %88

18:                                               ; preds = %1
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = call %struct.max31856_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.max31856_data* %20, %struct.max31856_data** %6, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = load %struct.max31856_data*, %struct.max31856_data** %6, align 8
  %23 = getelementptr inbounds %struct.max31856_data, %struct.max31856_data* %22, i32 0, i32 1
  store %struct.spi_device* %21, %struct.spi_device** %23, align 8
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %26 = call i32 @spi_set_drvdata(%struct.spi_device* %24, %struct.iio_dev* %25)
  %27 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %28 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %27, i32 0, i32 4
  store i32* @max31856_info, i32** %28, align 8
  %29 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %30 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %35 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @max31856_channels, align 4
  %38 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @max31856_channels, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.max31856_data*, %struct.max31856_data** %6, align 8
  %49 = getelementptr inbounds %struct.max31856_data, %struct.max31856_data* %48, i32 0, i32 0
  %50 = call i32 @of_property_read_u32(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %18
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 0
  %56 = call i32 @dev_info(%struct.TYPE_5__* %55, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.max31856_data*, %struct.max31856_data** %6, align 8
  %58 = getelementptr inbounds %struct.max31856_data, %struct.max31856_data* %57, i32 0, i32 0
  store i32 132, i32* %58, align 8
  br label %59

59:                                               ; preds = %53, %18
  %60 = load %struct.max31856_data*, %struct.max31856_data** %6, align 8
  %61 = getelementptr inbounds %struct.max31856_data, %struct.max31856_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %64 [
    i32 135, label %63
    i32 134, label %63
    i32 133, label %63
    i32 132, label %63
    i32 131, label %63
    i32 130, label %63
    i32 129, label %63
    i32 128, label %63
  ]

63:                                               ; preds = %59, %59, %59, %59, %59, %59, %59, %59
  br label %73

64:                                               ; preds = %59
  %65 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 0
  %67 = load %struct.max31856_data*, %struct.max31856_data** %6, align 8
  %68 = getelementptr inbounds %struct.max31856_data, %struct.max31856_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %66, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %88

73:                                               ; preds = %63
  %74 = load %struct.max31856_data*, %struct.max31856_data** %6, align 8
  %75 = call i32 @max31856_init(%struct.max31856_data* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 0
  %81 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %88

83:                                               ; preds = %73
  %84 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %85 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %84, i32 0, i32 0
  %86 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %87 = call i32 @devm_iio_device_register(%struct.TYPE_5__* %85, %struct.iio_dev* %86)
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %78, %64, %15
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.max31856_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @max31856_init(%struct.max31856_data*) #1

declare dso_local i32 @devm_iio_device_register(%struct.TYPE_5__*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
