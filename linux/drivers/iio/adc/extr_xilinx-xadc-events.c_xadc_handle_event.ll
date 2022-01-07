; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-events.c_xadc_handle_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-events.c_xadc_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }

@IIO_TEMP = common dso_local global i64 0, align 8
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_EV_DIR_EITHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*, i32)* @xadc_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xadc_handle_event(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_chan_spec*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %46

9:                                                ; preds = %2
  %10 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.iio_chan_spec* @xadc_event_to_channel(%struct.iio_dev* %10, i32 %11)
  store %struct.iio_chan_spec* %12, %struct.iio_chan_spec** %5, align 8
  %13 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %14 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IIO_TEMP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %9
  %19 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %27 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %28 = call i32 @IIO_UNMOD_EVENT_CODE(i64 %22, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %30 = call i32 @iio_get_time_ns(%struct.iio_dev* %29)
  %31 = call i32 @iio_push_event(%struct.iio_dev* %19, i32 %28, i32 %30)
  br label %46

32:                                               ; preds = %9
  %33 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %34 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %35 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %41 = load i32, i32* @IIO_EV_DIR_EITHER, align 4
  %42 = call i32 @IIO_UNMOD_EVENT_CODE(i64 %36, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %44 = call i32 @iio_get_time_ns(%struct.iio_dev* %43)
  %45 = call i32 @iio_push_event(%struct.iio_dev* %33, i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %8, %32, %18
  ret void
}

declare dso_local %struct.iio_chan_spec* @xadc_event_to_channel(%struct.iio_dev*, i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i64, i32, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
