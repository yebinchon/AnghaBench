; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5686.c_ad5686_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5686.c_ad5686_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ad5686_state = type { i32 (%struct.ad5686_state*, i32)*, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad5686_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5686_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad5686_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ad5686_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad5686_state* %15, %struct.ad5686_state** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %63 [
    i64 129, label %17
    i64 128, label %52
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %22 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %21, i32 0, i32 0
  %23 = load i32 (%struct.ad5686_state*, i32)*, i32 (%struct.ad5686_state*, i32)** %22, align 8
  %24 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %26 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %23(%struct.ad5686_state* %24, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %30 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %17
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %66

36:                                               ; preds = %17
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %37, %41
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @GENMASK(i32 %47, i32 0)
  %49 = and i32 %42, %48
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %51, i32* %6, align 4
  br label %66

52:                                               ; preds = %5
  %53 = load %struct.ad5686_state*, %struct.ad5686_state** %12, align 8
  %54 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %58 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %62, i32* %6, align 4
  br label %66

63:                                               ; preds = %5
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %52, %36, %34
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.ad5686_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
