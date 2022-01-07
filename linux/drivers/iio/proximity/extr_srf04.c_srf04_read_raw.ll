; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf04.c_srf04_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf04.c_srf04_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.srf04_data = type { i32 }

@IIO_DISTANCE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @srf04_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srf04_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.srf04_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.srf04_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.srf04_data* %15, %struct.srf04_data** %12, align 8
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IIO_DISTANCE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %44

24:                                               ; preds = %5
  %25 = load i64, i64* %11, align 8
  switch i64 %25, label %41 [
    i64 129, label %26
    i64 128, label %37
  ]

26:                                               ; preds = %24
  %27 = load %struct.srf04_data*, %struct.srf04_data** %12, align 8
  %28 = call i32 @srf04_read(%struct.srf04_data* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %6, align 4
  br label %44

33:                                               ; preds = %26
  %34 = load i32, i32* %13, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %36, i32* %6, align 4
  br label %44

37:                                               ; preds = %24
  %38 = load i32*, i32** %9, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32*, i32** %10, align 8
  store i32 1000, i32* %39, align 4
  %40 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %40, i32* %6, align 4
  br label %44

41:                                               ; preds = %24
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %37, %33, %31, %21
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.srf04_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @srf04_read(%struct.srf04_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
