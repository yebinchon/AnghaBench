; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads7950.c_ti_ads7950_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads7950.c_ti_ads7950_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.ti_ads7950_state = type { i32, i32*, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ti_ads7950_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_ads7950_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ti_ads7950_state*, align 8
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
  %15 = call %struct.ti_ads7950_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ti_ads7950_state* %15, %struct.ti_ads7950_state** %7, align 8
  %16 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %7, align 8
  %17 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %7, align 8
  %20 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %7, align 8
  %23 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %22, i32 0, i32 2
  %24 = call i32 @spi_sync(i32 %21, i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %37

28:                                               ; preds = %2
  %29 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %30 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %7, align 8
  %31 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %35 = call i32 @iio_get_time_ns(%struct.iio_dev* %34)
  %36 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %29, i32* %33, i32 %35)
  br label %37

37:                                               ; preds = %28, %27
  %38 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %7, align 8
  %39 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @iio_trigger_notify_done(i32 %43)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %45
}

declare dso_local %struct.ti_ads7950_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
