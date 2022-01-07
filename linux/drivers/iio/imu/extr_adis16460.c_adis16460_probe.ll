; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16460.c_adis16460_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16460.c_adis16460_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32, i32*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.adis16460 = type { i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@adis16460_chip_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@adis16460_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@adis16460_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adis16460_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16460_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.adis16460*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %8, i32 16)
  store %struct.iio_dev* %9, %struct.iio_dev** %4, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = icmp eq %struct.iio_dev* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %95

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %18 = call i32 @spi_set_drvdata(%struct.spi_device* %16, %struct.iio_dev* %17)
  %19 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %20 = call %struct.adis16460* @iio_priv(%struct.iio_dev* %19)
  store %struct.adis16460* %20, %struct.adis16460** %5, align 8
  %21 = load %struct.adis16460*, %struct.adis16460** %5, align 8
  %22 = getelementptr inbounds %struct.adis16460, %struct.adis16460* %21, i32 0, i32 1
  store %struct.TYPE_6__* @adis16460_chip_info, %struct.TYPE_6__** %22, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %26 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32* %24, i32** %27, align 8
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = call %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device* %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.adis16460*, %struct.adis16460** %5, align 8
  %35 = getelementptr inbounds %struct.adis16460, %struct.adis16460* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.adis16460*, %struct.adis16460** %5, align 8
  %42 = getelementptr inbounds %struct.adis16460, %struct.adis16460* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 1
  store i32* @adis16460_info, i32** %49, align 8
  %50 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %51 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.adis16460*, %struct.adis16460** %5, align 8
  %54 = getelementptr inbounds %struct.adis16460, %struct.adis16460* %53, i32 0, i32 0
  %55 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = call i32 @adis_init(i32* %54, %struct.iio_dev* %55, %struct.spi_device* %56, i32* @adis16460_data)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %15
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %95

62:                                               ; preds = %15
  %63 = load %struct.adis16460*, %struct.adis16460** %5, align 8
  %64 = getelementptr inbounds %struct.adis16460, %struct.adis16460* %63, i32 0, i32 0
  %65 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %66 = call i32 @adis_setup_buffer_and_trigger(i32* %64, %struct.iio_dev* %65, i32* null)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %95

71:                                               ; preds = %62
  %72 = load %struct.adis16460*, %struct.adis16460** %5, align 8
  %73 = getelementptr inbounds %struct.adis16460, %struct.adis16460* %72, i32 0, i32 0
  %74 = call i32 @adis16460_enable_irq(i32* %73, i32 0)
  %75 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %76 = call i32 @adis16460_initial_setup(%struct.iio_dev* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %89

80:                                               ; preds = %71
  %81 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %82 = call i32 @iio_device_register(%struct.iio_dev* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %89

86:                                               ; preds = %80
  %87 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %88 = call i32 @adis16460_debugfs_init(%struct.iio_dev* %87)
  store i32 0, i32* %2, align 4
  br label %95

89:                                               ; preds = %85, %79
  %90 = load %struct.adis16460*, %struct.adis16460** %5, align 8
  %91 = getelementptr inbounds %struct.adis16460, %struct.adis16460* %90, i32 0, i32 0
  %92 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %93 = call i32 @adis_cleanup_buffer_and_trigger(i32* %91, %struct.iio_dev* %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %89, %86, %69, %60, %12
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.adis16460* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @adis_init(i32*, %struct.iio_dev*, %struct.spi_device*, i32*) #1

declare dso_local i32 @adis_setup_buffer_and_trigger(i32*, %struct.iio_dev*, i32*) #1

declare dso_local i32 @adis16460_enable_irq(i32*, i32) #1

declare dso_local i32 @adis16460_initial_setup(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @adis16460_debugfs_init(%struct.iio_dev*) #1

declare dso_local i32 @adis_cleanup_buffer_and_trigger(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
