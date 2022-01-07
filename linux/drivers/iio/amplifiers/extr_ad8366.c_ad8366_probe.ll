; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/amplifiers/extr_ad8366.c_ad8366_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/amplifiers/extr_ad8366.c_ad8366_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32, i32*, i32, %struct.TYPE_3__, i8*, i8* }
%struct.TYPE_3__ = type { i32* }
%struct.ad8366_state = type { i32, i32, i32*, i32, %struct.spi_device*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@ad8366_channels = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@ada4961_channels = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid device ID\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ad8366_infos = common dso_local global i32* null, align 8
@ad8366_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad8366_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad8366_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.ad8366_state*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %8, i32 40)
  store %struct.iio_dev* %9, %struct.iio_dev** %4, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = icmp eq %struct.iio_dev* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %135

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %17 = call %struct.ad8366_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad8366_state* %17, %struct.ad8366_state** %5, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = call i32 @devm_regulator_get(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ad8366_state*, %struct.ad8366_state** %5, align 8
  %22 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ad8366_state*, %struct.ad8366_state** %5, align 8
  %24 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IS_ERR(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %15
  %29 = load %struct.ad8366_state*, %struct.ad8366_state** %5, align 8
  %30 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regulator_enable(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %135

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %15
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %41 = call i32 @spi_set_drvdata(%struct.spi_device* %39, %struct.iio_dev* %40)
  %42 = load %struct.ad8366_state*, %struct.ad8366_state** %5, align 8
  %43 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %42, i32 0, i32 5
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = load %struct.ad8366_state*, %struct.ad8366_state** %5, align 8
  %47 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %46, i32 0, i32 4
  store %struct.spi_device* %45, %struct.spi_device** %47, align 8
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = call %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ad8366_state*, %struct.ad8366_state** %5, align 8
  %53 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ad8366_state*, %struct.ad8366_state** %5, align 8
  %55 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %79 [
    i32 130, label %57
    i32 129, label %65
    i32 128, label %65
  ]

57:                                               ; preds = %38
  %58 = load i8*, i8** @ad8366_channels, align 8
  %59 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @ad8366_channels, align 8
  %62 = call i8* @ARRAY_SIZE(i8* %61)
  %63 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  br label %85

65:                                               ; preds = %38, %38
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %66, i32 0, i32 0
  %68 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %69 = call i32 @devm_gpiod_get(i32* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.ad8366_state*, %struct.ad8366_state** %5, align 8
  %71 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load i8*, i8** @ada4961_channels, align 8
  %73 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @ada4961_channels, align 8
  %76 = call i8* @ARRAY_SIZE(i8* %75)
  %77 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %78 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  br label %85

79:                                               ; preds = %38
  %80 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %81 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %122

85:                                               ; preds = %65, %57
  %86 = load i32*, i32** @ad8366_infos, align 8
  %87 = load %struct.ad8366_state*, %struct.ad8366_state** %5, align 8
  %88 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load %struct.ad8366_state*, %struct.ad8366_state** %5, align 8
  %93 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %92, i32 0, i32 2
  store i32* %91, i32** %93, align 8
  %94 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %95 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %94, i32 0, i32 0
  %96 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %97 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32* %95, i32** %98, align 8
  %99 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %100 = call %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device* %99)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %104 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %106 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %105, i32 0, i32 1
  store i32* @ad8366_info, i32** %106, align 8
  %107 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %108 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %109 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %111 = call i32 @ad8366_write(%struct.iio_dev* %110, i32 0, i32 0)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %85
  br label %122

115:                                              ; preds = %85
  %116 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %117 = call i32 @iio_device_register(%struct.iio_dev* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %122

121:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %135

122:                                              ; preds = %120, %114, %79
  %123 = load %struct.ad8366_state*, %struct.ad8366_state** %5, align 8
  %124 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @IS_ERR(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %122
  %129 = load %struct.ad8366_state*, %struct.ad8366_state** %5, align 8
  %130 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @regulator_disable(i32 %131)
  br label %133

133:                                              ; preds = %128, %122
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %121, %35, %12
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ad8366_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ad8366_write(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
