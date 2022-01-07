; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44000.c_max44000_write_raw_get_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44000.c_max44000_write_raw_get_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }

@IIO_CHAN_INFO_INT_TIME = common dso_local global i64 0, align 8
@IIO_LIGHT = common dso_local global i64 0, align 8
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_SCALE = common dso_local global i64 0, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i64)* @max44000_write_raw_get_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max44000_write_raw_get_fmt(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IIO_CHAN_INFO_INT_TIME, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %13 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IIO_LIGHT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %18, i32* %4, align 4
  br label %33

19:                                               ; preds = %11, %3
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @IIO_CHAN_INFO_SCALE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IIO_LIGHT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %23, %19
  %32 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %29, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
