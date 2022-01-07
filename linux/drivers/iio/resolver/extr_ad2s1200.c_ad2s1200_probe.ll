; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/resolver/extr_ad2s1200.c_ad2s1200_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/resolver/extr_ad2s1200.c_ad2s1200_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.ad2s1200_state = type { i8*, i8*, %struct.spi_device*, i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"adi,sample\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to claim SAMPLE gpio: err=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"adi,rdvel\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to claim RDVEL gpio: err=%ld\0A\00", align 1
@ad2s1200_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad2s1200_channels = common dso_local global i32 0, align 4
@AD2S1200_HZ = common dso_local global i32 0, align 4
@SPI_MODE_3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"spi_setup failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad2s1200_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad2s1200_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad2s1200_state*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %8, i32 32)
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %118

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = call i32 @spi_set_drvdata(%struct.spi_device* %16, %struct.iio_dev* %17)
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = call %struct.ad2s1200_state* @iio_priv(%struct.iio_dev* %19)
  store %struct.ad2s1200_state* %20, %struct.ad2s1200_state** %4, align 8
  %21 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %4, align 8
  %22 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %21, i32 0, i32 3
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %4, align 8
  %26 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %25, i32 0, i32 2
  store %struct.spi_device* %24, %struct.spi_device** %26, align 8
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %30 = call i8* @devm_gpiod_get(i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %4, align 8
  %32 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %4, align 8
  %34 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %15
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  %41 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %4, align 8
  %42 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %4, align 8
  %47 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @PTR_ERR(i8* %48)
  store i32 %49, i32* %2, align 4
  br label %118

50:                                               ; preds = %15
  %51 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %52 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %51, i32 0, i32 0
  %53 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %54 = call i8* @devm_gpiod_get(i32* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %4, align 8
  %56 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %4, align 8
  %58 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %50
  %63 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 0
  %65 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %4, align 8
  %66 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR(i8* %67)
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %4, align 8
  %71 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @PTR_ERR(i8* %72)
  store i32 %73, i32* %2, align 4
  br label %118

74:                                               ; preds = %50
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 0
  %77 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %78 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32* %76, i32** %79, align 8
  %80 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 4
  store i32* @ad2s1200_info, i32** %81, align 8
  %82 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %83 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %84 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @ad2s1200_channels, align 4
  %86 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %87 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @ad2s1200_channels, align 4
  %89 = call i32 @ARRAY_SIZE(i32 %88)
  %90 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %93 = call %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device* %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %97 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @AD2S1200_HZ, align 4
  %99 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %100 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @SPI_MODE_3, align 4
  %102 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %103 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %105 = call i32 @spi_setup(%struct.spi_device* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %74
  %109 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %110 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %109, i32 0, i32 0
  %111 = call i32 (i32*, i8*, ...) @dev_err(i32* %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %118

113:                                              ; preds = %74
  %114 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %115 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %114, i32 0, i32 0
  %116 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %117 = call i32 @devm_iio_device_register(i32* %115, %struct.iio_dev* %116)
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %113, %108, %62, %38, %12
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.ad2s1200_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
