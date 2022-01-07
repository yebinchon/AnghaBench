; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_atlas-ph-sensor.c_atlas_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_atlas-ph-sensor.c_atlas_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.atlas_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @atlas_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.atlas_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.atlas_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.atlas_data* %16, %struct.atlas_data** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %83 [
    i64 134, label %18
    i64 133, label %58
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %45 [
    i32 129, label %22
    i32 130, label %30
    i32 132, label %30
    i32 131, label %30
    i32 128, label %30
  ]

22:                                               ; preds = %18
  %23 = load %struct.atlas_data*, %struct.atlas_data** %12, align 8
  %24 = getelementptr inbounds %struct.atlas_data, %struct.atlas_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regmap_bulk_read(i32 %25, i32 %28, i32* %14, i32 4)
  store i32 %29, i32* %13, align 4
  br label %48

30:                                               ; preds = %18, %18, %18, %18
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %6, align 4
  br label %86

37:                                               ; preds = %30
  %38 = load %struct.atlas_data*, %struct.atlas_data** %12, align 8
  %39 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %40 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @atlas_read_measurement(%struct.atlas_data* %38, i32 %41, i32* %14)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %44 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %43)
  br label %48

45:                                               ; preds = %18
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %45, %37, %22
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @be32_to_cpu(i32 %52)
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %51, %48
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %6, align 4
  br label %86

58:                                               ; preds = %5
  %59 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %60 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %78 [
    i32 129, label %62
    i32 130, label %65
    i32 131, label %68
    i32 132, label %71
    i32 128, label %75
  ]

62:                                               ; preds = %58
  %63 = load i32*, i32** %9, align 8
  store i32 10, i32* %63, align 4
  %64 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %64, i32* %6, align 4
  br label %86

65:                                               ; preds = %58
  %66 = load i32*, i32** %9, align 8
  store i32 1, i32* %66, align 4
  %67 = load i32*, i32** %10, align 8
  store i32 1000, i32* %67, align 4
  br label %81

68:                                               ; preds = %58
  %69 = load i32*, i32** %9, align 8
  store i32 1, i32* %69, align 4
  %70 = load i32*, i32** %10, align 8
  store i32 100000, i32* %70, align 4
  br label %81

71:                                               ; preds = %58
  %72 = load i32*, i32** %9, align 8
  store i32 0, i32* %72, align 4
  %73 = load i32*, i32** %10, align 8
  store i32 1000, i32* %73, align 4
  %74 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %74, i32* %6, align 4
  br label %86

75:                                               ; preds = %58
  %76 = load i32*, i32** %9, align 8
  store i32 1, i32* %76, align 4
  %77 = load i32*, i32** %10, align 8
  store i32 10, i32* %77, align 4
  br label %81

78:                                               ; preds = %58
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %86

81:                                               ; preds = %75, %68, %65
  %82 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %82, i32* %6, align 4
  br label %86

83:                                               ; preds = %5
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %83, %81, %78, %71, %62, %56, %35
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local %struct.atlas_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @atlas_read_measurement(%struct.atlas_data*, i32, i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
