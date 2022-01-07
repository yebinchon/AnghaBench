; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_ad9523.c_ad9523_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_ad9523.c_ad9523_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.ad9523_state = type { i32*, i64*, i32 }

@AD9523_CLK_DIST_PWR_DOWN_EN = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad9523_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9523_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad9523_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ad9523_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad9523_state* %16, %struct.ad9523_state** %12, align 8
  %17 = load %struct.ad9523_state*, %struct.ad9523_state** %12, align 8
  %18 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @AD9523_CHANNEL_CLOCK_DIST(i64 %23)
  %25 = call i32 @ad9523_read(%struct.iio_dev* %20, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load %struct.ad9523_state*, %struct.ad9523_state** %12, align 8
  %27 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %26, i32 0, i32 2
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %6, align 4
  br label %80

33:                                               ; preds = %5
  %34 = load i64, i64* %11, align 8
  switch i64 %34, label %77 [
    i64 128, label %35
    i64 130, label %44
    i64 129, label %63
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @AD9523_CLK_DIST_PWR_DOWN_EN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %43, i32* %6, align 4
  br label %80

44:                                               ; preds = %33
  %45 = load %struct.ad9523_state*, %struct.ad9523_state** %12, align 8
  %46 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.ad9523_state*, %struct.ad9523_state** %12, align 8
  %49 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %52 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %47, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @AD9523_CLK_DIST_DIV_REV(i32 %58)
  %60 = sdiv i32 %57, %59
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %62, i32* %6, align 4
  br label %80

63:                                               ; preds = %33
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @AD9523_CLK_DIST_DIV_PHASE_REV(i32 %64)
  %66 = mul nsw i32 %65, 3141592
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @AD9523_CLK_DIST_DIV_REV(i32 %67)
  %69 = sdiv i32 %66, %68
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = udiv i32 %70, 1000000
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %13, align 4
  %74 = urem i32 %73, 1000000
  %75 = load i32*, i32** %10, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %76, i32* %6, align 4
  br label %80

77:                                               ; preds = %33
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %77, %63, %44, %35, %31
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.ad9523_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad9523_read(%struct.iio_dev*, i32) #1

declare dso_local i32 @AD9523_CHANNEL_CLOCK_DIST(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @AD9523_CLK_DIST_DIV_REV(i32) #1

declare dso_local i32 @AD9523_CLK_DIST_DIV_PHASE_REV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
