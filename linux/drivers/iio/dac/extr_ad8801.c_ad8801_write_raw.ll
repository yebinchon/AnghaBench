; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad8801.c_ad8801_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad8801.c_ad8801_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.ad8801_state = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ad8801_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad8801_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad8801_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ad8801_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad8801_state* %15, %struct.ad8801_state** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %45 [
    i64 128, label %17
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %18, 256
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %50

26:                                               ; preds = %20
  %27 = load %struct.ad8801_state*, %struct.ad8801_state** %12, align 8
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @ad8801_spi_write(%struct.ad8801_state* %27, i64 %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.ad8801_state*, %struct.ad8801_state** %12, align 8
  %38 = getelementptr inbounds %struct.ad8801_state, %struct.ad8801_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %41 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 %36, i32* %43, align 4
  br label %44

44:                                               ; preds = %35, %26
  br label %48

45:                                               ; preds = %5
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %45, %44
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %23
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.ad8801_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad8801_spi_write(%struct.ad8801_state*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
