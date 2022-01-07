; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/resolver/extr_ad2s90.c_ad2s90_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/resolver/extr_ad2s90.c_ad2s90_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.ad2s90_state = type { i32*, i32, i32 }

@IIO_ANGL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad2s90_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad2s90_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ad2s90_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ad2s90_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad2s90_state* %15, %struct.ad2s90_state** %13, align 8
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IIO_ANGL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %72

24:                                               ; preds = %5
  %25 = load i64, i64* %11, align 8
  switch i64 %25, label %68 [
    i64 128, label %26
    i64 129, label %30
  ]

26:                                               ; preds = %24
  %27 = load i32*, i32** %9, align 8
  store i32 6283, i32* %27, align 4
  %28 = load i32*, i32** %10, align 8
  store i32 12, i32* %28, align 4
  %29 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %29, i32* %6, align 4
  br label %72

30:                                               ; preds = %24
  %31 = load %struct.ad2s90_state*, %struct.ad2s90_state** %13, align 8
  %32 = getelementptr inbounds %struct.ad2s90_state, %struct.ad2s90_state* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.ad2s90_state*, %struct.ad2s90_state** %13, align 8
  %35 = getelementptr inbounds %struct.ad2s90_state, %struct.ad2s90_state* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ad2s90_state*, %struct.ad2s90_state** %13, align 8
  %38 = getelementptr inbounds %struct.ad2s90_state, %struct.ad2s90_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @spi_read(i32 %36, i32* %39, i32 2)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load %struct.ad2s90_state*, %struct.ad2s90_state** %13, align 8
  %45 = getelementptr inbounds %struct.ad2s90_state, %struct.ad2s90_state* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %6, align 4
  br label %72

48:                                               ; preds = %30
  %49 = load %struct.ad2s90_state*, %struct.ad2s90_state** %13, align 8
  %50 = getelementptr inbounds %struct.ad2s90_state, %struct.ad2s90_state* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 4
  %55 = load %struct.ad2s90_state*, %struct.ad2s90_state** %13, align 8
  %56 = getelementptr inbounds %struct.ad2s90_state, %struct.ad2s90_state* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 240
  %61 = ashr i32 %60, 4
  %62 = or i32 %54, %61
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.ad2s90_state*, %struct.ad2s90_state** %13, align 8
  %65 = getelementptr inbounds %struct.ad2s90_state, %struct.ad2s90_state* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %67, i32* %6, align 4
  br label %72

68:                                               ; preds = %24
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %69, %48, %43, %26, %21
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.ad2s90_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_read(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
