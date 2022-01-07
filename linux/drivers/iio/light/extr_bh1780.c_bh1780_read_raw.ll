; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_bh1780.c_bh1780_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_bh1780.c_bh1780_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.bh1780_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BH1780_REG_DLOW = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BH1780_INTERVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @bh1780_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1780_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bh1780_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.bh1780_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.bh1780_data* %15, %struct.bh1780_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %57 [
    i64 129, label %17
    i64 130, label %51
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %48 [
    i32 128, label %21
  ]

21:                                               ; preds = %17
  %22 = load %struct.bh1780_data*, %struct.bh1780_data** %12, align 8
  %23 = getelementptr inbounds %struct.bh1780_data, %struct.bh1780_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @pm_runtime_get_sync(i32* %25)
  %27 = load %struct.bh1780_data*, %struct.bh1780_data** %12, align 8
  %28 = load i32, i32* @BH1780_REG_DLOW, align 4
  %29 = call i32 @bh1780_read_word(%struct.bh1780_data* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %6, align 4
  br label %60

34:                                               ; preds = %21
  %35 = load %struct.bh1780_data*, %struct.bh1780_data** %12, align 8
  %36 = getelementptr inbounds %struct.bh1780_data, %struct.bh1780_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @pm_runtime_mark_last_busy(i32* %38)
  %40 = load %struct.bh1780_data*, %struct.bh1780_data** %12, align 8
  %41 = getelementptr inbounds %struct.bh1780_data, %struct.bh1780_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @pm_runtime_put_autosuspend(i32* %43)
  %45 = load i32, i32* %13, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %47, i32* %6, align 4
  br label %60

48:                                               ; preds = %17
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %60

51:                                               ; preds = %5
  %52 = load i32*, i32** %9, align 8
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* @BH1780_INTERVAL, align 4
  %54 = mul nsw i32 %53, 1000
  %55 = load i32*, i32** %10, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %56, i32* %6, align 4
  br label %60

57:                                               ; preds = %5
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %57, %51, %48, %34, %32
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.bh1780_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @bh1780_read_word(%struct.bh1780_data*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
