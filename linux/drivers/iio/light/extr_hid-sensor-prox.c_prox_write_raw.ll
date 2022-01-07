; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_hid-sensor-prox.c_prox_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_hid-sensor-prox.c_prox_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.prox_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @prox_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prox_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.prox_state*, align 8
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.prox_state* @iio_priv(%struct.iio_dev* %13)
  store %struct.prox_state* %14, %struct.prox_state** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i64, i64* %10, align 8
  switch i64 %15, label %28 [
    i64 128, label %16
    i64 129, label %22
  ]

16:                                               ; preds = %5
  %17 = load %struct.prox_state*, %struct.prox_state** %11, align 8
  %18 = getelementptr inbounds %struct.prox_state, %struct.prox_state* %17, i32 0, i32 0
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @hid_sensor_write_samp_freq_value(i32* %18, i32 %19, i32 %20)
  store i32 %21, i32* %12, align 4
  br label %31

22:                                               ; preds = %5
  %23 = load %struct.prox_state*, %struct.prox_state** %11, align 8
  %24 = getelementptr inbounds %struct.prox_state, %struct.prox_state* %23, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @hid_sensor_write_raw_hyst_value(i32* %24, i32 %25, i32 %26)
  store i32 %27, i32* %12, align 4
  br label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %28, %22, %16
  %32 = load i32, i32* %12, align 4
  ret i32 %32
}

declare dso_local %struct.prox_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @hid_sensor_write_samp_freq_value(i32*, i32, i32) #1

declare dso_local i32 @hid_sensor_write_raw_hyst_value(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
