; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_core.c_hmc5843_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_core.c_hmc5843_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.hmc5843_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32** }

@HMC5843_CONFIG_REG_B = common dso_local global i32 0, align 4
@HMC5843_RANGE_GAIN_OFFSET = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@HMC5843_CONFIG_REG_A = common dso_local global i32 0, align 4
@HMC5843_RATE_OFFSET = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @hmc5843_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmc5843_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hmc5843_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.hmc5843_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.hmc5843_data* %16, %struct.hmc5843_data** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %90 [
    i64 130, label %18
    i64 128, label %25
    i64 129, label %51
  ]

18:                                               ; preds = %5
  %19 = load %struct.hmc5843_data*, %struct.hmc5843_data** %12, align 8
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @hmc5843_read_measurement(%struct.hmc5843_data* %19, i32 %22, i32* %23)
  store i32 %24, i32* %6, align 4
  br label %93

25:                                               ; preds = %5
  %26 = load %struct.hmc5843_data*, %struct.hmc5843_data** %12, align 8
  %27 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @HMC5843_CONFIG_REG_B, align 4
  %30 = call i32 @regmap_read(i32 %28, i32 %29, i32* %13)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %6, align 4
  br label %93

35:                                               ; preds = %25
  %36 = load i32, i32* @HMC5843_RANGE_GAIN_OFFSET, align 4
  %37 = load i32, i32* %13, align 4
  %38 = lshr i32 %37, %36
  store i32 %38, i32* %13, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 0, i32* %39, align 4
  %40 = load %struct.hmc5843_data*, %struct.hmc5843_data** %12, align 8
  %41 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %50, i32* %6, align 4
  br label %93

51:                                               ; preds = %5
  %52 = load %struct.hmc5843_data*, %struct.hmc5843_data** %12, align 8
  %53 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @HMC5843_CONFIG_REG_A, align 4
  %56 = call i32 @regmap_read(i32 %54, i32 %55, i32* %13)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %6, align 4
  br label %93

61:                                               ; preds = %51
  %62 = load i32, i32* @HMC5843_RATE_OFFSET, align 4
  %63 = load i32, i32* %13, align 4
  %64 = lshr i32 %63, %62
  store i32 %64, i32* %13, align 4
  %65 = load %struct.hmc5843_data*, %struct.hmc5843_data** %12, align 8
  %66 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  %77 = load %struct.hmc5843_data*, %struct.hmc5843_data** %12, align 8
  %78 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %10, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %89, i32* %6, align 4
  br label %93

90:                                               ; preds = %5
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %61, %59, %35, %33, %18
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local %struct.hmc5843_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @hmc5843_read_measurement(%struct.hmc5843_data*, i32, i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
