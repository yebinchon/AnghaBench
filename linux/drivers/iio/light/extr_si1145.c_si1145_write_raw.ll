; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32, i32 }
%struct.si1145_data = type { i32 }

@SI1145_PARAM_PS_ADC_GAIN = common dso_local global i32 0, align 4
@SI1145_PARAM_PS_ADC_COUNTER = common dso_local global i32 0, align 4
@IIO_MOD_LIGHT_IR = common dso_local global i32 0, align 4
@SI1145_PARAM_ALSIR_ADC_GAIN = common dso_local global i32 0, align 4
@SI1145_PARAM_ALSIR_ADC_COUNTER = common dso_local global i32 0, align 4
@SI1145_PARAM_ALSVIS_ADC_GAIN = common dso_local global i32 0, align 4
@SI1145_PARAM_ALSVIS_ADC_COUNTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @si1145_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1145_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.si1145_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.si1145_data* @iio_priv(%struct.iio_dev* %17)
  store %struct.si1145_data* %18, %struct.si1145_data** %12, align 8
  %19 = load i64, i64* %11, align 8
  switch i64 %19, label %159 [
    i64 130, label %20
    i64 132, label %88
    i64 131, label %155
  ]

20:                                               ; preds = %5
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %56 [
    i32 128, label %24
    i32 129, label %35
  ]

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @si1145_proximity_adcgain_from_scale(i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %6, align 4
  br label %162

32:                                               ; preds = %24
  %33 = load i32, i32* @SI1145_PARAM_PS_ADC_GAIN, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* @SI1145_PARAM_PS_ADC_COUNTER, align 4
  store i32 %34, i32* %14, align 4
  br label %59

35:                                               ; preds = %20
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @si1145_intensity_adcgain_from_scale(i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %6, align 4
  br label %162

43:                                               ; preds = %35
  %44 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %45 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IIO_MOD_LIGHT_IR, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @SI1145_PARAM_ALSIR_ADC_GAIN, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @SI1145_PARAM_ALSIR_ADC_COUNTER, align 4
  store i32 %51, i32* %14, align 4
  br label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @SI1145_PARAM_ALSVIS_ADC_GAIN, align 4
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* @SI1145_PARAM_ALSVIS_ADC_COUNTER, align 4
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %52, %49
  br label %59

56:                                               ; preds = %20
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %162

59:                                               ; preds = %55, %32
  %60 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %61 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %6, align 4
  br label %162

66:                                               ; preds = %59
  %67 = load %struct.si1145_data*, %struct.si1145_data** %12, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @si1145_param_set(%struct.si1145_data* %67, i32 %68, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %75 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %74)
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %6, align 4
  br label %162

77:                                               ; preds = %66
  %78 = load %struct.si1145_data*, %struct.si1145_data** %12, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %9, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %81, 7
  %83 = shl i32 %82, 4
  %84 = call i32 @si1145_param_set(%struct.si1145_data* %78, i32 %79, i32 %83)
  store i32 %84, i32* %16, align 4
  %85 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %86 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %85)
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %6, align 4
  br label %162

88:                                               ; preds = %5
  %89 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %90 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IIO_CURRENT, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %162

97:                                               ; preds = %88
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %9, align 4
  %102 = icmp sgt i32 %101, 15
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103, %100, %97
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  br label %162

109:                                              ; preds = %103
  %110 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %111 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @SI1145_PS_LED_REG(i32 %112)
  store i32 %113, i32* %13, align 4
  %114 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %115 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @SI1145_PS_LED_SHIFT(i32 %116)
  store i32 %117, i32* %15, align 4
  %118 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %119 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %109
  %123 = load i32, i32* %16, align 4
  store i32 %123, i32* %6, align 4
  br label %162

124:                                              ; preds = %109
  %125 = load %struct.si1145_data*, %struct.si1145_data** %12, align 8
  %126 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @i2c_smbus_read_byte_data(i32 %127, i32 %128)
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %16, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %134 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %133)
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %6, align 4
  br label %162

136:                                              ; preds = %124
  %137 = load %struct.si1145_data*, %struct.si1145_data** %12, align 8
  %138 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %15, align 4
  %143 = shl i32 15, %142
  %144 = xor i32 %143, -1
  %145 = and i32 %141, %144
  %146 = load i32, i32* %9, align 4
  %147 = and i32 %146, 15
  %148 = load i32, i32* %15, align 4
  %149 = shl i32 %147, %148
  %150 = or i32 %145, %149
  %151 = call i32 @i2c_smbus_write_byte_data(i32 %139, i32 %140, i32 %150)
  store i32 %151, i32* %16, align 4
  %152 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %153 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %152)
  %154 = load i32, i32* %16, align 4
  store i32 %154, i32* %6, align 4
  br label %162

155:                                              ; preds = %5
  %156 = load %struct.si1145_data*, %struct.si1145_data** %12, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @si1145_store_samp_freq(%struct.si1145_data* %156, i32 %157)
  store i32 %158, i32* %6, align 4
  br label %162

159:                                              ; preds = %5
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %159, %155, %136, %132, %122, %106, %94, %77, %73, %64, %56, %41, %30
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local %struct.si1145_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @si1145_proximity_adcgain_from_scale(i32, i32) #1

declare dso_local i32 @si1145_intensity_adcgain_from_scale(i32, i32) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @si1145_param_set(%struct.si1145_data*, i32, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @SI1145_PS_LED_REG(i32) #1

declare dso_local i32 @SI1145_PS_LED_SHIFT(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @si1145_store_samp_freq(%struct.si1145_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
