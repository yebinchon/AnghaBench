; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ads1015_data = type { i64, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@ads1015_fullscale_range = common dso_local global i32* null, align 8
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ads1015_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads1015_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ads1015_data*, align 8
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call %struct.ads1015_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.ads1015_data* %16, %struct.ads1015_data** %13, align 8
  %17 = load %struct.ads1015_data*, %struct.ads1015_data** %13, align 8
  %18 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i64, i64* %10, align 8
  switch i64 %20, label %125 [
    i64 130, label %21
    i64 128, label %83
    i64 129, label %106
  ]

21:                                               ; preds = %5
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %14, align 4
  %26 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %27 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %128

31:                                               ; preds = %21
  %32 = load %struct.ads1015_data*, %struct.ads1015_data** %13, align 8
  %33 = call i32 @ads1015_event_channel_enabled(%struct.ads1015_data* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load %struct.ads1015_data*, %struct.ads1015_data** %13, align 8
  %37 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %40 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %80

46:                                               ; preds = %35, %31
  %47 = load %struct.ads1015_data*, %struct.ads1015_data** %13, align 8
  %48 = call i32 @ads1015_set_power_state(%struct.ads1015_data* %47, i32 1)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %80

52:                                               ; preds = %46
  %53 = load %struct.ads1015_data*, %struct.ads1015_data** %13, align 8
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @ads1015_get_adc_result(%struct.ads1015_data* %53, i64 %56, i32* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.ads1015_data*, %struct.ads1015_data** %13, align 8
  %63 = call i32 @ads1015_set_power_state(%struct.ads1015_data* %62, i32 0)
  br label %80

64:                                               ; preds = %52
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %14, align 4
  %68 = ashr i32 %66, %67
  %69 = load i32, i32* %14, align 4
  %70 = sub nsw i32 15, %69
  %71 = call i32 @sign_extend32(i32 %68, i32 %70)
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.ads1015_data*, %struct.ads1015_data** %13, align 8
  %74 = call i32 @ads1015_set_power_state(%struct.ads1015_data* %73, i32 0)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %80

78:                                               ; preds = %64
  %79 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %78, %77, %61, %51, %43
  %81 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %82 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %81)
  br label %128

83:                                               ; preds = %5
  %84 = load %struct.ads1015_data*, %struct.ads1015_data** %13, align 8
  %85 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %88 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %12, align 4
  %93 = load i32*, i32** @ads1015_fullscale_range, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %8, align 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %100 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %105, i32* %11, align 4
  br label %128

106:                                              ; preds = %5
  %107 = load %struct.ads1015_data*, %struct.ads1015_data** %13, align 8
  %108 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %107, i32 0, i32 3
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %111 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %12, align 4
  %116 = load %struct.ads1015_data*, %struct.ads1015_data** %13, align 8
  %117 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %8, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %124, i32* %11, align 4
  br label %128

125:                                              ; preds = %5
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %125, %106, %83, %80, %30
  %129 = load %struct.ads1015_data*, %struct.ads1015_data** %13, align 8
  %130 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %129, i32 0, i32 2
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load i32, i32* %11, align 4
  ret i32 %132
}

declare dso_local %struct.ads1015_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @ads1015_event_channel_enabled(%struct.ads1015_data*) #1

declare dso_local i32 @ads1015_set_power_state(%struct.ads1015_data*, i32) #1

declare dso_local i32 @ads1015_get_adc_result(%struct.ads1015_data*, i64, i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
