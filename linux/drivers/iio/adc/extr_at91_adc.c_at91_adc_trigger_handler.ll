; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { i32, %struct.iio_dev* }
%struct.iio_dev = type { i32, i32, %struct.iio_chan_spec*, i32 }
%struct.iio_chan_spec = type { i32 }
%struct.at91_adc_state = type { i32, i32* }

@AT91_ADC_LCDR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at91_adc_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.at91_adc_state*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %12, %struct.iio_poll_func** %5, align 8
  %13 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %14 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %13, i32 0, i32 1
  %15 = load %struct.iio_dev*, %struct.iio_dev** %14, align 8
  store %struct.iio_dev* %15, %struct.iio_dev** %6, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %17 = call %struct.at91_adc_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.at91_adc_state* %17, %struct.at91_adc_state** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %54, %2
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %27 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @test_bit(i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %54

32:                                               ; preds = %24
  %33 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 2
  %35 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %35, i64 %37
  store %struct.iio_chan_spec* %38, %struct.iio_chan_spec** %8, align 8
  %39 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %40 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %41 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %42 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @AT91_ADC_CHAN(%struct.at91_adc_state* %40, i32 %43)
  %45 = call i32 @at91_adc_readl(%struct.at91_adc_state* %39, i32 %44)
  %46 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %47 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %32, %31
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %18

57:                                               ; preds = %18
  %58 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %59 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %60 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %63 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %58, i32* %61, i32 %64)
  %66 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @iio_trigger_notify_done(i32 %68)
  %70 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %71 = load i32, i32* @AT91_ADC_LCDR, align 4
  %72 = call i32 @at91_adc_readl(%struct.at91_adc_state* %70, i32 %71)
  %73 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %74 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @enable_irq(i32 %75)
  %77 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %77
}

declare dso_local %struct.at91_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @at91_adc_readl(%struct.at91_adc_state*, i32) #1

declare dso_local i32 @AT91_ADC_CHAN(%struct.at91_adc_state*, i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
