; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hi8435.c_hi8435_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hi8435.c_hi8435_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }
%struct.hi8435_priv = type { i32*, i32*, i32, i32, %struct.spi_device* }
%struct.gpio_desc = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@HI8435_CTRL_REG = common dso_local global i32 0, align 4
@HI8435_CTRL_SRST = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@hi8435_info = common dso_local global i32 0, align 4
@hi8435_channels = common dso_local global i32 0, align 4
@HI8435_GOCENHYS_REG = common dso_local global i32 0, align 4
@HI8435_SOCENHYS_REG = common dso_local global i32 0, align 4
@hi8435_trigger_handler = common dso_local global i32 0, align 4
@hi8435_triggered_event_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @hi8435_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi8435_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.hi8435_priv*, align 8
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__* %9, i32 32)
  store %struct.iio_dev* %10, %struct.iio_dev** %4, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = icmp ne %struct.iio_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %124

16:                                               ; preds = %1
  %17 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %18 = call %struct.hi8435_priv* @iio_priv(%struct.iio_dev* %17)
  store %struct.hi8435_priv* %18, %struct.hi8435_priv** %5, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.hi8435_priv*, %struct.hi8435_priv** %5, align 8
  %21 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %20, i32 0, i32 4
  store %struct.spi_device* %19, %struct.spi_device** %21, align 8
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %25 = call %struct.gpio_desc* @devm_gpiod_get(%struct.TYPE_9__* %23, i32* null, i32 %24)
  store %struct.gpio_desc* %25, %struct.gpio_desc** %6, align 8
  %26 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %27 = call i64 @IS_ERR(%struct.gpio_desc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %16
  %30 = load %struct.hi8435_priv*, %struct.hi8435_priv** %5, align 8
  %31 = load i32, i32* @HI8435_CTRL_REG, align 4
  %32 = load i32, i32* @HI8435_CTRL_SRST, align 4
  %33 = call i32 @hi8435_writeb(%struct.hi8435_priv* %30, i32 %31, i32 %32)
  %34 = load %struct.hi8435_priv*, %struct.hi8435_priv** %5, align 8
  %35 = load i32, i32* @HI8435_CTRL_REG, align 4
  %36 = call i32 @hi8435_writeb(%struct.hi8435_priv* %34, i32 %35, i32 0)
  br label %41

37:                                               ; preds = %16
  %38 = call i32 @udelay(i32 5)
  %39 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %40 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %39, i32 1)
  br label %41

41:                                               ; preds = %37, %29
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %44 = call i32 @spi_set_drvdata(%struct.spi_device* %42, %struct.iio_dev* %43)
  %45 = load %struct.hi8435_priv*, %struct.hi8435_priv** %5, align 8
  %46 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %45, i32 0, i32 3
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 0
  %50 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %52, align 8
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %60)
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %67 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 2
  store i32* @hi8435_info, i32** %70, align 8
  %71 = load i32, i32* @hi8435_channels, align 4
  %72 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @hi8435_channels, align 4
  %75 = call i32 @ARRAY_SIZE(i32 %74)
  %76 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.hi8435_priv*, %struct.hi8435_priv** %5, align 8
  %79 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %78, i32 0, i32 2
  store i32 -1, i32* %79, align 8
  %80 = load %struct.hi8435_priv*, %struct.hi8435_priv** %5, align 8
  %81 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 2, i32* %83, align 4
  %84 = load %struct.hi8435_priv*, %struct.hi8435_priv** %5, align 8
  %85 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 2, i32* %87, align 4
  %88 = load %struct.hi8435_priv*, %struct.hi8435_priv** %5, align 8
  %89 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 4, i32* %91, align 4
  %92 = load %struct.hi8435_priv*, %struct.hi8435_priv** %5, align 8
  %93 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 4, i32* %95, align 4
  %96 = load %struct.hi8435_priv*, %struct.hi8435_priv** %5, align 8
  %97 = load i32, i32* @HI8435_GOCENHYS_REG, align 4
  %98 = call i32 @hi8435_writew(%struct.hi8435_priv* %96, i32 %97, i32 518)
  %99 = load %struct.hi8435_priv*, %struct.hi8435_priv** %5, align 8
  %100 = load i32, i32* @HI8435_SOCENHYS_REG, align 4
  %101 = call i32 @hi8435_writew(%struct.hi8435_priv* %99, i32 %100, i32 518)
  %102 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %103 = load i32, i32* @hi8435_trigger_handler, align 4
  %104 = call i32 @iio_triggered_event_setup(%struct.iio_dev* %102, i32* null, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %41
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %124

109:                                              ; preds = %41
  %110 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %111 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %110, i32 0, i32 0
  %112 = load i32, i32* @hi8435_triggered_event_cleanup, align 4
  %113 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %114 = call i32 @devm_add_action_or_reset(%struct.TYPE_9__* %111, i32 %112, %struct.iio_dev* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %124

119:                                              ; preds = %109
  %120 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %121 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %120, i32 0, i32 0
  %122 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %123 = call i32 @devm_iio_device_register(%struct.TYPE_9__* %121, %struct.iio_dev* %122)
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %119, %117, %107, %13
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.hi8435_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @hi8435_writeb(%struct.hi8435_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(%struct.gpio_desc*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @hi8435_writew(%struct.hi8435_priv*, i32, i32) #1

declare dso_local i32 @iio_triggered_event_setup(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.TYPE_9__*, i32, %struct.iio_dev*) #1

declare dso_local i32 @devm_iio_device_register(%struct.TYPE_9__*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
