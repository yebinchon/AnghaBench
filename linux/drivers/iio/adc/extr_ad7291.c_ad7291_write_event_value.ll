; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7291.c_ad7291_write_event_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7291.c_ad7291_write_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.ad7291_chip_info = type { i32 }

@IIO_EV_INFO_HYSTERESIS = common dso_local global i32 0, align 4
@IIO_VOLTAGE = common dso_local global i64 0, align 8
@AD7291_VALUE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @ad7291_write_event_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7291_write_event_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ad7291_chip_info*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %18 = call %struct.ad7291_chip_info* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad7291_chip_info* %18, %struct.ad7291_chip_info** %16, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @IIO_EV_INFO_HYSTERESIS, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %7
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IIO_VOLTAGE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22, %7
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @AD7291_VALUE_MASK, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %57

38:                                               ; preds = %32
  br label %49

39:                                               ; preds = %22
  %40 = load i32, i32* %14, align 4
  %41 = icmp sgt i32 %40, 2047
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, -2048
  br i1 %44, label %45, label %48

45:                                               ; preds = %42, %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %57

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %38
  %50 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %16, align 8
  %51 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @ad7291_threshold_reg(%struct.iio_chan_spec* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @ad7291_i2c_write(%struct.ad7291_chip_info* %50, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %49, %45, %35
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local %struct.ad7291_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad7291_i2c_write(%struct.ad7291_chip_info*, i32, i32) #1

declare dso_local i32 @ad7291_threshold_reg(%struct.iio_chan_spec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
