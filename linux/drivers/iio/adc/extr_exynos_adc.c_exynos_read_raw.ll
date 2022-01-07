; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32 }
%struct.iio_chan_spec = type { i32 }
%struct.exynos_adc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.exynos_adc*)*, i32 (%struct.exynos_adc*, i32)* }

@IIO_CHAN_INFO_RAW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EXYNOS_ADC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Conversion timed out! Resetting\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @exynos_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.exynos_adc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.exynos_adc* @iio_priv(%struct.iio_dev* %15)
  store %struct.exynos_adc* %16, %struct.exynos_adc** %12, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @IIO_CHAN_INFO_RAW, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %87

23:                                               ; preds = %5
  %24 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.exynos_adc*, %struct.exynos_adc** %12, align 8
  %28 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %27, i32 0, i32 2
  %29 = call i32 @reinit_completion(i32* %28)
  %30 = load %struct.exynos_adc*, %struct.exynos_adc** %12, align 8
  %31 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32 (%struct.exynos_adc*, i32)*, i32 (%struct.exynos_adc*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.exynos_adc*, i32)* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %23
  %37 = load %struct.exynos_adc*, %struct.exynos_adc** %12, align 8
  %38 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (%struct.exynos_adc*, i32)*, i32 (%struct.exynos_adc*, i32)** %40, align 8
  %42 = load %struct.exynos_adc*, %struct.exynos_adc** %12, align 8
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 %41(%struct.exynos_adc* %42, i32 %45)
  br label %47

47:                                               ; preds = %36, %23
  %48 = load %struct.exynos_adc*, %struct.exynos_adc** %12, align 8
  %49 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %48, i32 0, i32 2
  %50 = load i32, i32* @EXYNOS_ADC_TIMEOUT, align 4
  %51 = call i64 @wait_for_completion_timeout(i32* %49, i32 %50)
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %47
  %55 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 1
  %57 = call i32 @dev_warn(i32* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.exynos_adc*, %struct.exynos_adc** %12, align 8
  %59 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.exynos_adc*)*, i32 (%struct.exynos_adc*)** %61, align 8
  %63 = icmp ne i32 (%struct.exynos_adc*)* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load %struct.exynos_adc*, %struct.exynos_adc** %12, align 8
  %66 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32 (%struct.exynos_adc*)*, i32 (%struct.exynos_adc*)** %68, align 8
  %70 = load %struct.exynos_adc*, %struct.exynos_adc** %12, align 8
  %71 = call i32 %69(%struct.exynos_adc* %70)
  br label %72

72:                                               ; preds = %64, %54
  %73 = load i32, i32* @ETIMEDOUT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %14, align 4
  br label %82

75:                                               ; preds = %47
  %76 = load %struct.exynos_adc*, %struct.exynos_adc** %12, align 8
  %77 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %10, align 8
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %75, %72
  %83 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %84 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %82, %20
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.exynos_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
