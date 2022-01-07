; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/resolver/extr_ad2s1200.c_ad2s1200_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/resolver/extr_ad2s1200.c_ad2s1200_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad2s1200_state = type { i32, i32, i32, i32, i32 }

@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad2s1200_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad2s1200_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad2s1200_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ad2s1200_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad2s1200_state* %15, %struct.ad2s1200_state** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %98 [
    i64 128, label %17
    i64 129, label %32
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %29 [
    i32 131, label %21
    i32 130, label %25
  ]

21:                                               ; preds = %17
  %22 = load i32*, i32** %9, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** %10, align 8
  store i32 1534355, i32* %23, align 4
  %24 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %24, i32* %6, align 4
  br label %102

25:                                               ; preds = %17
  %26 = load i32*, i32** %9, align 8
  store i32 6, i32* %26, align 4
  %27 = load i32*, i32** %10, align 8
  store i32 283185, i32* %27, align 4
  %28 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %28, i32* %6, align 4
  br label %102

29:                                               ; preds = %17
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %102

32:                                               ; preds = %5
  %33 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %12, align 8
  %34 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %12, align 8
  %37 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gpiod_set_value(i32 %38, i32 0)
  %40 = call i32 @udelay(i32 1)
  %41 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %12, align 8
  %42 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @gpiod_set_value(i32 %43, i32 1)
  %45 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %12, align 8
  %46 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %49 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 131
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @gpiod_set_value(i32 %47, i32 %54)
  %56 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %12, align 8
  %57 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %12, align 8
  %60 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %59, i32 0, i32 1
  %61 = call i32 @spi_read(i32 %58, i32* %60, i32 2)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %32
  %65 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %12, align 8
  %66 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %6, align 4
  br label %102

69:                                               ; preds = %32
  %70 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %71 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %86 [
    i32 131, label %73
    i32 130, label %79
  ]

73:                                               ; preds = %69
  %74 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %12, align 8
  %75 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %74, i32 0, i32 1
  %76 = call i32 @be16_to_cpup(i32* %75)
  %77 = ashr i32 %76, 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %92

79:                                               ; preds = %69
  %80 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %12, align 8
  %81 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %80, i32 0, i32 1
  %82 = call i32 @be16_to_cpup(i32* %81)
  %83 = ashr i32 %82, 4
  %84 = call i32 @sign_extend32(i32 %83, i32 11)
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  br label %92

86:                                               ; preds = %69
  %87 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %12, align 8
  %88 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %102

92:                                               ; preds = %79, %73
  %93 = call i32 @udelay(i32 1)
  %94 = load %struct.ad2s1200_state*, %struct.ad2s1200_state** %12, align 8
  %95 = getelementptr inbounds %struct.ad2s1200_state, %struct.ad2s1200_state* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %97, i32* %6, align 4
  br label %102

98:                                               ; preds = %5
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %99, %92, %86, %64, %29, %25, %21
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local %struct.ad2s1200_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spi_read(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
