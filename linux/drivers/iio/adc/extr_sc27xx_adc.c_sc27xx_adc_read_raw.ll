; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sc27xx_adc.c_sc27xx_adc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sc27xx_adc.c_sc27xx_adc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.sc27xx_adc_data = type { i32* }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @sc27xx_adc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_adc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sc27xx_adc_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.sc27xx_adc_data* @iio_priv(%struct.iio_dev* %16)
  store %struct.sc27xx_adc_data* %17, %struct.sc27xx_adc_data** %12, align 8
  %18 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %12, align 8
  %19 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i64, i64* %11, align 8
  switch i64 %26, label %73 [
    i64 129, label %27
    i64 130, label %48
    i64 128, label %69
  ]

27:                                               ; preds = %5
  %28 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %12, align 8
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @sc27xx_adc_read(%struct.sc27xx_adc_data* %31, i64 %34, i32 %35, i32* %15)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %6, align 4
  br label %76

44:                                               ; preds = %27
  %45 = load i32, i32* %15, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %47, i32* %6, align 4
  br label %76

48:                                               ; preds = %5
  %49 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %12, align 8
  %53 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %54 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @sc27xx_adc_read_processed(%struct.sc27xx_adc_data* %52, i64 %55, i32 %56, i32* %15)
  store i32 %57, i32* %14, align 4
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %6, align 4
  br label %76

65:                                               ; preds = %48
  %66 = load i32, i32* %15, align 4
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %68, i32* %6, align 4
  br label %76

69:                                               ; preds = %5
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %72, i32* %6, align 4
  br label %76

73:                                               ; preds = %5
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %73, %69, %65, %63, %44, %42
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.sc27xx_adc_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sc27xx_adc_read(%struct.sc27xx_adc_data*, i64, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sc27xx_adc_read_processed(%struct.sc27xx_adc_data*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
