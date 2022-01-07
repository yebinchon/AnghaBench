; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16130.c_adis16130_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16130.c_adis16130_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adis16130_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16130_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  switch i64 %14, label %63 [
    i64 130, label %15
    i64 129, label %35
    i64 131, label %50
  ]

15:                                               ; preds = %5
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @adis16130_spi_read(%struct.iio_dev* %19, i32 %22, i32* %13)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %6, align 4
  br label %66

31:                                               ; preds = %15
  %32 = load i32, i32* %13, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %34, i32* %6, align 4
  br label %66

35:                                               ; preds = %5
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %47 [
    i32 132, label %39
    i32 128, label %43
  ]

39:                                               ; preds = %35
  %40 = load i32*, i32** %9, align 8
  store i32 250, i32* %40, align 4
  %41 = load i32*, i32** %10, align 8
  store i32 336440817, i32* %41, align 4
  %42 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %42, i32* %6, align 4
  br label %66

43:                                               ; preds = %35
  %44 = load i32*, i32** %9, align 8
  store i32 105000, i32* %44, align 4
  %45 = load i32*, i32** %10, align 8
  store i32 1479765, i32* %45, align 4
  %46 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %46, i32* %6, align 4
  br label %66

47:                                               ; preds = %35
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %66

50:                                               ; preds = %5
  %51 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %52 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %60 [
    i32 132, label %54
    i32 128, label %57
  ]

54:                                               ; preds = %50
  %55 = load i32*, i32** %9, align 8
  store i32 -8388608, i32* %55, align 4
  %56 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %56, i32* %6, align 4
  br label %66

57:                                               ; preds = %50
  %58 = load i32*, i32** %9, align 8
  store i32 -8036283, i32* %58, align 4
  %59 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %59, i32* %6, align 4
  br label %66

60:                                               ; preds = %50
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %66

63:                                               ; preds = %5
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %60, %57, %54, %47, %43, %39, %31, %29
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adis16130_spi_read(%struct.iio_dev*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
