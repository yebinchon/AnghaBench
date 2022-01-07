; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads124s08.c_ads124s_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads124s08.c_ads124s_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.spi_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ads124s_private = type { i32, %struct.TYPE_11__*, %struct.spi_device*, i32 }
%struct.iio_dev = type { i32*, i32, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.spi_device_id = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Reset GPIO not defined\0A\00", align 1
@ads124s_chip_info_tbl = common dso_local global %struct.TYPE_11__* null, align 8
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ads124s_info = common dso_local global i32 0, align 4
@ads124s_trigger_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"iio triggered buffer setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ads124s_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads124s_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ads124s_private*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.spi_device_id*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %8)
  store %struct.spi_device_id* %9, %struct.spi_device_id** %6, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_10__* %11, i32 32)
  store %struct.iio_dev* %12, %struct.iio_dev** %5, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = icmp eq %struct.iio_dev* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %108

18:                                               ; preds = %1
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = call %struct.ads124s_private* @iio_priv(%struct.iio_dev* %19)
  store %struct.ads124s_private* %20, %struct.ads124s_private** %4, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %24 = call i32 @devm_gpiod_get_optional(%struct.TYPE_10__* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.ads124s_private*, %struct.ads124s_private** %4, align 8
  %26 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ads124s_private*, %struct.ads124s_private** %4, align 8
  %28 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %18
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = call i32 @dev_info(%struct.TYPE_10__* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %18
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ads124s_chip_info_tbl, align 8
  %38 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %39 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i64 %40
  %42 = load %struct.ads124s_private*, %struct.ads124s_private** %4, align 8
  %43 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %42, i32 0, i32 1
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %43, align 8
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %46 = call i32 @spi_set_drvdata(%struct.spi_device* %44, %struct.iio_dev* %45)
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = load %struct.ads124s_private*, %struct.ads124s_private** %4, align 8
  %49 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %48, i32 0, i32 2
  store %struct.spi_device* %47, %struct.spi_device** %49, align 8
  %50 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %51 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 0
  %57 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %59, align 8
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %68 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ads124s_private*, %struct.ads124s_private** %4, align 8
  %71 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %70, i32 0, i32 1
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %76 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ads124s_private*, %struct.ads124s_private** %4, align 8
  %78 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %83 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %85 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %84, i32 0, i32 0
  store i32* @ads124s_info, i32** %85, align 8
  %86 = load %struct.ads124s_private*, %struct.ads124s_private** %4, align 8
  %87 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %86, i32 0, i32 0
  %88 = call i32 @mutex_init(i32* %87)
  %89 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %90 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %89, i32 0, i32 0
  %91 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %92 = load i32, i32* @ads124s_trigger_handler, align 4
  %93 = call i32 @devm_iio_triggered_buffer_setup(%struct.TYPE_10__* %90, %struct.iio_dev* %91, i32* null, i32 %92, i32* null)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %36
  %97 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %98 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %97, i32 0, i32 0
  %99 = call i32 @dev_err(%struct.TYPE_10__* %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %108

101:                                              ; preds = %36
  %102 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %103 = call i32 @ads124s_reset(%struct.iio_dev* %102)
  %104 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %105 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %104, i32 0, i32 0
  %106 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %107 = call i32 @devm_iio_device_register(%struct.TYPE_10__* %105, %struct.iio_dev* %106)
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %101, %96, %15
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.ads124s_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(%struct.TYPE_10__*, %struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @ads124s_reset(%struct.iio_dev*) #1

declare dso_local i32 @devm_iio_device_register(%struct.TYPE_10__*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
