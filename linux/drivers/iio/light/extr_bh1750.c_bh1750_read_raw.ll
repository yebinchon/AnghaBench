; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_bh1750.c_bh1750_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_bh1750.c_bh1750_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.bh1750_data = type { i32, i32, %struct.bh1750_chip_info* }
%struct.bh1750_chip_info = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @bh1750_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1750_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bh1750_data*, align 8
  %15 = alloca %struct.bh1750_chip_info*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.bh1750_data* @iio_priv(%struct.iio_dev* %16)
  store %struct.bh1750_data* %17, %struct.bh1750_data** %14, align 8
  %18 = load %struct.bh1750_data*, %struct.bh1750_data** %14, align 8
  %19 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %18, i32 0, i32 2
  %20 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %19, align 8
  store %struct.bh1750_chip_info* %20, %struct.bh1750_chip_info** %15, align 8
  %21 = load i64, i64* %11, align 8
  switch i64 %21, label %71 [
    i64 130, label %22
    i64 129, label %45
    i64 131, label %60
  ]

22:                                               ; preds = %5
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %42 [
    i32 128, label %26
  ]

26:                                               ; preds = %22
  %27 = load %struct.bh1750_data*, %struct.bh1750_data** %14, align 8
  %28 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.bh1750_data*, %struct.bh1750_data** %14, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @bh1750_read(%struct.bh1750_data* %30, i32* %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.bh1750_data*, %struct.bh1750_data** %14, align 8
  %34 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %6, align 4
  br label %74

40:                                               ; preds = %26
  %41 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %41, i32* %6, align 4
  br label %74

42:                                               ; preds = %22
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %74

45:                                               ; preds = %5
  %46 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %15, align 8
  %47 = getelementptr inbounds %struct.bh1750_chip_info, %struct.bh1750_chip_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bh1750_data*, %struct.bh1750_data** %14, align 8
  %50 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %48, %51
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = sdiv i32 %53, 1000000
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %13, align 4
  %57 = srem i32 %56, 1000000
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %59, i32* %6, align 4
  br label %74

60:                                               ; preds = %5
  %61 = load i32*, i32** %9, align 8
  store i32 0, i32* %61, align 4
  %62 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %15, align 8
  %63 = getelementptr inbounds %struct.bh1750_chip_info, %struct.bh1750_chip_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bh1750_data*, %struct.bh1750_data** %14, align 8
  %66 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %64, %67
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %70, i32* %6, align 4
  br label %74

71:                                               ; preds = %5
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %60, %45, %42, %40, %38
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.bh1750_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bh1750_read(%struct.bh1750_data*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
