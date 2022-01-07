; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cc10001_adc.c_cc10001_adc_read_raw_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cc10001_adc.c_cc10001_adc_read_raw_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.cc10001_adc_device = type { i32, i32 }

@CC10001_MAX_POLL_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*)* @cc10001_adc_read_raw_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc10001_adc_read_raw_voltage(%struct.iio_dev* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.iio_chan_spec*, align 8
  %5 = alloca %struct.cc10001_adc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %4, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.cc10001_adc_device* @iio_priv(%struct.iio_dev* %8)
  store %struct.cc10001_adc_device* %9, %struct.cc10001_adc_device** %5, align 8
  %10 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %11 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %16 = call i32 @cc10001_adc_power_up(%struct.cc10001_adc_device* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %19 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CC10001_MAX_POLL_COUNT, align 4
  %22 = udiv i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cc10001_adc_start(%struct.cc10001_adc_device* %23, i32 %26)
  %28 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @cc10001_adc_poll_done(%struct.iio_dev* %28, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %35 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %17
  %39 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %40 = call i32 @cc10001_adc_power_down(%struct.cc10001_adc_device* %39)
  br label %41

41:                                               ; preds = %38, %17
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local %struct.cc10001_adc_device* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @cc10001_adc_power_up(%struct.cc10001_adc_device*) #1

declare dso_local i32 @cc10001_adc_start(%struct.cc10001_adc_device*, i32) #1

declare dso_local i32 @cc10001_adc_poll_done(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @cc10001_adc_power_down(%struct.cc10001_adc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
