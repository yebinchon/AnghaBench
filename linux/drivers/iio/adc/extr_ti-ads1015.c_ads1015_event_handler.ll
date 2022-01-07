; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ads1015_data = type { i64, i32, i32 }

@ADS1015_CONV_REG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_MODE_TRAD = common dso_local global i64 0, align 8
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_EV_DIR_EITHER = common dso_local global i32 0, align 4
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ads1015_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads1015_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ads1015_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.iio_dev*
  store %struct.iio_dev* %13, %struct.iio_dev** %6, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.ads1015_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.ads1015_data* %15, %struct.ads1015_data** %7, align 8
  %16 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %17 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ADS1015_CONV_REG, align 4
  %20 = call i32 @regmap_read(i32 %18, i32 %19, i32* %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %3, align 4
  br label %55

25:                                               ; preds = %2
  %26 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %27 = call i64 @ads1015_event_channel_enabled(%struct.ads1015_data* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %31 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ADS1015_CFG_COMP_MODE_TRAD, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @IIO_EV_DIR_EITHER, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @IIO_VOLTAGE, align 4
  %42 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %43 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %41, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %51 = call i32 @iio_get_time_ns(%struct.iio_dev* %50)
  %52 = call i32 @iio_push_event(%struct.iio_dev* %48, i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %39, %25
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %23
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.ads1015_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @ads1015_event_channel_enabled(%struct.ads1015_data*) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
