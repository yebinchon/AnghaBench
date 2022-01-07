; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_as3935.c_as3935_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_as3935.c_as3935_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.as3935_state = type { i32 }

@AS3935_DATA = common dso_local global i32 0, align 4
@AS3935_DATA_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @as3935_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3935_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.as3935_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.as3935_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.as3935_state* %15, %struct.as3935_state** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %50 [
    i64 130, label %17
    i64 129, label %17
    i64 128, label %48
  ]

17:                                               ; preds = %5, %5
  %18 = load i32*, i32** %10, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.as3935_state*, %struct.as3935_state** %12, align 8
  %20 = load i32, i32* @AS3935_DATA, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @as3935_read(%struct.as3935_state* %19, i32 %20, i32* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %6, align 4
  br label %55

27:                                               ; preds = %17
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AS3935_DATA_MASK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %55

35:                                               ; preds = %27
  %36 = load i64, i64* %11, align 8
  %37 = icmp eq i64 %36, 129
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %39, i32* %6, align 4
  br label %55

40:                                               ; preds = %35
  %41 = load i64, i64* %11, align 8
  %42 = icmp eq i64 %41, 130
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 1000
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %43, %40
  br label %53

48:                                               ; preds = %5
  %49 = load i32*, i32** %9, align 8
  store i32 1000, i32* %49, align 4
  br label %53

50:                                               ; preds = %5
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %55

53:                                               ; preds = %48, %47
  %54 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %50, %38, %32, %25
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.as3935_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @as3935_read(%struct.as3935_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
