; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30100.c_max30100_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30100.c_max30100_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.max30100_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @max30100_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max30100_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.max30100_data*, align 8
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.max30100_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.max30100_data* %14, %struct.max30100_data** %11, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load i64, i64* %10, align 8
  switch i64 %17, label %45 [
    i64 129, label %18
    i64 128, label %41
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %23 = call i32 @iio_buffer_enabled(%struct.iio_dev* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %12, align 4
  br label %37

28:                                               ; preds = %18
  %29 = load %struct.max30100_data*, %struct.max30100_data** %11, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @max30100_get_temp(%struct.max30100_data* %29, i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %34, %28
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  br label %45

41:                                               ; preds = %5
  %42 = load i32*, i32** %8, align 8
  store i32 1, i32* %42, align 4
  %43 = load i32*, i32** %9, align 8
  store i32 16, i32* %43, align 4
  %44 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %5, %41, %37
  %46 = load i32, i32* %12, align 4
  ret i32 %46
}

declare dso_local %struct.max30100_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @max30100_get_temp(%struct.max30100_data*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
