; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac7612.c_dac7612_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac7612.c_dac7612_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.dac7612 = type { i32, %struct.spi_device*, i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ti,loaddacs\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@dac7612_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@dac7612_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @dac7612_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac7612_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.dac7612*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %9, i32 24)
  store %struct.iio_dev* %10, %struct.iio_dev** %4, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = icmp ne %struct.iio_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %91

16:                                               ; preds = %1
  %17 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %18 = call %struct.dac7612* @iio_priv(%struct.iio_dev* %17)
  store %struct.dac7612* %18, %struct.dac7612** %5, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %22 = call i32 @devm_gpiod_get_optional(i32* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.dac7612*, %struct.dac7612** %5, align 8
  %24 = getelementptr inbounds %struct.dac7612, %struct.dac7612* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.dac7612*, %struct.dac7612** %5, align 8
  %26 = getelementptr inbounds %struct.dac7612, %struct.dac7612* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %16
  %31 = load %struct.dac7612*, %struct.dac7612** %5, align 8
  %32 = getelementptr inbounds %struct.dac7612, %struct.dac7612* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %91

35:                                               ; preds = %16
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = load %struct.dac7612*, %struct.dac7612** %5, align 8
  %38 = getelementptr inbounds %struct.dac7612, %struct.dac7612* %37, i32 0, i32 1
  store %struct.spi_device* %36, %struct.spi_device** %38, align 8
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %41 = call i32 @spi_set_drvdata(%struct.spi_device* %39, %struct.iio_dev* %40)
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 0
  %44 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32* %43, i32** %46, align 8
  %47 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 4
  store i32* @dac7612_info, i32** %48, align 8
  %49 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %50 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @dac7612_channels, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.dac7612*, %struct.dac7612** %5, align 8
  %56 = getelementptr inbounds %struct.dac7612, %struct.dac7612* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = call %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device* %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %83, %35
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.dac7612*, %struct.dac7612** %5, align 8
  %70 = getelementptr inbounds %struct.dac7612, %struct.dac7612* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ARRAY_SIZE(i32 %71)
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %67
  %75 = load %struct.dac7612*, %struct.dac7612** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @dac7612_cmd_single(%struct.dac7612* %75, i32 %76, i32 0)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %91

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %67

86:                                               ; preds = %67
  %87 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %88 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %87, i32 0, i32 0
  %89 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %90 = call i32 @devm_iio_device_register(i32* %88, %struct.iio_dev* %89)
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %86, %80, %30, %13
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.dac7612* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @dac7612_cmd_single(%struct.dac7612*, i32, i32) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
