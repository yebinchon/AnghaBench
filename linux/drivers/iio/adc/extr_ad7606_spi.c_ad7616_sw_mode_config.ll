; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606_spi.c_ad7616_sw_mode_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606_spi.c_ad7616_sw_mode_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad7606_state = type { %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ad7606_state*, i32, i32, i32)* }

@ad7616_sw_channels = common dso_local global i32 0, align 4
@ad7616_write_scale_sw = common dso_local global i32 0, align 4
@ad7616_write_os_sw = common dso_local global i32 0, align 4
@AD7616_CONFIGURATION_REGISTER = common dso_local global i32 0, align 4
@AD7616_BURST_MODE = common dso_local global i32 0, align 4
@AD7616_SEQEN_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ad7616_sw_mode_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7616_sw_mode_config(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.ad7606_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %4 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %5 = call %struct.ad7606_state* @iio_priv(%struct.iio_dev* %4)
  store %struct.ad7606_state* %5, %struct.ad7606_state** %3, align 8
  %6 = load i32, i32* @ad7616_sw_channels, align 4
  %7 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %8 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @ad7616_write_scale_sw, align 4
  %10 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %11 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %13 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %12, i32 0, i32 1
  store i32* @ad7616_write_os_sw, i32** %13, align 8
  %14 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %15 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ad7606_state*, i32, i32, i32)*, i32 (%struct.ad7606_state*, i32, i32, i32)** %17, align 8
  %19 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %20 = load i32, i32* @AD7616_CONFIGURATION_REGISTER, align 4
  %21 = load i32, i32* @AD7616_BURST_MODE, align 4
  %22 = load i32, i32* @AD7616_SEQEN_MODE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @AD7616_BURST_MODE, align 4
  %25 = load i32, i32* @AD7616_SEQEN_MODE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 %18(%struct.ad7606_state* %19, i32 %20, i32 %23, i32 %26)
  ret i32 %27
}

declare dso_local %struct.ad7606_state* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
