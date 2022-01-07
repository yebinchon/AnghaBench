; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_ams-iaq-core.c_ams_iaqcore_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_ams-iaq-core.c_ams_iaqcore_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ams_iaqcore_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IIO_CHAN_INFO_PROCESSED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ams_iaqcore_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_iaqcore_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ams_iaqcore_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ams_iaqcore_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.ams_iaqcore_data* %15, %struct.ams_iaqcore_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @IIO_CHAN_INFO_PROCESSED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %70

22:                                               ; preds = %5
  %23 = load %struct.ams_iaqcore_data*, %struct.ams_iaqcore_data** %12, align 8
  %24 = getelementptr inbounds %struct.ams_iaqcore_data, %struct.ams_iaqcore_data* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.ams_iaqcore_data*, %struct.ams_iaqcore_data** %12, align 8
  %27 = call i32 @ams_iaqcore_get_measurement(%struct.ams_iaqcore_data* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %65

31:                                               ; preds = %22
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %61 [
    i32 130, label %35
    i32 129, label %44
    i32 128, label %52
  ]

35:                                               ; preds = %31
  %36 = load i32*, i32** %9, align 8
  store i32 0, i32* %36, align 4
  %37 = load %struct.ams_iaqcore_data*, %struct.ams_iaqcore_data** %12, align 8
  %38 = getelementptr inbounds %struct.ams_iaqcore_data, %struct.ams_iaqcore_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be16_to_cpu(i32 %40)
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %43, i32* %13, align 4
  br label %64

44:                                               ; preds = %31
  %45 = load %struct.ams_iaqcore_data*, %struct.ams_iaqcore_data** %12, align 8
  %46 = getelementptr inbounds %struct.ams_iaqcore_data, %struct.ams_iaqcore_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be32_to_cpu(i32 %48)
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %51, i32* %13, align 4
  br label %64

52:                                               ; preds = %31
  %53 = load i32*, i32** %9, align 8
  store i32 0, i32* %53, align 4
  %54 = load %struct.ams_iaqcore_data*, %struct.ams_iaqcore_data** %12, align 8
  %55 = getelementptr inbounds %struct.ams_iaqcore_data, %struct.ams_iaqcore_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be16_to_cpu(i32 %57)
  %59 = load i32*, i32** %10, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %60, i32* %13, align 4
  br label %64

61:                                               ; preds = %31
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %61, %52, %44, %35
  br label %65

65:                                               ; preds = %64, %30
  %66 = load %struct.ams_iaqcore_data*, %struct.ams_iaqcore_data** %12, align 8
  %67 = getelementptr inbounds %struct.ams_iaqcore_data, %struct.ams_iaqcore_data* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %65, %19
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.ams_iaqcore_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ams_iaqcore_get_measurement(%struct.ams_iaqcore_data*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
