; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm36651.c_cm36651_read_prox_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm36651.c_cm36651_read_prox_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.cm36651_data = type { i32, i32 }

@CM36651_PROXIMITY_EV_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32)* @cm36651_read_prox_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm36651_read_prox_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cm36651_data*, align 8
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.cm36651_data* @iio_priv(%struct.iio_dev* %11)
  store %struct.cm36651_data* %12, %struct.cm36651_data** %9, align 8
  %13 = load %struct.cm36651_data*, %struct.cm36651_data** %9, align 8
  %14 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* @CM36651_PROXIMITY_EV_EN, align 4
  %17 = load %struct.cm36651_data*, %struct.cm36651_data** %9, align 8
  %18 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %17, i32 0, i32 1
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.cm36651_data*, %struct.cm36651_data** %9, align 8
  %21 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* %10, align 4
  ret i32 %23
}

declare dso_local %struct.cm36651_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
