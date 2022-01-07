; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_ad5272.c_ad5272_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_ad5272.c_ad5272_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad5272_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AD5272_RDAC_RD = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad5272_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5272_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad5272_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ad5272_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad5272_data* %15, %struct.ad5272_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %54 [
    i64 129, label %17
    i64 128, label %39
  ]

17:                                               ; preds = %5
  %18 = load %struct.ad5272_data*, %struct.ad5272_data** %12, align 8
  %19 = load i32, i32* @AD5272_RDAC_RD, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @ad5272_read(%struct.ad5272_data* %18, i32 %19, i32* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ad5272_data*, %struct.ad5272_data** %12, align 8
  %25 = getelementptr inbounds %struct.ad5272_data, %struct.ad5272_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %23, %28
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = load i32, i32* %13, align 4
  br label %37

35:                                               ; preds = %17
  %36 = load i32, i32* @IIO_VAL_INT, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %6, align 4
  br label %57

39:                                               ; preds = %5
  %40 = load %struct.ad5272_data*, %struct.ad5272_data** %12, align 8
  %41 = getelementptr inbounds %struct.ad5272_data, %struct.ad5272_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 1000, %44
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.ad5272_data*, %struct.ad5272_data** %12, align 8
  %48 = getelementptr inbounds %struct.ad5272_data, %struct.ad5272_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %53, i32* %6, align 4
  br label %57

54:                                               ; preds = %5
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %39, %37
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.ad5272_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad5272_read(%struct.ad5272_data*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
