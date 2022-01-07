; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma220_spi.c_bma220_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma220_spi.c_bma220_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.bma220_data = type { %struct.spi_device*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"iio allocation failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@bma220_info = common dso_local global i32 0, align 4
@BMA220_DEVICE_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@bma220_channels = common dso_local global i32 0, align 4
@bma220_accel_scan_masks = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@bma220_trigger_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"iio triggered buffer setup failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"iio_device_register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @bma220_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma220_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.bma220_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %8, i32 16)
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %87

18:                                               ; preds = %1
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = call %struct.bma220_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.bma220_data* %20, %struct.bma220_data** %6, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = load %struct.bma220_data*, %struct.bma220_data** %6, align 8
  %23 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %22, i32 0, i32 0
  store %struct.spi_device* %21, %struct.spi_device** %23, align 8
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %26 = call i32 @spi_set_drvdata(%struct.spi_device* %24, %struct.iio_dev* %25)
  %27 = load %struct.bma220_data*, %struct.bma220_data** %6, align 8
  %28 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 0
  %32 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32* %31, i32** %34, align 8
  %35 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 5
  store i32* @bma220_info, i32** %36, align 8
  %37 = load i32, i32* @BMA220_DEVICE_NAME, align 4
  %38 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %41 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @bma220_channels, align 4
  %44 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @bma220_channels, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @bma220_accel_scan_masks, align 4
  %51 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.bma220_data*, %struct.bma220_data** %6, align 8
  %54 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %53, i32 0, i32 0
  %55 = load %struct.spi_device*, %struct.spi_device** %54, align 8
  %56 = call i32 @bma220_init(%struct.spi_device* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %18
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %87

61:                                               ; preds = %18
  %62 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %63 = load i32, i32* @iio_pollfunc_store_time, align 4
  %64 = load i32, i32* @bma220_trigger_handler, align 4
  %65 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %62, i32 %63, i32 %64, i32* null)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %70 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %84

72:                                               ; preds = %61
  %73 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %74 = call i32 @iio_device_register(%struct.iio_dev* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %79 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %82 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %81)
  br label %84

83:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %87

84:                                               ; preds = %77, %68
  %85 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %86 = call i32 @bma220_deinit(%struct.spi_device* %85)
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %83, %59, %12
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.bma220_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @bma220_init(%struct.spi_device*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @bma220_deinit(%struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
