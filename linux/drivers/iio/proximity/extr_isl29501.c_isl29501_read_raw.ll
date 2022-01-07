; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.isl29501_private = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @isl29501_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29501_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.isl29501_private*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.isl29501_private* @iio_priv(%struct.iio_dev* %13)
  store %struct.isl29501_private* %14, %struct.isl29501_private** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %42 [
    i64 130, label %16
    i64 128, label %21
    i64 131, label %27
    i64 129, label %32
    i64 132, label %37
  ]

16:                                               ; preds = %5
  %17 = load %struct.isl29501_private*, %struct.isl29501_private** %12, align 8
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @isl29501_get_raw(%struct.isl29501_private* %17, %struct.iio_chan_spec* %18, i32* %19)
  store i32 %20, i32* %6, align 4
  br label %45

21:                                               ; preds = %5
  %22 = load %struct.isl29501_private*, %struct.isl29501_private** %12, align 8
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @isl29501_get_scale(%struct.isl29501_private* %22, %struct.iio_chan_spec* %23, i32* %24, i32* %25)
  store i32 %26, i32* %6, align 4
  br label %45

27:                                               ; preds = %5
  %28 = load %struct.isl29501_private*, %struct.isl29501_private** %12, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @isl29501_get_inttime(%struct.isl29501_private* %28, i32* %29, i32* %30)
  store i32 %31, i32* %6, align 4
  br label %45

32:                                               ; preds = %5
  %33 = load %struct.isl29501_private*, %struct.isl29501_private** %12, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @isl29501_get_freq(%struct.isl29501_private* %33, i32* %34, i32* %35)
  store i32 %36, i32* %6, align 4
  br label %45

37:                                               ; preds = %5
  %38 = load %struct.isl29501_private*, %struct.isl29501_private** %12, align 8
  %39 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @isl29501_get_calibbias(%struct.isl29501_private* %38, %struct.iio_chan_spec* %39, i32* %40)
  store i32 %41, i32* %6, align 4
  br label %45

42:                                               ; preds = %5
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %37, %32, %27, %21, %16
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.isl29501_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @isl29501_get_raw(%struct.isl29501_private*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @isl29501_get_scale(%struct.isl29501_private*, %struct.iio_chan_spec*, i32*, i32*) #1

declare dso_local i32 @isl29501_get_inttime(%struct.isl29501_private*, i32*, i32*) #1

declare dso_local i32 @isl29501_get_freq(%struct.isl29501_private*, i32*, i32*) #1

declare dso_local i32 @isl29501_get_calibbias(%struct.isl29501_private*, %struct.iio_chan_spec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
