; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_palmas_gpadc.c_palmas_gpadc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_palmas_gpadc.c_palmas_gpadc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.palmas_gpadc = type { i32 }

@PALMAS_ADC_CH_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ADC start conversion failed\0A\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @palmas_gpadc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_gpadc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.palmas_gpadc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.palmas_gpadc* @iio_priv(%struct.iio_dev* %15)
  store %struct.palmas_gpadc* %16, %struct.palmas_gpadc** %12, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @PALMAS_ADC_CH_MAX, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %74

26:                                               ; preds = %5
  %27 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %28 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i64, i64* %11, align 8
  switch i64 %30, label %61 [
    i64 128, label %31
    i64 129, label %31
  ]

31:                                               ; preds = %26, %26
  %32 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @palmas_gpadc_read_prepare(%struct.palmas_gpadc* %32, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %66

38:                                               ; preds = %31
  %39 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @palmas_gpadc_start_conversion(%struct.palmas_gpadc* %39, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %12, align 8
  %46 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %66

49:                                               ; preds = %38
  %50 = load i64, i64* %11, align 8
  %51 = icmp eq i64 %50, 129
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @palmas_gpadc_get_calibrated_code(%struct.palmas_gpadc* %53, i32 %54, i32 %55)
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i32, i32* %14, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %60, i32* %14, align 4
  br label %66

61:                                               ; preds = %26
  %62 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %6, align 4
  br label %74

66:                                               ; preds = %57, %44, %37
  %67 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %12, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @palmas_gpadc_read_done(%struct.palmas_gpadc* %67, i32 %68)
  %70 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %66, %61, %23
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.palmas_gpadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @palmas_gpadc_read_prepare(%struct.palmas_gpadc*, i32) #1

declare dso_local i32 @palmas_gpadc_start_conversion(%struct.palmas_gpadc*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @palmas_gpadc_get_calibrated_code(%struct.palmas_gpadc*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @palmas_gpadc_read_done(%struct.palmas_gpadc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
