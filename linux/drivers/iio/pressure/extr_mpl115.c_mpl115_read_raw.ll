; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl115.c_mpl115_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl115.c_mpl115_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mpl115_data = type { i32 }

@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mpl115_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpl115_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mpl115_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.mpl115_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.mpl115_data* %15, %struct.mpl115_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %48 [
    i64 130, label %17
    i64 129, label %28
    i64 131, label %40
    i64 128, label %44
  ]

17:                                               ; preds = %5
  %18 = load %struct.mpl115_data*, %struct.mpl115_data** %12, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @mpl115_comp_pressure(%struct.mpl115_data* %18, i32* %19, i32* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %6, align 4
  br label %51

26:                                               ; preds = %17
  %27 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %27, i32* %6, align 4
  br label %51

28:                                               ; preds = %5
  %29 = load %struct.mpl115_data*, %struct.mpl115_data** %12, align 8
  %30 = call i32 @mpl115_read_temp(%struct.mpl115_data* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %6, align 4
  br label %51

35:                                               ; preds = %28
  %36 = load i32, i32* %13, align 4
  %37 = ashr i32 %36, 6
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %39, i32* %6, align 4
  br label %51

40:                                               ; preds = %5
  %41 = load i32*, i32** %9, align 8
  store i32 -605, i32* %41, align 4
  %42 = load i32*, i32** %10, align 8
  store i32 750000, i32* %42, align 4
  %43 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %43, i32* %6, align 4
  br label %51

44:                                               ; preds = %5
  %45 = load i32*, i32** %9, align 8
  store i32 -186, i32* %45, align 4
  %46 = load i32*, i32** %10, align 8
  store i32 915888, i32* %46, align 4
  %47 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %47, i32* %6, align 4
  br label %51

48:                                               ; preds = %5
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %44, %40, %35, %33, %26, %24
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.mpl115_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mpl115_comp_pressure(%struct.mpl115_data*, i32*, i32*) #1

declare dso_local i32 @mpl115_read_temp(%struct.mpl115_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
