; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads8688.c_ads8688_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads8688.c_ads8688_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.ads8688_state = type { i64, i64*, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@ads8688_range_def = common dso_local global %struct.TYPE_2__* null, align 8
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ads8688_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads8688_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.ads8688_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.ads8688_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ads8688_state* %17, %struct.ads8688_state** %15, align 8
  %18 = load %struct.ads8688_state*, %struct.ads8688_state** %15, align 8
  %19 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %18, i32 0, i32 2
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i64, i64* %11, align 8
  switch i64 %21, label %84 [
    i64 129, label %22
    i64 128, label %39
    i64 130, label %65
  ]

22:                                               ; preds = %5
  %23 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ads8688_read(%struct.iio_dev* %23, i64 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.ads8688_state*, %struct.ads8688_state** %15, align 8
  %29 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %28, i32 0, i32 2
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %6, align 4
  br label %90

35:                                               ; preds = %22
  %36 = load i32, i32* %12, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %38, i32* %6, align 4
  br label %90

39:                                               ; preds = %5
  %40 = load %struct.ads8688_state*, %struct.ads8688_state** %15, align 8
  %41 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %14, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ads8688_range_def, align 8
  %44 = load %struct.ads8688_state*, %struct.ads8688_state** %15, align 8
  %45 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %48 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %14, align 8
  %56 = mul i64 %55, %54
  store i64 %56, i64* %14, align 8
  %57 = load i32*, i32** %9, align 8
  store i32 0, i32* %57, align 4
  %58 = load i64, i64* %14, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.ads8688_state*, %struct.ads8688_state** %15, align 8
  %62 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %61, i32 0, i32 2
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %64, i32* %6, align 4
  br label %90

65:                                               ; preds = %5
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ads8688_range_def, align 8
  %67 = load %struct.ads8688_state*, %struct.ads8688_state** %15, align 8
  %68 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %71 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.ads8688_state*, %struct.ads8688_state** %15, align 8
  %81 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %80, i32 0, i32 2
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %83, i32* %6, align 4
  br label %90

84:                                               ; preds = %5
  %85 = load %struct.ads8688_state*, %struct.ads8688_state** %15, align 8
  %86 = getelementptr inbounds %struct.ads8688_state, %struct.ads8688_state* %85, i32 0, i32 2
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %84, %65, %39, %35, %33
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local %struct.ads8688_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ads8688_read(%struct.iio_dev*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
