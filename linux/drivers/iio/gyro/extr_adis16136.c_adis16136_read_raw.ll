; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16136.c_adis16136_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16136.c_adis16136_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.adis16136 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADIS16136_REG_GYRO_OFF2 = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adis16136_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16136_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adis16136*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.adis16136* @iio_priv(%struct.iio_dev* %15)
  store %struct.adis16136* %16, %struct.adis16136** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %67 [
    i64 130, label %18
    i64 129, label %23
    i64 132, label %49
    i64 131, label %63
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @adis_single_conversion(%struct.iio_dev* %19, %struct.iio_chan_spec* %20, i32 0, i32* %21)
  store i32 %22, i32* %6, align 4
  br label %70

23:                                               ; preds = %5
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %46 [
    i32 133, label %27
    i32 128, label %42
  ]

27:                                               ; preds = %23
  %28 = load %struct.adis16136*, %struct.adis16136** %12, align 8
  %29 = getelementptr inbounds %struct.adis16136, %struct.adis16136* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.adis16136*, %struct.adis16136** %12, align 8
  %35 = getelementptr inbounds %struct.adis16136, %struct.adis16136* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 16
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %41, i32* %6, align 4
  br label %70

42:                                               ; preds = %23
  %43 = load i32*, i32** %9, align 8
  store i32 10, i32* %43, align 4
  %44 = load i32*, i32** %10, align 8
  store i32 697000, i32* %44, align 4
  %45 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %45, i32* %6, align 4
  br label %70

46:                                               ; preds = %23
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %70

49:                                               ; preds = %5
  %50 = load %struct.adis16136*, %struct.adis16136** %12, align 8
  %51 = getelementptr inbounds %struct.adis16136, %struct.adis16136* %50, i32 0, i32 0
  %52 = load i32, i32* @ADIS16136_REG_GYRO_OFF2, align 4
  %53 = call i32 @adis_read_reg_32(i32* %51, i32 %52, i32* %13)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %6, align 4
  br label %70

58:                                               ; preds = %49
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @sign_extend32(i32 %59, i32 31)
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %62, i32* %6, align 4
  br label %70

63:                                               ; preds = %5
  %64 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @adis16136_get_filter(%struct.iio_dev* %64, i32* %65)
  store i32 %66, i32* %6, align 4
  br label %70

67:                                               ; preds = %5
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %63, %58, %56, %46, %42, %27, %18
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.adis16136* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_single_conversion(%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32*) #1

declare dso_local i32 @adis_read_reg_32(i32*, i32, i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @adis16136_get_filter(%struct.iio_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
