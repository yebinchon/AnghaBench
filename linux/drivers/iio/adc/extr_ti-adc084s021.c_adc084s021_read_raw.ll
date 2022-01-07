; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc084s021.c_adc084s021_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc084s021.c_adc084s021_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.adc084s021 = type { i32*, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adc084s021_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc084s021_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adc084s021*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.adc084s021* @iio_priv(%struct.iio_dev* %14)
  store %struct.adc084s021* %15, %struct.adc084s021** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %99 [
    i64 129, label %17
    i64 128, label %72
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %102

24:                                               ; preds = %17
  %25 = load %struct.adc084s021*, %struct.adc084s021** %12, align 8
  %26 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @regulator_enable(i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %33 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %32)
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %6, align 4
  br label %102

35:                                               ; preds = %24
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 3
  %40 = load %struct.adc084s021*, %struct.adc084s021** %12, align 8
  %41 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.adc084s021*, %struct.adc084s021** %12, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @adc084s021_adc_conversion(%struct.adc084s021* %44, i32* %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %48 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %47)
  %49 = load %struct.adc084s021*, %struct.adc084s021** %12, align 8
  %50 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @regulator_disable(i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %35
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %102

57:                                               ; preds = %35
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be16_to_cpu(i32 %59)
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %65 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %63, %67
  %69 = and i32 %68, 255
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %71, i32* %6, align 4
  br label %102

72:                                               ; preds = %5
  %73 = load %struct.adc084s021*, %struct.adc084s021** %12, align 8
  %74 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @regulator_enable(i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %6, align 4
  br label %102

81:                                               ; preds = %72
  %82 = load %struct.adc084s021*, %struct.adc084s021** %12, align 8
  %83 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @regulator_get_voltage(i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load %struct.adc084s021*, %struct.adc084s021** %12, align 8
  %87 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @regulator_disable(i32 %88)
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %6, align 4
  br label %102

94:                                               ; preds = %81
  %95 = load i32, i32* %13, align 4
  %96 = sdiv i32 %95, 1000
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %98, i32* %6, align 4
  br label %102

99:                                               ; preds = %5
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %99, %94, %92, %79, %57, %55, %31, %22
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local %struct.adc084s021* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @adc084s021_adc_conversion(%struct.adc084s021*, i32*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
