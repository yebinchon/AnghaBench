; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_read_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_read_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32*, i32*)* @ltr501_read_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltr501_read_event(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load i32, i32* %13, align 4
  switch i32 %17, label %44 [
    i32 128, label %18
    i32 129, label %27
  ]

18:                                               ; preds = %7
  %19 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32*, i32** %14, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = call i32 @ltr501_read_thresh(%struct.iio_dev* %19, %struct.iio_chan_spec* %20, i32 %21, i32 %22, i32 %23, i32* %24, i32* %25)
  store i32 %26, i32* %8, align 4
  br label %47

27:                                               ; preds = %7
  %28 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %29 = call i32 @iio_priv(%struct.iio_dev* %28)
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %15, align 8
  %34 = call i32 @ltr501_read_intr_prst(i32 %29, i32 %32, i32* %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 1000000
  %38 = load i32*, i32** %14, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %15, align 8
  %40 = load i32, i32* %39, align 4
  %41 = srem i32 %40, 1000000
  %42 = load i32*, i32** %15, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %8, align 4
  br label %47

44:                                               ; preds = %7
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %27, %18
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @ltr501_read_thresh(%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ltr501_read_intr_prst(i32, i32, i32*) #1

declare dso_local i32 @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
