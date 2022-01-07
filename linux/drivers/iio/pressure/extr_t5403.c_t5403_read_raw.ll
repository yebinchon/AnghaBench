; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_t5403.c_t5403_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_t5403.c_t5403_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.t5403_data = type { i64 }

@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@t5403_pressure_conv_ms = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @t5403_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t5403_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.t5403_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.t5403_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.t5403_data* %15, %struct.t5403_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %56 [
    i64 130, label %17
    i64 131, label %45
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %42 [
    i32 129, label %21
    i32 128, label %32
  ]

21:                                               ; preds = %17
  %22 = load %struct.t5403_data*, %struct.t5403_data** %12, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @t5403_comp_pressure(%struct.t5403_data* %22, i32* %23, i32* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %6, align 4
  br label %59

30:                                               ; preds = %21
  %31 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %31, i32* %6, align 4
  br label %59

32:                                               ; preds = %17
  %33 = load %struct.t5403_data*, %struct.t5403_data** %12, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @t5403_comp_temp(%struct.t5403_data* %33, i32* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %6, align 4
  br label %59

40:                                               ; preds = %32
  %41 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %41, i32* %6, align 4
  br label %59

42:                                               ; preds = %17
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %59

45:                                               ; preds = %5
  %46 = load i32*, i32** %9, align 8
  store i32 0, i32* %46, align 4
  %47 = load i32*, i32** @t5403_pressure_conv_ms, align 8
  %48 = load %struct.t5403_data*, %struct.t5403_data** %12, align 8
  %49 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 1000
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %55, i32* %6, align 4
  br label %59

56:                                               ; preds = %5
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %45, %42, %40, %38, %30, %28
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.t5403_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @t5403_comp_pressure(%struct.t5403_data*, i32*, i32*) #1

declare dso_local i32 @t5403_comp_temp(%struct.t5403_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
