; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hid-sensor-humidity.c_humidity_adjust_channel_bit_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hid-sensor-humidity.c_humidity_adjust_channel_bit_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_chan_spec*, i32, i32)* @humidity_adjust_channel_bit_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @humidity_adjust_channel_bit_mask(%struct.iio_chan_spec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iio_chan_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iio_chan_spec* %0, %struct.iio_chan_spec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %7, i64 %9
  %11 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i8 115, i8* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 %13, 8
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %15, i64 %17
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %14, i32* %20, align 4
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i64 %23
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 32, i32* %26, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
