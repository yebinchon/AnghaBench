; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mt6577_auxadc.c_mt6577_auxadc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mt6577_auxadc.c_mt6577_auxadc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mt6577_auxadc_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"failed to sample data on channel[%d]\0A\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mt6577_auxadc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6577_auxadc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mt6577_auxadc_device*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.mt6577_auxadc_device* @iio_priv(%struct.iio_dev* %13)
  store %struct.mt6577_auxadc_device* %14, %struct.mt6577_auxadc_device** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %49 [
    i64 128, label %16
  ]

16:                                               ; preds = %5
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %19 = call i32 @mt6577_auxadc_read(%struct.iio_dev* %17, %struct.iio_chan_spec* %18)
  %20 = load i32*, i32** %9, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %16
  %25 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %26 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  br label %52

35:                                               ; preds = %16
  %36 = load %struct.mt6577_auxadc_device*, %struct.mt6577_auxadc_device** %12, align 8
  %37 = getelementptr inbounds %struct.mt6577_auxadc_device, %struct.mt6577_auxadc_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mt_auxadc_get_cali_data(i32 %44, i32 1)
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %35
  %48 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %48, i32* %6, align 4
  br label %52

49:                                               ; preds = %5
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49, %47, %24
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.mt6577_auxadc_device* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mt6577_auxadc_read(%struct.iio_dev*, %struct.iio_chan_spec*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mt_auxadc_get_cali_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
