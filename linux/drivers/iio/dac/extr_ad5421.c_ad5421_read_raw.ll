; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5421.c_ad5421_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5421.c_ad5421_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.ad5421_state = type { i32 }

@IIO_CURRENT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AD5421_REG_DAC_DATA = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@AD5421_REG_OFFSET = common dso_local global i32 0, align 4
@AD5421_REG_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad5421_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5421_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad5421_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.ad5421_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad5421_state* %17, %struct.ad5421_state** %12, align 8
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IIO_CURRENT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %82

26:                                               ; preds = %5
  %27 = load i64, i64* %11, align 8
  switch i64 %27, label %79 [
    i64 129, label %28
    i64 128, label %40
    i64 130, label %49
    i64 132, label %54
    i64 131, label %67
  ]

28:                                               ; preds = %26
  %29 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %30 = load i32, i32* @AD5421_REG_DAC_DATA, align 4
  %31 = call i32 @ad5421_read(%struct.iio_dev* %29, i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %6, align 4
  br label %82

36:                                               ; preds = %28
  %37 = load i32, i32* %15, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %39, i32* %6, align 4
  br label %82

40:                                               ; preds = %26
  %41 = load %struct.ad5421_state*, %struct.ad5421_state** %12, align 8
  %42 = call i32 @ad5421_get_current_min_max(%struct.ad5421_state* %41, i32* %13, i32* %14)
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %13, align 4
  %45 = sub i32 %43, %44
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %10, align 8
  store i32 65536000, i32* %47, align 4
  %48 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %48, i32* %6, align 4
  br label %82

49:                                               ; preds = %26
  %50 = load %struct.ad5421_state*, %struct.ad5421_state** %12, align 8
  %51 = call i32 @ad5421_get_offset(%struct.ad5421_state* %50)
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %53, i32* %6, align 4
  br label %82

54:                                               ; preds = %26
  %55 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %56 = load i32, i32* @AD5421_REG_OFFSET, align 4
  %57 = call i32 @ad5421_read(%struct.iio_dev* %55, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %6, align 4
  br label %82

62:                                               ; preds = %54
  %63 = load i32, i32* %15, align 4
  %64 = sub nsw i32 %63, 32768
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %66, i32* %6, align 4
  br label %82

67:                                               ; preds = %26
  %68 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %69 = load i32, i32* @AD5421_REG_GAIN, align 4
  %70 = call i32 @ad5421_read(%struct.iio_dev* %68, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %6, align 4
  br label %82

75:                                               ; preds = %67
  %76 = load i32, i32* %15, align 4
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %78, i32* %6, align 4
  br label %82

79:                                               ; preds = %26
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %75, %73, %62, %60, %49, %40, %36, %34, %23
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.ad5421_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad5421_read(%struct.iio_dev*, i32) #1

declare dso_local i32 @ad5421_get_current_min_max(%struct.ad5421_state*, i32*, i32*) #1

declare dso_local i32 @ad5421_get_offset(%struct.ad5421_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
