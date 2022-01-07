; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sun4i-gpadc-iio.c_sun4i_gpadc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sun4i-gpadc-iio.c_sun4i_gpadc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @sun4i_gpadc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_gpadc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %11, align 8
  switch i64 %13, label %68 [
    i64 130, label %14
    i64 129, label %24
    i64 128, label %48
  ]

14:                                               ; preds = %5
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @sun4i_gpadc_temp_offset(%struct.iio_dev* %15, i32* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %6, align 4
  br label %71

22:                                               ; preds = %14
  %23 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %23, i32* %6, align 4
  br label %71

24:                                               ; preds = %5
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %26 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IIO_VOLTAGE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @sun4i_gpadc_adc_read(%struct.iio_dev* %31, i32 %34, i32* %35)
  store i32 %36, i32* %12, align 4
  br label %41

37:                                               ; preds = %24
  %38 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @sun4i_gpadc_temp_read(%struct.iio_dev* %38, i32* %39)
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %71

46:                                               ; preds = %41
  %47 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %47, i32* %6, align 4
  br label %71

48:                                               ; preds = %5
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %50 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IIO_VOLTAGE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32*, i32** %9, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** %10, align 8
  store i32 732421875, i32* %56, align 4
  %57 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %57, i32* %6, align 4
  br label %71

58:                                               ; preds = %48
  %59 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @sun4i_gpadc_temp_scale(%struct.iio_dev* %59, i32* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %6, align 4
  br label %71

66:                                               ; preds = %58
  %67 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %67, i32* %6, align 4
  br label %71

68:                                               ; preds = %5
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %66, %64, %54, %46, %44, %22, %20
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @sun4i_gpadc_temp_offset(%struct.iio_dev*, i32*) #1

declare dso_local i32 @sun4i_gpadc_adc_read(%struct.iio_dev*, i32, i32*) #1

declare dso_local i32 @sun4i_gpadc_temp_read(%struct.iio_dev*, i32*) #1

declare dso_local i32 @sun4i_gpadc_temp_scale(%struct.iio_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
