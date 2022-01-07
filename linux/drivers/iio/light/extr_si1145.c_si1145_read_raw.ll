; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32, i32 }
%struct.si1145_data = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SI1145_PARAM_PS_ADC_GAIN = common dso_local global i32 0, align 4
@IIO_MOD_LIGHT_IR = common dso_local global i32 0, align 4
@SI1145_PARAM_ALSIR_ADC_GAIN = common dso_local global i32 0, align 4
@SI1145_PARAM_ALSVIS_ADC_GAIN = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@SI1145_PARAM_ADC_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @si1145_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1145_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.si1145_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.si1145_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.si1145_data* %16, %struct.si1145_data** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %137 [
    i64 136, label %18
    i64 134, label %69
    i64 137, label %111
    i64 135, label %132
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %66 [
    i32 132, label %22
    i32 131, label %22
    i32 128, label %22
    i32 130, label %22
    i32 129, label %22
    i32 133, label %43
  ]

22:                                               ; preds = %18, %18, %18, %18, %18
  %23 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %24 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %140

29:                                               ; preds = %22
  %30 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %32 = call i32 @si1145_measure(%struct.iio_dev* %30, %struct.iio_chan_spec* %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %34 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %33)
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %140

39:                                               ; preds = %29
  %40 = load i32, i32* %13, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %42, i32* %6, align 4
  br label %140

43:                                               ; preds = %18
  %44 = load %struct.si1145_data*, %struct.si1145_data** %12, align 8
  %45 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %48 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @SI1145_PS_LED_REG(i32 %49)
  %51 = call i32 @i2c_smbus_read_byte_data(i32 %46, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %6, align 4
  br label %140

56:                                               ; preds = %43
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %59 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @SI1145_PS_LED_SHIFT(i32 %60)
  %62 = ashr i32 %57, %61
  %63 = and i32 %62, 15
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %65, i32* %6, align 4
  br label %140

66:                                               ; preds = %18
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %140

69:                                               ; preds = %5
  %70 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %71 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %94 [
    i32 131, label %73
    i32 132, label %75
    i32 130, label %86
    i32 129, label %90
  ]

73:                                               ; preds = %69
  %74 = load i32, i32* @SI1145_PARAM_PS_ADC_GAIN, align 4
  store i32 %74, i32* %14, align 4
  br label %97

75:                                               ; preds = %69
  %76 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %77 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IIO_MOD_LIGHT_IR, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @SI1145_PARAM_ALSIR_ADC_GAIN, align 4
  store i32 %82, i32* %14, align 4
  br label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @SI1145_PARAM_ALSVIS_ADC_GAIN, align 4
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %83, %81
  br label %97

86:                                               ; preds = %69
  %87 = load i32*, i32** %9, align 8
  store i32 28, i32* %87, align 4
  %88 = load i32*, i32** %10, align 8
  store i32 571429, i32* %88, align 4
  %89 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %89, i32* %6, align 4
  br label %140

90:                                               ; preds = %69
  %91 = load i32*, i32** %9, align 8
  store i32 0, i32* %91, align 4
  %92 = load i32*, i32** %10, align 8
  store i32 10000, i32* %92, align 4
  %93 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %93, i32* %6, align 4
  br label %140

94:                                               ; preds = %69
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %140

97:                                               ; preds = %85, %73
  %98 = load %struct.si1145_data*, %struct.si1145_data** %12, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @si1145_param_query(%struct.si1145_data* %98, i32 %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %6, align 4
  br label %140

105:                                              ; preds = %97
  %106 = load i32, i32* %13, align 4
  %107 = and i32 %106, 7
  %108 = call i32 @si1145_scale_from_adcgain(i32 %107)
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %110, i32* %6, align 4
  br label %140

111:                                              ; preds = %5
  %112 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %113 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %118 [
    i32 130, label %115
  ]

115:                                              ; preds = %111
  %116 = load i32*, i32** %9, align 8
  store i32 -10517, i32* %116, align 4
  %117 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %117, i32* %6, align 4
  br label %140

118:                                              ; preds = %111
  %119 = load %struct.si1145_data*, %struct.si1145_data** %12, align 8
  %120 = load i32, i32* @SI1145_PARAM_ADC_OFFSET, align 4
  %121 = call i32 @si1145_param_query(%struct.si1145_data* %119, i32 %120)
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %6, align 4
  br label %140

126:                                              ; preds = %118
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @si1145_uncompress(i32 %127)
  %129 = sub nsw i32 0, %128
  %130 = load i32*, i32** %9, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %131, i32* %6, align 4
  br label %140

132:                                              ; preds = %5
  %133 = load %struct.si1145_data*, %struct.si1145_data** %12, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @si1145_read_samp_freq(%struct.si1145_data* %133, i32* %134, i32* %135)
  store i32 %136, i32* %6, align 4
  br label %140

137:                                              ; preds = %5
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %137, %132, %126, %124, %115, %105, %103, %94, %90, %86, %66, %56, %54, %39, %37, %27
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local %struct.si1145_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @si1145_measure(%struct.iio_dev*, %struct.iio_chan_spec*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @SI1145_PS_LED_REG(i32) #1

declare dso_local i32 @SI1145_PS_LED_SHIFT(i32) #1

declare dso_local i32 @si1145_param_query(%struct.si1145_data*, i32) #1

declare dso_local i32 @si1145_scale_from_adcgain(i32) #1

declare dso_local i32 @si1145_uncompress(i32) #1

declare dso_local i32 @si1145_read_samp_freq(%struct.si1145_data*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
