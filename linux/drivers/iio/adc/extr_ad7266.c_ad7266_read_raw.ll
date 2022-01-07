; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7266.c_ad7266_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7266.c_ad7266_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8, i32 }
%struct.ad7266_state = type { i64, i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@AD7266_MODE_DIFF = common dso_local global i32 0, align 4
@AD7266_RANGE_2VREF = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad7266_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7266_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad7266_state*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ad7266_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad7266_state* %16, %struct.ad7266_state** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %101 [
    i64 129, label %18
    i64 128, label %52
    i64 130, label %83
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %6, align 4
  br label %104

25:                                               ; preds = %18
  %26 = load %struct.ad7266_state*, %struct.ad7266_state** %12, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ad7266_read_single(%struct.ad7266_state* %26, i32* %27, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %33 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %32)
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 2
  %37 = and i32 %36, 4095
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %40 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 4
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 115
  br i1 %44, label %45, label %50

45:                                               ; preds = %25
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sign_extend32(i32 %47, i32 11)
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %25
  %51 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %51, i32* %6, align 4
  br label %104

52:                                               ; preds = %5
  %53 = load %struct.ad7266_state*, %struct.ad7266_state** %12, align 8
  %54 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %13, align 8
  %56 = load %struct.ad7266_state*, %struct.ad7266_state** %12, align 8
  %57 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @AD7266_MODE_DIFF, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i64, i64* %13, align 8
  %63 = mul i64 %62, 2
  store i64 %63, i64* %13, align 8
  br label %64

64:                                               ; preds = %61, %52
  %65 = load %struct.ad7266_state*, %struct.ad7266_state** %12, align 8
  %66 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AD7266_RANGE_2VREF, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i64, i64* %13, align 8
  %72 = mul i64 %71, 2
  store i64 %72, i64* %13, align 8
  br label %73

73:                                               ; preds = %70, %64
  %74 = load i64, i64* %13, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  %77 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %78 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %10, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %82, i32* %6, align 4
  br label %104

83:                                               ; preds = %5
  %84 = load %struct.ad7266_state*, %struct.ad7266_state** %12, align 8
  %85 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AD7266_RANGE_2VREF, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.ad7266_state*, %struct.ad7266_state** %12, align 8
  %91 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @AD7266_MODE_DIFF, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32*, i32** %9, align 8
  store i32 2048, i32* %96, align 4
  br label %99

97:                                               ; preds = %89, %83
  %98 = load i32*, i32** %9, align 8
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %100, i32* %6, align 4
  br label %104

101:                                              ; preds = %5
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %101, %99, %73, %50, %23
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local %struct.ad7266_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @ad7266_read_single(%struct.ad7266_state*, i32*, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
