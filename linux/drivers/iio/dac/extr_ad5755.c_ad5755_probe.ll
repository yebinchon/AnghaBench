; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5755.c_ad5755_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5755.c_ad5755_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5755_platform_data = type { i32 }
%struct.spi_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.ad5755_platform_data*, i64 }
%struct.iio_dev = type { i32, i32, i32*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.ad5755_state = type { i32, %struct.spi_device*, i32* }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ad5755_chip_info_tbl = common dso_local global i32* null, align 8
@ad5755_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@AD5755_NUM_CHANNELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"no platform data? using default\0A\00", align 1
@ad5755_default_pdata = common dso_local global %struct.ad5755_platform_data zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad5755_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5755_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad5755_platform_data*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ad5755_state*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = call %struct.TYPE_10__* @spi_get_device_id(%struct.spi_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = call %struct.ad5755_platform_data* @dev_get_platdata(%struct.TYPE_11__* %14)
  store %struct.ad5755_platform_data* %15, %struct.ad5755_platform_data** %5, align 8
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_11__* %17, i32 24)
  store %struct.iio_dev* %18, %struct.iio_dev** %6, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %20 = icmp eq %struct.iio_dev* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = call i32 @dev_err(%struct.TYPE_11__* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %105

27:                                               ; preds = %1
  %28 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %29 = call %struct.ad5755_state* @iio_priv(%struct.iio_dev* %28)
  store %struct.ad5755_state* %29, %struct.ad5755_state** %7, align 8
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %32 = call i32 @spi_set_drvdata(%struct.spi_device* %30, %struct.iio_dev* %31)
  %33 = load i32*, i32** @ad5755_chip_info_tbl, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load %struct.ad5755_state*, %struct.ad5755_state** %7, align 8
  %38 = getelementptr inbounds %struct.ad5755_state, %struct.ad5755_state* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = load %struct.ad5755_state*, %struct.ad5755_state** %7, align 8
  %41 = getelementptr inbounds %struct.ad5755_state, %struct.ad5755_state* %40, i32 0, i32 1
  store %struct.spi_device* %39, %struct.spi_device** %41, align 8
  %42 = load %struct.ad5755_state*, %struct.ad5755_state** %7, align 8
  %43 = getelementptr inbounds %struct.ad5755_state, %struct.ad5755_state* %42, i32 0, i32 0
  store i32 15, i32* %43, align 8
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  %46 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %48, align 8
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = call %struct.TYPE_10__* @spi_get_device_id(%struct.spi_device* %49)
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 2
  store i32* @ad5755_info, i32** %56, align 8
  %57 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %58 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @AD5755_NUM_CHANNELS, align 4
  %61 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %27
  %69 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %70 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %69, i32 0, i32 0
  %71 = call %struct.ad5755_platform_data* @ad5755_parse_dt(%struct.TYPE_11__* %70)
  store %struct.ad5755_platform_data* %71, %struct.ad5755_platform_data** %5, align 8
  br label %77

72:                                               ; preds = %27
  %73 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %74 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %75, align 8
  store %struct.ad5755_platform_data* %76, %struct.ad5755_platform_data** %5, align 8
  br label %77

77:                                               ; preds = %72, %68
  %78 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %79 = icmp ne %struct.ad5755_platform_data* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %82 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %81, i32 0, i32 0
  %83 = call i32 @dev_warn(%struct.TYPE_11__* %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store %struct.ad5755_platform_data* @ad5755_default_pdata, %struct.ad5755_platform_data** %5, align 8
  br label %84

84:                                               ; preds = %80, %77
  %85 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %86 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %87 = call i32 @ad5755_init_channels(%struct.iio_dev* %85, %struct.ad5755_platform_data* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %2, align 4
  br label %105

92:                                               ; preds = %84
  %93 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %94 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %5, align 8
  %95 = call i32 @ad5755_setup_pdata(%struct.iio_dev* %93, %struct.ad5755_platform_data* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %2, align 4
  br label %105

100:                                              ; preds = %92
  %101 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %102 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %101, i32 0, i32 0
  %103 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %104 = call i32 @devm_iio_device_register(%struct.TYPE_11__* %102, %struct.iio_dev* %103)
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %100, %98, %90, %21
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_10__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.ad5755_platform_data* @dev_get_platdata(%struct.TYPE_11__*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.ad5755_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.ad5755_platform_data* @ad5755_parse_dt(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @ad5755_init_channels(%struct.iio_dev*, %struct.ad5755_platform_data*) #1

declare dso_local i32 @ad5755_setup_pdata(%struct.iio_dev*, %struct.ad5755_platform_data*) #1

declare dso_local i32 @devm_iio_device_register(%struct.TYPE_11__*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
