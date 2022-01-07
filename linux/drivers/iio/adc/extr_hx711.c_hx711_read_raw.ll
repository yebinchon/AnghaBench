; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hx711.c_hx711_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hx711.c_hx711_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.hx711_data = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @hx711_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hx711_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hx711_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.hx711_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.hx711_data* %14, %struct.hx711_data** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %51 [
    i64 129, label %16
    i64 128, label %37
  ]

16:                                               ; preds = %5
  %17 = load %struct.hx711_data*, %struct.hx711_data** %12, align 8
  %18 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.hx711_data*, %struct.hx711_data** %12, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @hx711_reset_read(%struct.hx711_data* %20, i32 %23)
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.hx711_data*, %struct.hx711_data** %12, align 8
  %27 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %16
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  br label %54

35:                                               ; preds = %16
  %36 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %36, i32* %6, align 4
  br label %54

37:                                               ; preds = %5
  %38 = load i32*, i32** %9, align 8
  store i32 0, i32* %38, align 4
  %39 = load %struct.hx711_data*, %struct.hx711_data** %12, align 8
  %40 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.hx711_data*, %struct.hx711_data** %12, align 8
  %43 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @hx711_get_gain_to_scale(i32 %44)
  %46 = load i32*, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.hx711_data*, %struct.hx711_data** %12, align 8
  %48 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %50, i32* %6, align 4
  br label %54

51:                                               ; preds = %5
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %37, %35, %32
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.hx711_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hx711_reset_read(%struct.hx711_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hx711_get_gain_to_scale(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
