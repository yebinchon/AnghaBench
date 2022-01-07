; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vl6180.c_vl6180_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vl6180.c_vl6180_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.vl6180_data = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @vl6180_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vl6180_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vl6180_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.vl6180_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.vl6180_data* %15, %struct.vl6180_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %68 [
    i64 131, label %17
    i64 132, label %31
    i64 130, label %38
    i64 133, label %61
  ]

17:                                               ; preds = %5
  %18 = load %struct.vl6180_data*, %struct.vl6180_data** %12, align 8
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @vl6180_measure(%struct.vl6180_data* %18, i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %6, align 4
  br label %71

27:                                               ; preds = %17
  %28 = load i32, i32* %13, align 4
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %30, i32* %6, align 4
  br label %71

31:                                               ; preds = %5
  %32 = load %struct.vl6180_data*, %struct.vl6180_data** %12, align 8
  %33 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %10, align 8
  store i32 1000, i32* %36, align 4
  %37 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %37, i32* %6, align 4
  br label %71

38:                                               ; preds = %5
  %39 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %40 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %56 [
    i32 128, label %42
    i32 129, label %53
  ]

42:                                               ; preds = %38
  %43 = load i32*, i32** %9, align 8
  store i32 32000, i32* %43, align 4
  %44 = load %struct.vl6180_data*, %struct.vl6180_data** %12, align 8
  %45 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vl6180_data*, %struct.vl6180_data** %12, align 8
  %48 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = load i32*, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %52, i32* %6, align 4
  br label %71

53:                                               ; preds = %38
  %54 = load i32*, i32** %9, align 8
  store i32 0, i32* %54, align 4
  %55 = load i32*, i32** %10, align 8
  store i32 1000, i32* %55, align 4
  br label %59

56:                                               ; preds = %38
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %71

59:                                               ; preds = %53
  %60 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %60, i32* %6, align 4
  br label %71

61:                                               ; preds = %5
  %62 = load %struct.vl6180_data*, %struct.vl6180_data** %12, align 8
  %63 = getelementptr inbounds %struct.vl6180_data, %struct.vl6180_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %10, align 8
  store i32 1000, i32* %66, align 4
  %67 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %67, i32* %6, align 4
  br label %71

68:                                               ; preds = %5
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %61, %59, %56, %42, %31, %27, %25
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.vl6180_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @vl6180_measure(%struct.vl6180_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
