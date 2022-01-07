; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adis16201.c_adis16201_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adis16201.c_adis16201_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.adis = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@adis16201_info = common dso_local global i32 0, align 4
@adis16201_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@adis16201_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adis16201_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16201_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.adis*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_6__* %8, i32 4)
  store %struct.iio_dev* %9, %struct.iio_dev** %4, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %80

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %17 = call %struct.adis* @iio_priv(%struct.iio_dev* %16)
  store %struct.adis* %17, %struct.adis** %5, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %20 = call i32 @spi_set_drvdata(%struct.spi_device* %18, %struct.iio_dev* %19)
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %28 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %33, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 3
  store i32* @adis16201_info, i32** %35, align 8
  %36 = load i32, i32* @adis16201_channels, align 4
  %37 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @adis16201_channels, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %44 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.adis*, %struct.adis** %5, align 8
  %47 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = call i32 @adis_init(%struct.adis* %46, %struct.iio_dev* %47, %struct.spi_device* %48, i32* @adis16201_data)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %15
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %80

54:                                               ; preds = %15
  %55 = load %struct.adis*, %struct.adis** %5, align 8
  %56 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %57 = call i32 @adis_setup_buffer_and_trigger(%struct.adis* %55, %struct.iio_dev* %56, i32* null)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %80

62:                                               ; preds = %54
  %63 = load %struct.adis*, %struct.adis** %5, align 8
  %64 = call i32 @adis_initial_startup(%struct.adis* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %75

68:                                               ; preds = %62
  %69 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %70 = call i32 @iio_device_register(%struct.iio_dev* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %75

74:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %80

75:                                               ; preds = %73, %67
  %76 = load %struct.adis*, %struct.adis** %5, align 8
  %77 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %78 = call i32 @adis_cleanup_buffer_and_trigger(%struct.adis* %76, %struct.iio_dev* %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %75, %74, %60, %52, %12
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.adis* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @adis_init(%struct.adis*, %struct.iio_dev*, %struct.spi_device*, i32*) #1

declare dso_local i32 @adis_setup_buffer_and_trigger(%struct.adis*, %struct.iio_dev*, i32*) #1

declare dso_local i32 @adis_initial_startup(%struct.adis*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @adis_cleanup_buffer_and_trigger(%struct.adis*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
