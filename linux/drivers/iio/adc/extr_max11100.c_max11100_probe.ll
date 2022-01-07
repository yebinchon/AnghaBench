; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max11100.c_max11100_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max11100.c_max11100_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iio_dev = type { i8*, i32, i32, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.max11100_state = type { i32, %struct.spi_device* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"max11100\00", align 1
@max11100_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@max11100_channels = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @max11100_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max11100_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.max11100_state*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_5__* %8, i32 16)
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %87

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = call i32 @spi_set_drvdata(%struct.spi_device* %16, %struct.iio_dev* %17)
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = call %struct.max11100_state* @iio_priv(%struct.iio_dev* %19)
  store %struct.max11100_state* %20, %struct.max11100_state** %6, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = load %struct.max11100_state*, %struct.max11100_state** %6, align 8
  %23 = getelementptr inbounds %struct.max11100_state, %struct.max11100_state* %22, i32 0, i32 1
  store %struct.spi_device* %21, %struct.spi_device** %23, align 8
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %27 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %28, align 8
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %37 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  %38 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 4
  store i32* @max11100_info, i32** %39, align 8
  %40 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %41 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @max11100_channels, align 4
  %44 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @max11100_channels, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 0
  %52 = call i32 @devm_regulator_get(%struct.TYPE_5__* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.max11100_state*, %struct.max11100_state** %6, align 8
  %54 = getelementptr inbounds %struct.max11100_state, %struct.max11100_state* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.max11100_state*, %struct.max11100_state** %6, align 8
  %56 = getelementptr inbounds %struct.max11100_state, %struct.max11100_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %15
  %61 = load %struct.max11100_state*, %struct.max11100_state** %6, align 8
  %62 = getelementptr inbounds %struct.max11100_state, %struct.max11100_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @PTR_ERR(i32 %63)
  store i32 %64, i32* %2, align 4
  br label %87

65:                                               ; preds = %15
  %66 = load %struct.max11100_state*, %struct.max11100_state** %6, align 8
  %67 = getelementptr inbounds %struct.max11100_state, %struct.max11100_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @regulator_enable(i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %87

74:                                               ; preds = %65
  %75 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %76 = call i32 @iio_device_register(%struct.iio_dev* %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %81

80:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %87

81:                                               ; preds = %79
  %82 = load %struct.max11100_state*, %struct.max11100_state** %6, align 8
  %83 = getelementptr inbounds %struct.max11100_state, %struct.max11100_state* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @regulator_disable(i32 %84)
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %81, %80, %72, %60, %12
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.max11100_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
