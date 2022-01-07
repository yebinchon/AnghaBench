; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5755.c_ad5755_get_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5755.c_ad5755_get_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5755_state = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5755_state*, %struct.iio_chan_spec*)* @ad5755_get_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5755_get_offset(%struct.ad5755_state* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca %struct.ad5755_state*, align 8
  %4 = alloca %struct.iio_chan_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ad5755_state* %0, %struct.ad5755_state** %3, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %4, align 8
  %7 = load %struct.ad5755_state*, %struct.ad5755_state** %3, align 8
  %8 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %9 = call i32 @ad5755_get_min_max(%struct.ad5755_state* %7, %struct.iio_chan_spec* %8, i32* %5, i32* %6)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %12 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 1, %14
  %16 = mul nsw i32 %10, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sdiv i32 %16, %19
  ret i32 %20
}

declare dso_local i32 @ad5755_get_min_max(%struct.ad5755_state*, %struct.iio_chan_spec*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
