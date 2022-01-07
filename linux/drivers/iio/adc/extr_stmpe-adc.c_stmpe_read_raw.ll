; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stmpe-adc.c_stmpe_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stmpe-adc.c_stmpe_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stmpe_adc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @stmpe_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stmpe_adc*, align 8
  %13 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.stmpe_adc* @iio_priv(%struct.iio_dev* %14)
  store %struct.stmpe_adc* %15, %struct.stmpe_adc** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %54 [
    i64 131, label %17
    i64 132, label %17
    i64 130, label %42
  ]

17:                                               ; preds = %5, %5
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %31 [
    i32 128, label %21
    i32 129, label %26
  ]

21:                                               ; preds = %17
  %22 = load %struct.stmpe_adc*, %struct.stmpe_adc** %12, align 8
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i64 @stmpe_read_voltage(%struct.stmpe_adc* %22, %struct.iio_chan_spec* %23, i32* %24)
  store i64 %25, i64* %13, align 8
  br label %34

26:                                               ; preds = %17
  %27 = load %struct.stmpe_adc*, %struct.stmpe_adc** %12, align 8
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i64 @stmpe_read_temp(%struct.stmpe_adc* %27, %struct.iio_chan_spec* %28, i32* %29)
  store i64 %30, i64* %13, align 8
  br label %34

31:                                               ; preds = %17
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %58

34:                                               ; preds = %26, %21
  %35 = load i64, i64* %13, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* %13, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  br label %58

40:                                               ; preds = %34
  %41 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %41, i32* %6, align 4
  br label %58

42:                                               ; preds = %5
  %43 = load i32*, i32** %9, align 8
  store i32 3300, i32* %43, align 4
  %44 = load %struct.stmpe_adc*, %struct.stmpe_adc** %12, align 8
  %45 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 12, i32 10
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %53, i32* %6, align 4
  br label %58

54:                                               ; preds = %5
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %42, %40, %37, %31
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.stmpe_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @stmpe_read_voltage(%struct.stmpe_adc*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i64 @stmpe_read_temp(%struct.stmpe_adc*, %struct.iio_chan_spec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
