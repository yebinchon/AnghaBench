; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030_madc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030_madc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.twl4030_madc_data = type { i64 }
%struct.twl4030_madc_request = type { i32, i32, i32, i32*, i32, i32, i32 }

@TWL4030_MADC_SW2 = common dso_local global i32 0, align 4
@TWL4030_MADC_SW1 = common dso_local global i32 0, align 4
@TWL4030_MADC_WAIT = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_PROCESSED = common dso_local global i64 0, align 8
@IIO_CHAN_INFO_AVERAGE_RAW = common dso_local global i64 0, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @twl4030_madc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_madc_read(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.twl4030_madc_data*, align 8
  %13 = alloca %struct.twl4030_madc_request, align 8
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.twl4030_madc_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.twl4030_madc_data* %16, %struct.twl4030_madc_data** %12, align 8
  %17 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %12, align 8
  %18 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @TWL4030_MADC_SW2, align 4
  br label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @TWL4030_MADC_SW1, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %13, i32 0, i32 6
  store i32 %26, i32* %27, align 8
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @BIT(i64 %30)
  %32 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %13, i32 0, i32 5
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %13, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load i32, i32* @TWL4030_MADC_WAIT, align 4
  %35 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %13, i32 0, i32 4
  store i32 %34, i32* %35, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @IIO_CHAN_INFO_PROCESSED, align 8
  %38 = icmp eq i64 %36, %37
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %13, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @IIO_CHAN_INFO_AVERAGE_RAW, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %13, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = call i32 @twl4030_madc_conversion(%struct.twl4030_madc_request* %13)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %25
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %6, align 4
  br label %62

52:                                               ; preds = %25
  %53 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %13, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %56 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %52, %50
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.twl4030_madc_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @twl4030_madc_conversion(%struct.twl4030_madc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
