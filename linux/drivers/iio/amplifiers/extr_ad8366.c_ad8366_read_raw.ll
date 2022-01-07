; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/amplifiers/extr_ad8366.c_ad8366_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/amplifiers/extr_ad8366.c_ad8366_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.ad8366_state = type { i32*, i32, i32 }

@IIO_VAL_INT_PLUS_MICRO_DB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad8366_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad8366_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ad8366_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call %struct.ad8366_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad8366_state* %16, %struct.ad8366_state** %11, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.ad8366_state*, %struct.ad8366_state** %11, align 8
  %18 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i64, i64* %10, align 8
  switch i64 %20, label %54 [
    i64 128, label %21
  ]

21:                                               ; preds = %5
  %22 = load %struct.ad8366_state*, %struct.ad8366_state** %11, align 8
  %23 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %26 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load %struct.ad8366_state*, %struct.ad8366_state** %11, align 8
  %31 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %45 [
    i32 131, label %33
    i32 130, label %37
    i32 129, label %41
  ]

33:                                               ; preds = %21
  %34 = load i32, i32* %13, align 4
  %35 = mul nsw i32 %34, 253
  %36 = add nsw i32 %35, 4500
  store i32 %36, i32* %14, align 4
  br label %45

37:                                               ; preds = %21
  %38 = load i32, i32* %13, align 4
  %39 = mul nsw i32 %38, 1000
  %40 = sub nsw i32 15000, %39
  store i32 %40, i32* %14, align 4
  br label %45

41:                                               ; preds = %21
  %42 = load i32, i32* %13, align 4
  %43 = mul nsw i32 %42, 500
  %44 = add nsw i32 -11500, %43
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %21, %41, %37, %33
  %46 = load i32, i32* %14, align 4
  %47 = sdiv i32 %46, 1000
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %14, align 4
  %50 = srem i32 %49, 1000
  %51 = mul nsw i32 %50, 1000
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO_DB, align 4
  store i32 %53, i32* %12, align 4
  br label %57

54:                                               ; preds = %5
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %54, %45
  %58 = load %struct.ad8366_state*, %struct.ad8366_state** %11, align 8
  %59 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %12, align 4
  ret i32 %61
}

declare dso_local %struct.ad8366_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
