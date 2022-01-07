; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc161s626.c_ti_adc_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc161s626.c_ti_adc_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32, i32* }
%struct.ti_adc_data = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ti_adc_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_adc_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ti_adc_data*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %10, %struct.iio_poll_func** %5, align 8
  %11 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %12 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %11, i32 0, i32 0
  %13 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  store %struct.iio_dev* %13, %struct.iio_dev** %6, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.ti_adc_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.ti_adc_data* %15, %struct.ti_adc_data** %7, align 8
  %16 = load %struct.ti_adc_data*, %struct.ti_adc_data** %7, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load %struct.ti_adc_data*, %struct.ti_adc_data** %7, align 8
  %22 = getelementptr inbounds %struct.ti_adc_data, %struct.ti_adc_data* %21, i32 0, i32 0
  %23 = call i32 @ti_adc_read_measurement(%struct.ti_adc_data* %16, i32* %20, i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %2
  %27 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %28 = load %struct.ti_adc_data*, %struct.ti_adc_data** %7, align 8
  %29 = getelementptr inbounds %struct.ti_adc_data, %struct.ti_adc_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %32 = call i32 @iio_get_time_ns(%struct.iio_dev* %31)
  %33 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %27, i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %26, %2
  %35 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @iio_trigger_notify_done(i32 %37)
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %39
}

declare dso_local %struct.ti_adc_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ti_adc_read_measurement(%struct.ti_adc_data*, i32*, i32*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
