; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_hid-sensor-temperature.c_temperature_proc_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_hid-sensor-temperature.c_temperature_proc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_hub_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.temperature_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_sensor_hub_device*, i32, i8*)* @temperature_proc_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temperature_proc_event(%struct.hid_sensor_hub_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.hid_sensor_hub_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.temperature_state*, align 8
  store %struct.hid_sensor_hub_device* %0, %struct.hid_sensor_hub_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.iio_dev* @platform_get_drvdata(i8* %9)
  store %struct.iio_dev* %10, %struct.iio_dev** %7, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %12 = call %struct.temperature_state* @iio_priv(%struct.iio_dev* %11)
  store %struct.temperature_state* %12, %struct.temperature_state** %8, align 8
  %13 = load %struct.temperature_state*, %struct.temperature_state** %8, align 8
  %14 = getelementptr inbounds %struct.temperature_state, %struct.temperature_state* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = load %struct.temperature_state*, %struct.temperature_state** %8, align 8
  %21 = getelementptr inbounds %struct.temperature_state, %struct.temperature_state* %20, i32 0, i32 0
  %22 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %23 = call i32 @iio_get_time_ns(%struct.iio_dev* %22)
  %24 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %19, i32* %21, i32 %23)
  br label %25

25:                                               ; preds = %18, %3
  ret i32 0
}

declare dso_local %struct.iio_dev* @platform_get_drvdata(i8*) #1

declare dso_local %struct.temperature_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
