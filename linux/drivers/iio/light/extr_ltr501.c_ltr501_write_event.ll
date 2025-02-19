; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_write_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_write_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @ltr501_write_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltr501_write_event(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %13, align 4
  switch i32 %16, label %41 [
    i32 128, label %17
    i32 129, label %32
  ]

17:                                               ; preds = %7
  %18 = load i32, i32* %15, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %44

23:                                               ; preds = %17
  %24 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @ltr501_write_thresh(%struct.iio_dev* %24, %struct.iio_chan_spec* %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  br label %44

32:                                               ; preds = %7
  %33 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %34 = call i32 @iio_priv(%struct.iio_dev* %33)
  %35 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %36 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @ltr501_write_intr_prst(i32 %34, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  br label %44

41:                                               ; preds = %7
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %32, %23, %20
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @ltr501_write_thresh(%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ltr501_write_intr_prst(i32, i32, i32, i32) #1

declare dso_local i32 @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
