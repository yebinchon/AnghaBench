; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.bme680_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @bme680_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bme680_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.bme680_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.bme680_data* %14, %struct.bme680_data** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %66 [
    i64 132, label %16
    i64 133, label %41
  ]

16:                                               ; preds = %5
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %38 [
    i32 128, label %20
    i32 130, label %24
    i32 131, label %29
    i32 129, label %34
  ]

20:                                               ; preds = %16
  %21 = load %struct.bme680_data*, %struct.bme680_data** %12, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @bme680_read_temp(%struct.bme680_data* %21, i32* %22)
  store i32 %23, i32* %6, align 4
  br label %69

24:                                               ; preds = %16
  %25 = load %struct.bme680_data*, %struct.bme680_data** %12, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @bme680_read_press(%struct.bme680_data* %25, i32* %26, i32* %27)
  store i32 %28, i32* %6, align 4
  br label %69

29:                                               ; preds = %16
  %30 = load %struct.bme680_data*, %struct.bme680_data** %12, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @bme680_read_humid(%struct.bme680_data* %30, i32* %31, i32* %32)
  store i32 %33, i32* %6, align 4
  br label %69

34:                                               ; preds = %16
  %35 = load %struct.bme680_data*, %struct.bme680_data** %12, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @bme680_read_gas(%struct.bme680_data* %35, i32* %36)
  store i32 %37, i32* %6, align 4
  br label %69

38:                                               ; preds = %16
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %69

41:                                               ; preds = %5
  %42 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %43 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %63 [
    i32 128, label %45
    i32 130, label %51
    i32 131, label %57
  ]

45:                                               ; preds = %41
  %46 = load %struct.bme680_data*, %struct.bme680_data** %12, align 8
  %47 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %50, i32* %6, align 4
  br label %69

51:                                               ; preds = %41
  %52 = load %struct.bme680_data*, %struct.bme680_data** %12, align 8
  %53 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %56, i32* %6, align 4
  br label %69

57:                                               ; preds = %41
  %58 = load %struct.bme680_data*, %struct.bme680_data** %12, align 8
  %59 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %62, i32* %6, align 4
  br label %69

63:                                               ; preds = %41
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %69

66:                                               ; preds = %5
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %63, %57, %51, %45, %38, %34, %29, %24, %20
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local %struct.bme680_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @bme680_read_temp(%struct.bme680_data*, i32*) #1

declare dso_local i32 @bme680_read_press(%struct.bme680_data*, i32*, i32*) #1

declare dso_local i32 @bme680_read_humid(%struct.bme680_data*, i32*, i32*) #1

declare dso_local i32 @bme680_read_gas(%struct.bme680_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
