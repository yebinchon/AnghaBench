; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad7303.c_ad7303_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad7303.c_ad7303_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ad7303_state = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ad7303_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7303_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad7303_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ad7303_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad7303_state* %15, %struct.ad7303_state** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %56 [
    i64 128, label %17
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  %24 = icmp sge i32 %18, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %17
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %61

31:                                               ; preds = %25
  %32 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.ad7303_state*, %struct.ad7303_state** %12, align 8
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ad7303_write(%struct.ad7303_state* %35, i32 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.ad7303_state*, %struct.ad7303_state** %12, align 8
  %46 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %49 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %44, i32* %51, align 4
  br label %52

52:                                               ; preds = %43, %31
  %53 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  br label %59

56:                                               ; preds = %5
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %28
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.ad7303_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad7303_write(%struct.ad7303_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
