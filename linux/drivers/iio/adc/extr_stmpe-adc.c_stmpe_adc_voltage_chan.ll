; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stmpe-adc.c_stmpe_adc_voltage_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stmpe-adc.c_stmpe_adc_voltage_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec = type { i32, i32, i8*, i8*, i32 }

@IIO_VOLTAGE = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_RAW = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_chan_spec*, i32)* @stmpe_adc_voltage_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmpe_adc_voltage_chan(%struct.iio_chan_spec* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_chan_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.iio_chan_spec* %0, %struct.iio_chan_spec** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @IIO_VOLTAGE, align 4
  %6 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %3, align 8
  %7 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @IIO_CHAN_INFO_RAW, align 4
  %9 = call i8* @BIT(i32 %8)
  %10 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %3, align 8
  %11 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @IIO_CHAN_INFO_SCALE, align 4
  %13 = call i8* @BIT(i32 %12)
  %14 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %3, align 8
  %15 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %3, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %3, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local i8* @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
