; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.at91_adc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at91_adc_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.at91_adc_state*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %9, %struct.iio_poll_func** %5, align 8
  %10 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %11 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %10, i32 0, i32 0
  %12 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  store %struct.iio_dev* %12, %struct.iio_dev** %6, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.at91_adc_state* @iio_priv(%struct.iio_dev* %13)
  store %struct.at91_adc_state* %14, %struct.at91_adc_state** %7, align 8
  %15 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %16 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %22 = call i32 @at91_adc_trigger_handler_dma(%struct.iio_dev* %21)
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %25 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %26 = call i32 @at91_adc_trigger_handler_nodma(%struct.iio_dev* %24, %struct.iio_poll_func* %25)
  br label %27

27:                                               ; preds = %23, %20
  %28 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @iio_trigger_notify_done(i32 %30)
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %32
}

declare dso_local %struct.at91_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @at91_adc_trigger_handler_dma(%struct.iio_dev*) #1

declare dso_local i32 @at91_adc_trigger_handler_nodma(%struct.iio_dev*, %struct.iio_poll_func*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
