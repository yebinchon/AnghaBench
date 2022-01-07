; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_ccs811.c_ccs811_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_ccs811.c_ccs811_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.ccs811_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CCS811_VOLTAGE_MASK = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ccs811_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccs811_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ccs811_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ccs811_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.ccs811_data* %15, %struct.ccs811_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %126 [
    i64 134, label %17
    i64 133, label %96
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %129

24:                                               ; preds = %17
  %25 = load %struct.ccs811_data*, %struct.ccs811_data** %12, align 8
  %26 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ccs811_data*, %struct.ccs811_data** %12, align 8
  %29 = call i32 @ccs811_get_measurement(%struct.ccs811_data* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.ccs811_data*, %struct.ccs811_data** %12, align 8
  %34 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %37 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %36)
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %129

39:                                               ; preds = %24
  %40 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %41 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %86 [
    i32 128, label %43
    i32 131, label %53
    i32 132, label %62
  ]

43:                                               ; preds = %39
  %44 = load %struct.ccs811_data*, %struct.ccs811_data** %12, align 8
  %45 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be16_to_cpu(i32 %47)
  %49 = load i32, i32* @CCS811_VOLTAGE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %52, i32* %13, align 4
  br label %89

53:                                               ; preds = %39
  %54 = load %struct.ccs811_data*, %struct.ccs811_data** %12, align 8
  %55 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be16_to_cpu(i32 %57)
  %59 = ashr i32 %58, 10
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %61, i32* %13, align 4
  br label %89

62:                                               ; preds = %39
  %63 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %64 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %82 [
    i32 130, label %66
    i32 129, label %74
  ]

66:                                               ; preds = %62
  %67 = load %struct.ccs811_data*, %struct.ccs811_data** %12, align 8
  %68 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @be16_to_cpu(i32 %70)
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %73, i32* %13, align 4
  br label %85

74:                                               ; preds = %62
  %75 = load %struct.ccs811_data*, %struct.ccs811_data** %12, align 8
  %76 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @be16_to_cpu(i32 %78)
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %81, i32* %13, align 4
  br label %85

82:                                               ; preds = %62
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %82, %74, %66
  br label %89

86:                                               ; preds = %39
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %86, %85, %53, %43
  %90 = load %struct.ccs811_data*, %struct.ccs811_data** %12, align 8
  %91 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %94 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %6, align 4
  br label %129

96:                                               ; preds = %5
  %97 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %98 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  switch i32 %99, label %123 [
    i32 128, label %100
    i32 131, label %104
    i32 132, label %108
  ]

100:                                              ; preds = %96
  %101 = load i32*, i32** %9, align 8
  store i32 1, i32* %101, align 4
  %102 = load i32*, i32** %10, align 8
  store i32 612903, i32* %102, align 4
  %103 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %103, i32* %6, align 4
  br label %129

104:                                              ; preds = %96
  %105 = load i32*, i32** %9, align 8
  store i32 0, i32* %105, align 4
  %106 = load i32*, i32** %10, align 8
  store i32 1000, i32* %106, align 4
  %107 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %107, i32* %6, align 4
  br label %129

108:                                              ; preds = %96
  %109 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %110 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %120 [
    i32 130, label %112
    i32 129, label %116
  ]

112:                                              ; preds = %108
  %113 = load i32*, i32** %9, align 8
  store i32 0, i32* %113, align 4
  %114 = load i32*, i32** %10, align 8
  store i32 100, i32* %114, align 4
  %115 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %115, i32* %6, align 4
  br label %129

116:                                              ; preds = %108
  %117 = load i32*, i32** %9, align 8
  store i32 0, i32* %117, align 4
  %118 = load i32*, i32** %10, align 8
  store i32 100, i32* %118, align 4
  %119 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %119, i32* %6, align 4
  br label %129

120:                                              ; preds = %108
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %129

123:                                              ; preds = %96
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %6, align 4
  br label %129

126:                                              ; preds = %5
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %126, %123, %120, %116, %112, %104, %100, %89, %32, %22
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local %struct.ccs811_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ccs811_get_measurement(%struct.ccs811_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
