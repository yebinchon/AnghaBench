; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stmpe-adc.c_stmpe_adc_temp_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stmpe-adc.c_stmpe_adc_temp_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec = type { i32, i32, i32, i32 }

@IIO_TEMP = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_PROCESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_chan_spec*, i32)* @stmpe_adc_temp_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmpe_adc_temp_chan(%struct.iio_chan_spec* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_chan_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.iio_chan_spec* %0, %struct.iio_chan_spec** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @IIO_TEMP, align 4
  %6 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %3, align 8
  %7 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @IIO_CHAN_INFO_PROCESSED, align 4
  %9 = call i32 @BIT(i32 %8)
  %10 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %3, align 8
  %11 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %3, align 8
  %13 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %3, align 8
  %16 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  ret void
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
