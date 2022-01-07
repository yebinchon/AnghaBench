; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_handle_adc_eoc_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_handle_adc_eoc_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.at91_adc_state = type { i32, i32, i32, i32 }

@AT91_ADC_LCDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.iio_dev*)* @handle_adc_eoc_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_adc_eoc_trigger(i32 %0, %struct.iio_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.at91_adc_state*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.iio_dev* %1, %struct.iio_dev** %4, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %7 = call %struct.at91_adc_state* @iio_priv(%struct.iio_dev* %6)
  store %struct.at91_adc_state* %7, %struct.at91_adc_state** %5, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %9 = call i64 @iio_buffer_enabled(%struct.iio_dev* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @disable_irq_nosync(i32 %12)
  %14 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @iio_trigger_poll(i32 %16)
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.at91_adc_state*, %struct.at91_adc_state** %5, align 8
  %20 = load %struct.at91_adc_state*, %struct.at91_adc_state** %5, align 8
  %21 = load %struct.at91_adc_state*, %struct.at91_adc_state** %5, align 8
  %22 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @AT91_ADC_CHAN(%struct.at91_adc_state* %20, i32 %23)
  %25 = call i32 @at91_adc_readl(%struct.at91_adc_state* %19, i32 %24)
  %26 = load %struct.at91_adc_state*, %struct.at91_adc_state** %5, align 8
  %27 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.at91_adc_state*, %struct.at91_adc_state** %5, align 8
  %29 = load i32, i32* @AT91_ADC_LCDR, align 4
  %30 = call i32 @at91_adc_readl(%struct.at91_adc_state* %28, i32 %29)
  %31 = load %struct.at91_adc_state*, %struct.at91_adc_state** %5, align 8
  %32 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.at91_adc_state*, %struct.at91_adc_state** %5, align 8
  %34 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %33, i32 0, i32 1
  %35 = call i32 @wake_up_interruptible(i32* %34)
  br label %36

36:                                               ; preds = %18, %11
  ret void
}

declare dso_local %struct.at91_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @iio_trigger_poll(i32) #1

declare dso_local i32 @at91_adc_readl(%struct.at91_adc_state*, i32) #1

declare dso_local i32 @AT91_ADC_CHAN(%struct.at91_adc_state*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
