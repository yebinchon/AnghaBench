; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.fxas21002c_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FXAS21002C_SCALE_FRACTIONAL = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @fxas21002c_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxas21002c_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fxas21002c_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.fxas21002c_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.fxas21002c_data* %15, %struct.fxas21002c_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %69 [
    i64 131, label %17
    i64 129, label %35
    i64 132, label %54
    i64 133, label %59
    i64 130, label %64
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %32 [
    i32 128, label %21
    i32 134, label %25
  ]

21:                                               ; preds = %17
  %22 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %12, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @fxas21002c_temp_get(%struct.fxas21002c_data* %22, i32* %23)
  store i32 %24, i32* %6, align 4
  br label %72

25:                                               ; preds = %17
  %26 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %12, align 8
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %28 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @fxas21002c_axis_get(%struct.fxas21002c_data* %26, i32 %29, i32* %30)
  store i32 %31, i32* %6, align 4
  br label %72

32:                                               ; preds = %17
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %72

35:                                               ; preds = %5
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %51 [
    i32 134, label %39
  ]

39:                                               ; preds = %35
  %40 = load i32, i32* @FXAS21002C_SCALE_FRACTIONAL, align 4
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %12, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @fxas21002c_scale_get(%struct.fxas21002c_data* %42, i32* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %6, align 4
  br label %72

49:                                               ; preds = %39
  %50 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %50, i32* %6, align 4
  br label %72

51:                                               ; preds = %35
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %72

54:                                               ; preds = %5
  %55 = load i32*, i32** %9, align 8
  store i32 0, i32* %55, align 4
  %56 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %12, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @fxas21002c_lpf_get(%struct.fxas21002c_data* %56, i32* %57)
  store i32 %58, i32* %6, align 4
  br label %72

59:                                               ; preds = %5
  %60 = load i32*, i32** %9, align 8
  store i32 0, i32* %60, align 4
  %61 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %12, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @fxas21002c_hpf_get(%struct.fxas21002c_data* %61, i32* %62)
  store i32 %63, i32* %6, align 4
  br label %72

64:                                               ; preds = %5
  %65 = load i32*, i32** %10, align 8
  store i32 0, i32* %65, align 4
  %66 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %12, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @fxas21002c_odr_get(%struct.fxas21002c_data* %66, i32* %67)
  store i32 %68, i32* %6, align 4
  br label %72

69:                                               ; preds = %5
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %69, %64, %59, %54, %51, %49, %47, %32, %25, %21
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.fxas21002c_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @fxas21002c_temp_get(%struct.fxas21002c_data*, i32*) #1

declare dso_local i32 @fxas21002c_axis_get(%struct.fxas21002c_data*, i32, i32*) #1

declare dso_local i32 @fxas21002c_scale_get(%struct.fxas21002c_data*, i32*) #1

declare dso_local i32 @fxas21002c_lpf_get(%struct.fxas21002c_data*, i32*) #1

declare dso_local i32 @fxas21002c_hpf_get(%struct.fxas21002c_data*, i32*) #1

declare dso_local i32 @fxas21002c_odr_get(%struct.fxas21002c_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
