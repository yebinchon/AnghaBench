; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm36651.c_cm36651_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm36651.c_cm36651_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.cm36651_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @cm36651_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm36651_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cm36651_data*, align 8
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.cm36651_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.cm36651_data* %14, %struct.cm36651_data** %11, align 8
  %15 = load %struct.cm36651_data*, %struct.cm36651_data** %11, align 8
  %16 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i64, i64* %10, align 8
  switch i64 %18, label %30 [
    i64 128, label %19
    i64 129, label %24
  ]

19:                                               ; preds = %5
  %20 = load %struct.cm36651_data*, %struct.cm36651_data** %11, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @cm36651_read_channel(%struct.cm36651_data* %20, %struct.iio_chan_spec* %21, i32* %22)
  store i32 %23, i32* %12, align 4
  br label %33

24:                                               ; preds = %5
  %25 = load i32*, i32** %8, align 8
  store i32 0, i32* %25, align 4
  %26 = load %struct.cm36651_data*, %struct.cm36651_data** %11, align 8
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @cm36651_read_int_time(%struct.cm36651_data* %26, %struct.iio_chan_spec* %27, i32* %28)
  store i32 %29, i32* %12, align 4
  br label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %30, %24, %19
  %34 = load %struct.cm36651_data*, %struct.cm36651_data** %11, align 8
  %35 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %12, align 4
  ret i32 %37
}

declare dso_local %struct.cm36651_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cm36651_read_channel(%struct.cm36651_data*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @cm36651_read_int_time(%struct.cm36651_data*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
