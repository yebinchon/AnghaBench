; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_set_conversion_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_set_conversion_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.vf610_adc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32)* @vf610_set_conversion_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_set_conversion_mode(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vf610_adc*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %9 = call %struct.vf610_adc* @iio_priv(%struct.iio_dev* %8)
  store %struct.vf610_adc* %9, %struct.vf610_adc** %7, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.vf610_adc*, %struct.vf610_adc** %7, align 8
  %15 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.vf610_adc*, %struct.vf610_adc** %7, align 8
  %18 = call i32 @vf610_adc_calculate_rates(%struct.vf610_adc* %17)
  %19 = load %struct.vf610_adc*, %struct.vf610_adc** %7, align 8
  %20 = call i32 @vf610_adc_hw_init(%struct.vf610_adc* %19)
  %21 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %22 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  ret i32 0
}

declare dso_local %struct.vf610_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vf610_adc_calculate_rates(%struct.vf610_adc*) #1

declare dso_local i32 @vf610_adc_hw_init(%struct.vf610_adc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
