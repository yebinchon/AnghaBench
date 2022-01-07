; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7887.c_ad7887_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7887.c_ad7887_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ad7887_state = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad7887_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7887_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ad7887_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ad7887_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad7887_state* %15, %struct.ad7887_state** %13, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %89 [
    i64 129, label %17
    i64 128, label %54
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %6, align 4
  br label %92

24:                                               ; preds = %17
  %25 = load %struct.ad7887_state*, %struct.ad7887_state** %13, align 8
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ad7887_scan_direct(%struct.ad7887_state* %25, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %31 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %30)
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %92

36:                                               ; preds = %24
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %37, %41
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %45 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = call i32 @GENMASK(i32 %48, i32 0)
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %53, i32* %6, align 4
  br label %92

54:                                               ; preds = %5
  %55 = load %struct.ad7887_state*, %struct.ad7887_state** %13, align 8
  %56 = getelementptr inbounds %struct.ad7887_state, %struct.ad7887_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.ad7887_state*, %struct.ad7887_state** %13, align 8
  %61 = getelementptr inbounds %struct.ad7887_state, %struct.ad7887_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @regulator_get_voltage(i32 %62)
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  br label %92

71:                                               ; preds = %59
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %73, 1000
  store i32 %74, i32* %72, align 4
  br label %82

75:                                               ; preds = %54
  %76 = load %struct.ad7887_state*, %struct.ad7887_state** %13, align 8
  %77 = getelementptr inbounds %struct.ad7887_state, %struct.ad7887_state* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %71
  %83 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %84 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %88, i32* %6, align 4
  br label %92

89:                                               ; preds = %5
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %89, %82, %68, %36, %34, %22
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local %struct.ad7887_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @ad7887_scan_direct(%struct.ad7887_state*, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
