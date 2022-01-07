; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads124s08.c_ads124s_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads124s08.c_ads124s_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ads124s_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ADS124S08_INPUT_MUX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Set ADC CH failed\0A\00", align 1
@ADS124S08_START_CONV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Start conversions failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Read ADC failed\0A\00", align 1
@ADS124S08_STOP_CONV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Stop conversions failed\0A\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ads124s_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads124s_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ads124s_private*, align 8
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.ads124s_private* @iio_priv(%struct.iio_dev* %13)
  store %struct.ads124s_private* %14, %struct.ads124s_private** %11, align 8
  %15 = load %struct.ads124s_private*, %struct.ads124s_private** %11, align 8
  %16 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i64, i64* %10, align 8
  switch i64 %18, label %76 [
    i64 128, label %19
  ]

19:                                               ; preds = %5
  %20 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %21 = load i32, i32* @ADS124S08_INPUT_MUX, align 4
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ads124s_write_reg(%struct.iio_dev* %20, i32 %21, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.ads124s_private*, %struct.ads124s_private** %11, align 8
  %30 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %80

34:                                               ; preds = %19
  %35 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %36 = load i32, i32* @ADS124S08_START_CONV, align 4
  %37 = call i32 @ads124s_write_cmd(%struct.iio_dev* %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.ads124s_private*, %struct.ads124s_private** %11, align 8
  %42 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %80

46:                                               ; preds = %34
  %47 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %48 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %49 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ads124s_read(%struct.iio_dev* %47, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.ads124s_private*, %struct.ads124s_private** %11, align 8
  %56 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %80

60:                                               ; preds = %46
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %64 = load i32, i32* @ADS124S08_STOP_CONV, align 4
  %65 = call i32 @ads124s_write_cmd(%struct.iio_dev* %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load %struct.ads124s_private*, %struct.ads124s_private** %11, align 8
  %70 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %80

74:                                               ; preds = %60
  %75 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %75, i32* %12, align 4
  br label %79

76:                                               ; preds = %5
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %76, %74
  br label %80

80:                                               ; preds = %79, %68, %54, %40, %28
  %81 = load %struct.ads124s_private*, %struct.ads124s_private** %11, align 8
  %82 = getelementptr inbounds %struct.ads124s_private, %struct.ads124s_private* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %12, align 4
  ret i32 %84
}

declare dso_local %struct.ads124s_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ads124s_write_reg(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ads124s_write_cmd(%struct.iio_dev*, i32) #1

declare dso_local i32 @ads124s_read(%struct.iio_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
