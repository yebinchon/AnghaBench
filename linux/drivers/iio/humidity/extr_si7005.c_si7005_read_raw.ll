; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_si7005.c_si7005_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_si7005.c_si7005_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.si7005_data = type { i32 }

@IIO_TEMP = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @si7005_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si7005_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.si7005_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.si7005_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.si7005_data* %15, %struct.si7005_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %60 [
    i64 129, label %17
    i64 128, label %34
    i64 130, label %48
  ]

17:                                               ; preds = %5
  %18 = load %struct.si7005_data*, %struct.si7005_data** %12, align 8
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IIO_TEMP, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @si7005_read_measurement(%struct.si7005_data* %18, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %6, align 4
  br label %64

30:                                               ; preds = %17
  %31 = load i32, i32* %13, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %33, i32* %6, align 4
  br label %64

34:                                               ; preds = %5
  %35 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %36 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IIO_TEMP, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32*, i32** %9, align 8
  store i32 7, i32* %41, align 4
  %42 = load i32*, i32** %10, align 8
  store i32 812500, i32* %42, align 4
  br label %46

43:                                               ; preds = %34
  %44 = load i32*, i32** %9, align 8
  store i32 3, i32* %44, align 4
  %45 = load i32*, i32** %10, align 8
  store i32 906250, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %47, i32* %6, align 4
  br label %64

48:                                               ; preds = %5
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %50 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IIO_TEMP, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32*, i32** %9, align 8
  store i32 -6400, i32* %55, align 4
  br label %58

56:                                               ; preds = %48
  %57 = load i32*, i32** %9, align 8
  store i32 -6144, i32* %57, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %59, i32* %6, align 4
  br label %64

60:                                               ; preds = %5
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %58, %46, %30, %28
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local %struct.si7005_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @si7005_read_measurement(%struct.si7005_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
