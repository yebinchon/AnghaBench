; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_dln2-adc.c_dln2_adc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_dln2-adc.c_dln2_adc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.dln2_adc = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @dln2_adc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_adc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dln2_adc*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.dln2_adc* @iio_priv(%struct.iio_dev* %15)
  store %struct.dln2_adc* %16, %struct.dln2_adc** %14, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %63 [
    i64 130, label %18
    i64 128, label %38
    i64 129, label %42
  ]

18:                                               ; preds = %5
  %19 = load %struct.dln2_adc*, %struct.dln2_adc** %14, align 8
  %20 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.dln2_adc*, %struct.dln2_adc** %14, align 8
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dln2_adc_read(%struct.dln2_adc* %22, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.dln2_adc*, %struct.dln2_adc** %14, align 8
  %28 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  br label %66

34:                                               ; preds = %18
  %35 = load i32, i32* %12, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %37, i32* %6, align 4
  br label %66

38:                                               ; preds = %5
  %39 = load i32*, i32** %9, align 8
  store i32 0, i32* %39, align 4
  %40 = load i32*, i32** %10, align 8
  store i32 3222656, i32* %40, align 4
  %41 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %41, i32* %6, align 4
  br label %66

42:                                               ; preds = %5
  %43 = load %struct.dln2_adc*, %struct.dln2_adc** %14, align 8
  %44 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.dln2_adc*, %struct.dln2_adc** %14, align 8
  %49 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 1000000000, %50
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = udiv i32 %52, 1000000
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = urem i32 %55, 1000000
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  br label %61

58:                                               ; preds = %42
  %59 = load i32*, i32** %9, align 8
  store i32 0, i32* %59, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %47
  %62 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %62, i32* %6, align 4
  br label %66

63:                                               ; preds = %5
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %61, %38, %34, %32
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.dln2_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dln2_adc_read(%struct.dln2_adc*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
