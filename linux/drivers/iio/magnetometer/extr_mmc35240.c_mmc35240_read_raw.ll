; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_mmc35240.c_mmc35240_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_mmc35240.c_mmc35240_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mmc35240_data = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@MMC35240_REG_CTRL1 = common dso_local global i32 0, align 4
@MMC35240_CTRL1_BW_MASK = common dso_local global i32 0, align 4
@MMC35240_CTRL1_BW_SHIFT = common dso_local global i32 0, align 4
@mmc35240_samp_freq = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mmc35240_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc35240_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mmc35240_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [3 x i32], align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.mmc35240_data* @iio_priv(%struct.iio_dev* %17)
  store %struct.mmc35240_data* %18, %struct.mmc35240_data** %12, align 8
  %19 = load i64, i64* %11, align 8
  switch i64 %19, label %100 [
    i64 130, label %20
    i64 128, label %48
    i64 129, label %52
  ]

20:                                               ; preds = %5
  %21 = load %struct.mmc35240_data*, %struct.mmc35240_data** %12, align 8
  %22 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.mmc35240_data*, %struct.mmc35240_data** %12, align 8
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %26 = call i32 @mmc35240_read_measurement(%struct.mmc35240_data* %24, i32* %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.mmc35240_data*, %struct.mmc35240_data** %12, align 8
  %28 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %6, align 4
  br label %103

34:                                               ; preds = %20
  %35 = load %struct.mmc35240_data*, %struct.mmc35240_data** %12, align 8
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @mmc35240_raw_to_mgauss(%struct.mmc35240_data* %35, i32 %38, i32* %39, i32* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %6, align 4
  br label %103

46:                                               ; preds = %34
  %47 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %47, i32* %6, align 4
  br label %103

48:                                               ; preds = %5
  %49 = load i32*, i32** %9, align 8
  store i32 0, i32* %49, align 4
  %50 = load i32*, i32** %10, align 8
  store i32 1000, i32* %50, align 4
  %51 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %51, i32* %6, align 4
  br label %103

52:                                               ; preds = %5
  %53 = load %struct.mmc35240_data*, %struct.mmc35240_data** %12, align 8
  %54 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.mmc35240_data*, %struct.mmc35240_data** %12, align 8
  %57 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MMC35240_REG_CTRL1, align 4
  %60 = call i32 @regmap_read(i32 %58, i32 %59, i32* %15)
  store i32 %60, i32* %13, align 4
  %61 = load %struct.mmc35240_data*, %struct.mmc35240_data** %12, align 8
  %62 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %6, align 4
  br label %103

68:                                               ; preds = %52
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @MMC35240_CTRL1_BW_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @MMC35240_CTRL1_BW_SHIFT, align 4
  %73 = lshr i32 %71, %72
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmc35240_samp_freq, align 8
  %79 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %78)
  %80 = icmp sge i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76, %68
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %103

84:                                               ; preds = %76
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmc35240_samp_freq, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmc35240_samp_freq, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %10, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %99, i32* %6, align 4
  br label %103

100:                                              ; preds = %5
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %100, %84, %81, %66, %48, %46, %44, %32
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local %struct.mmc35240_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mmc35240_read_measurement(%struct.mmc35240_data*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mmc35240_raw_to_mgauss(%struct.mmc35240_data*, i32, i32*, i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
