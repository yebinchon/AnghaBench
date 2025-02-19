; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_fsl-imx25-gcq.c_mx25_gcq_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_fsl-imx25-gcq.c_mx25_gcq_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32 }
%struct.iio_chan_spec = type { i64 }
%struct.mx25_gcq_priv = type { i32* }

@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mx25_gcq_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx25_gcq_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mx25_gcq_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.mx25_gcq_priv* @iio_priv(%struct.iio_dev* %14)
  store %struct.mx25_gcq_priv* %15, %struct.mx25_gcq_priv** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %43 [
    i64 129, label %17
    i64 128, label %31
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %21, i32 0, i32 1
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = load %struct.mx25_gcq_priv*, %struct.mx25_gcq_priv** %12, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @mx25_gcq_get_raw_value(i32* %22, %struct.iio_chan_spec* %23, %struct.mx25_gcq_priv* %24, i32* %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %28 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %6, align 4
  br label %46

31:                                               ; preds = %5
  %32 = load %struct.mx25_gcq_priv*, %struct.mx25_gcq_priv** %12, align 8
  %33 = getelementptr inbounds %struct.mx25_gcq_priv, %struct.mx25_gcq_priv* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %36 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %10, align 8
  store i32 12, i32* %41, align 4
  %42 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %42, i32* %6, align 4
  br label %46

43:                                               ; preds = %5
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %31, %17
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.mx25_gcq_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mx25_gcq_get_raw_value(i32*, %struct.iio_chan_spec*, %struct.mx25_gcq_priv*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
