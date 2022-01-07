; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16136.c_adis16136_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16136.c_adis16136_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_device_id = type { i64, i32 }
%struct.adis16136 = type { i32, i32* }
%struct.iio_dev = type { i32, i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@adis16136_chip_info = common dso_local global i32* null, align 8
@adis16136_channels = common dso_local global i32 0, align 4
@adis16136_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@adis16136_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adis16136_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16136_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  %5 = alloca %struct.adis16136*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %8)
  store %struct.spi_device_id* %9, %struct.spi_device_id** %4, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 16)
  store %struct.iio_dev* %12, %struct.iio_dev** %6, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = icmp eq %struct.iio_dev* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %96

18:                                               ; preds = %1
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %21 = call i32 @spi_set_drvdata(%struct.spi_device* %19, %struct.iio_dev* %20)
  %22 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %23 = call %struct.adis16136* @iio_priv(%struct.iio_dev* %22)
  store %struct.adis16136* %23, %struct.adis16136** %5, align 8
  %24 = load i32*, i32** @adis16136_chip_info, align 8
  %25 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %26 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load %struct.adis16136*, %struct.adis16136** %5, align 8
  %30 = getelementptr inbounds %struct.adis16136, %struct.adis16136* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32* %32, i32** %35, align 8
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %36)
  %38 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @adis16136_channels, align 4
  %43 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @adis16136_channels, align 4
  %46 = call i32 @ARRAY_SIZE(i32 %45)
  %47 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 1
  store i32* @adis16136_info, i32** %50, align 8
  %51 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %52 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.adis16136*, %struct.adis16136** %5, align 8
  %55 = getelementptr inbounds %struct.adis16136, %struct.adis16136* %54, i32 0, i32 0
  %56 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %57 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %58 = call i32 @adis_init(i32* %55, %struct.iio_dev* %56, %struct.spi_device* %57, i32* @adis16136_data)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %18
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %96

63:                                               ; preds = %18
  %64 = load %struct.adis16136*, %struct.adis16136** %5, align 8
  %65 = getelementptr inbounds %struct.adis16136, %struct.adis16136* %64, i32 0, i32 0
  %66 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %67 = call i32 @adis_setup_buffer_and_trigger(i32* %65, %struct.iio_dev* %66, i32* null)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %96

72:                                               ; preds = %63
  %73 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %74 = call i32 @adis16136_initial_setup(%struct.iio_dev* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %90

78:                                               ; preds = %72
  %79 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %80 = call i32 @iio_device_register(%struct.iio_dev* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %87

84:                                               ; preds = %78
  %85 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %86 = call i32 @adis16136_debugfs_init(%struct.iio_dev* %85)
  store i32 0, i32* %2, align 4
  br label %96

87:                                               ; preds = %83
  %88 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %89 = call i32 @adis16136_stop_device(%struct.iio_dev* %88)
  br label %90

90:                                               ; preds = %87, %77
  %91 = load %struct.adis16136*, %struct.adis16136** %5, align 8
  %92 = getelementptr inbounds %struct.adis16136, %struct.adis16136* %91, i32 0, i32 0
  %93 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %94 = call i32 @adis_cleanup_buffer_and_trigger(i32* %92, %struct.iio_dev* %93)
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %90, %84, %70, %61, %15
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.adis16136* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @adis_init(i32*, %struct.iio_dev*, %struct.spi_device*, i32*) #1

declare dso_local i32 @adis_setup_buffer_and_trigger(i32*, %struct.iio_dev*, i32*) #1

declare dso_local i32 @adis16136_initial_setup(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @adis16136_debugfs_init(%struct.iio_dev*) #1

declare dso_local i32 @adis16136_stop_device(%struct.iio_dev*) #1

declare dso_local i32 @adis_cleanup_buffer_and_trigger(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
